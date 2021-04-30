module Main where

-----------------------
-- IMPORT STATEMENTS -- 
-----------------------

import Lib ()
import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO
import Data.List
import Data.List.Split

-- ADDITIONAL DEPENDENCIES 
        -- Data.List.Split
        -- "array" in CQLanguage.cabal

------------------------
-- Type  Declarations -- 
------------------------


type Cell = String
type Row = [Cell]
type Table = [Row]
type Var = (String, Table)
type Vars = [Var]




-- ============================================ --
-- ============================================ --
-- ============== MAIN METHODS ================ --
-- ============================================ --
-- ============================================ --

-- main
        -- @brief:
        -- @params: 
        -- @return:
main :: IO ()
main = catch mainPrettyPrint noLex 

-- mainAux
        -- @brief:
        -- @params: 
        -- @return:
mainAux = do
        (filename : _ ) <- getArgs
        sourceText <- readFile filename
        
        let tokens = alexScanTokens sourceText
        --putStrLn ("Lexed as : " ++ (show tokens))
        let exp = parseCalc tokens
        putStrLn ("Parsed as : " ++ (show exp))

        result <- eval exp []
        printTable result

-- mainPrettyPrint 
        -- @brief:
        -- @params: 
        -- @return:
mainPrettyPrint = do
                        (filename : _ ) <- getArgs
                        putStrLn("\n")
                        putStrLn("Running program : " ++ filename)
                        putStrLn("\n")
                        sourceText <- readFile filename

                        putStrLn("Program : ")
                        putStrLn("\n")
                        putStrLn(sourceText)
                        putStrLn("\n")
                        
                        let tokens = alexScanTokens sourceText
                        --putStrLn ("Lexed as : " ++ (show tokens))
                        let exp = parseCalc tokens
                        --putStrLn ("Parsed as : " ++ (show exp))


                        result <- eval exp []
                        putStrLn("Program output : ")
                        putStrLn("\n")
                        printTable result
                        putStrLn("\n")


---------------
-- EVALUATOR --
---------------

                                                                                                                                    
-- eval
        -- @brief:
        -- @params: 
        -- @return:
eval :: Exp -> Vars -> IO Table
eval (Let varName tableType exp) vars  = do 
                                                table <- getTableFromType tableType vars
                                                eval exp (updateVars (varName, table) vars)                                                        
eval (Return tableType) vars           = getTableFromType tableType vars




-- ============================================ --
-- ============================================ --
-- ============= GETTING TABLES =============== --
-- ============================================ --
-- ============================================ --




---------------------
-- TABLE FROM TYPE -- 
---------------------

-- getTableFromType
        -- @brief:
        -- @params: 
        -- @return:
getTableFromType :: TableType -> Vars -> IO Table
getTableFromType (Read filename) vars           = getTableFromFile filename
getTableFromType (Var varName) vars             = return (getTableFromVar varName vars)
getTableFromType (Function functionTable) vars  = getTableFromFunction functionTable vars


---------------------
-- TABLE FROM FILE --
---------------------

-- getTableFromFile
        -- @brief:
        -- @params: 
        -- @return:
getTableFromFile :: String -> IO Table
getTableFromFile filename = do 
                                content <- readFile filename 
                                let rows = lines content
                                let table = getTableFromLines rows
                                return table

--------------------
-- TABLE FROM VAR -- 
--------------------

-- getTableFromVar
        -- @brief:
        -- @params: 
        -- @return:
getTableFromVar :: String -> Vars -> Table
getTableFromVar name []                                       = []
getTableFromVar name ((varName, table):vs) | varName == name  = table
                                           | otherwise        = getTableFromVar name vs


-------------------------
-- TABLE FROM FUNCTION -- 
-------------------------

-- getTableFromFunction
        -- @brief:
        -- @params: 
        -- @return:
getTableFromFunction :: FunctionTable -> Vars -> IO Table
getTableFromFunction (Select selectTable) vars = getTableFromSelect selectTable vars
getTableFromFunction (Delete deleteTable) vars = getTableFromDelete deleteTable vars




-- ============================================ --
-- ============================================ --
-- ================ FUNCTIONS ================= --
-- ============================================ --
-- ============================================ --




---------------
--- SELECT  ---
---------------


-- getTableFromSelect
        -- @brief:
        -- @params: 
        -- @return:
getTableFromSelect :: SelectTable -> Vars -> IO Table
getTableFromSelect (SelectAll tableType) vars                 = (getTableFromType tableType vars)
getTableFromSelect (SelectCol cols tableType) vars            = do
                                                                        table <- getTableFromType tableType vars
                                                                        let tableCols = (selectTableCols cols table)
                                                                        return tableCols
getTableFromSelect (SelectAllWhere tableType predicates) vars = do
                                                                        table <- getTableFromType tableType vars
                                                                        let whereTable = getTableFromWhere table predicates
                                                                        return whereTable
getTableFromSelect (SelectColWhere cols tableType predicates) vars = do 
                                                                        table <- getTableFromType tableType vars
                                                                        let whereTable = getTableFromWhere table predicates
                                                                        let tableCols = (selectTableCols cols table)
                                                                        return tableCols

-- selectTableCols
        -- @brief:
        -- @params: 
        -- @return:
selectTableCols :: [Int] -> Table -> Table
selectTableCols cols []          = []
selectTableCols cols (row:rows)  = newRow : (selectTableCols cols rows)
        where
                newRow = selectRowCols cols row

-- selectRowCols
        -- @brief:
        -- @params: 
        -- @return:
selectRowCols :: [Int] -> Row -> Row
selectRowCols [] row          = []
selectRowCols (col:cols) row   = [(row!!col)] ++ (selectRowCols cols row)


---------------
--- DELETE  ---
---------------


-- getTableFromDelete
        -- @brief:
        -- @params: 
        -- @return:
getTableFromDelete :: DeleteTable -> Vars -> IO Table
getTableFromDelete (DeleteAll tableType) vars      = return []
getTableFromDelete (DeleteCol cols tableType) vars = do
                                                        table <- getTableFromType tableType vars
                                                        let tableCols = deleteTableCols cols table 
                                                        return tableCols
getTableFromDelete (DeleteAllWhere tableType predicates) vars = do
                                                                        table <- getTableFromType tableType vars
                                                                        let whereTable = getTableFromWhere table predicates
                                                                        let deleteTable = table \\ whereTable
                                                                        return deleteTable



-- sort the list of columns into descending order, and then dont need to account for change in index

-- deleteTableCols
        -- @brief:
        -- @params: 
        -- @return:
deleteTableCols :: [Int] -> Table -> Table
deleteTableCols cols []          = []
deleteTableCols cols (row:rows)  = newRow : (deleteTableCols cols rows)
        where
                sortedCols = reverse (sort cols)
                newRow = deleteRowCols sortedCols row

-- deleteRowCols
        -- @brief:
        -- @params: 
        -- @return:
deleteRowCols :: [Int] -> Row -> Row
deleteRowCols [] row          = row
deleteRowCols (col:cols) row   = deleteRowCols cols newRow
        where 
                newRow = deleteRowCol col 0 row -- deleteRowCol columnToDelete currentColumn row

deleteRowCol :: Int -> Int -> Row -> Row
deleteRowCol col currentcol [] = []
deleteRowCol col currentCol (cell:cells) | col == currentCol = cells
                                         | otherwise = cell : (deleteRowCol col (currentCol + 1) cells)


-----------
-- WHERE --
-----------


-- getTableFromWhere
        -- @brief:
        -- @params: 
        -- @return:
getTableFromWhere :: Table -> [Predicate] ->  Table
getTableFromWhere table []            = table
getTableFromWhere table (pred:preds)  = getTableFromWhere (getTableFromPredicate table pred) preds

-- getTableFromPredicate
        -- @brief:
        -- @params: 
        -- @return:
getTableFromPredicate :: Table -> Predicate -> Table
getTableFromPredicate [] pred = []
getTableFromPredicate (row:rows) pred | rowSatisfyPredicate row pred = row : (getTableFromPredicate rows pred)
                                      | otherwise                    = getTableFromPredicate rows pred

-- rowSatisfyPredicate
        -- @brief:
        -- @params: 
        -- @return:
rowSatisfyPredicate :: Row -> Predicate -> Bool
rowSatisfyPredicate row (Not predicate)              = not (rowSatisfyPredicate row predicate)
rowSatisfyPredicate row (And predicate1 predicate2)  = and [(rowSatisfyPredicate row predicate1),  (rowSatisfyPredicate row predicate2)]
rowSatisfyPredicate row (Or predicate1 predicate2)   = or  [(rowSatisfyPredicate row predicate1),  (rowSatisfyPredicate row predicate2)]
rowSatisfyPredicate row (Comparison comparisonType)  = rowSatisfyComparison row comparisonType

-- rowSatisfyComparison
        -- @brief:
        -- @params: 
        -- @return:
rowSatisfyComparison :: Row -> ComparisonType -> Bool
rowSatisfyComparison row (ColVal col operator val)  = satisfyOperator operator (row!!(col)) val
rowSatisfyComparison row (ColCol col1 operator col2)  = satisfyOperator operator (row !! (col1)) (row !! (col2))

-- satisfyOperator
        -- @brief:
        -- @params: 
        -- @return:
satisfyOperator :: ComparisonOperator -> String -> String -> Bool
satisfyOperator Eq val1 val2             = val1 == val2
satisfyOperator LessThan val1 val2       = val1 < val2 
satisfyOperator GreaterThan val1 val2    = val1 > val2
satisfyOperator LessThanEq val1 val2     = val1 <= val2
satisfyOperator GreaterThanEq val1 val2  = val1 >= val2
satisfyOperator NotEq val1 val2          = val1 /= val2


------------
-- INSERT --
------------

-- todo...

------------
-- DELETE --
------------

-- todo...




-- ============================================ --
-- ============================================ --
-- ============== HELPER METHODS ============== --
-- ============================================ --
-- ============================================ --




-- updateVars
        -- @brief:
        -- @params: 
        -- @return:
updateVars :: Var -> Vars -> Vars
updateVars newVar [] = [newVar]
updateVars (name, table) ((varName,varTable):varsToGo) | name == varName = [(name, table)] ++ varsToGo
                                                       | otherwise = [(varName,varTable)] ++ (updateVars (name,table) varsToGo)

-- getTableFromLines
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLines :: [String] -> Table
getTableFromLines [] = []
getTableFromLines (row:rows) = cells : (getTableFromLines rows)
        where
                cells = splitOn "," row

-- getCellFromTable
        -- @brief:
        -- @params: 
        -- @return:
getCellFromTable :: Table -> Int -> Int -> Cell
getCellFromTable table row col = table!!row!!col


-- getLinesFromTable
        -- @brief:
        -- @params: 
        -- @return:
getLinesFromTable :: Table -> [String]
getLinesFromTable []         = []
getLinesFromTable (row:rows) = newRow : (getLinesFromTable rows)
        where
                newRow = intercalate "," row




-- ============================================ --
-- ============================================ --
-- ========== ERROR HANDLING METHODS ========== --
-- ============================================ --
-- ============================================ --




noLex :: ErrorCall -> IO ()
noLex e = do 
             let err =  show e
             hPutStr stderr ("Problem with parsing : " ++ err)
             return ()


             

-- ============================================ --
-- ============================================ --
-- ============ PRINTING METHODS ============== --
-- ============================================ --
-- ============================================ --




printTable :: Table -> IO ()
printTable [] = return ()
printTable (r:rs) = do printRow r
                       putStrLn ""
                       printTable rs 

printRow :: Row -> IO ()
printRow [] = return ()
printRow (cell:cells) | cells == [] = do putStr cell
                                         printRow cells
                      | otherwise   = do putStr cell
                                         putStr ", "
                                         printRow cells
 
printLines :: [String] -> IO ()
printLines [] = return ()
printLines (l:ls) = do putStrLn l
                       printLines ls
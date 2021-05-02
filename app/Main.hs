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
type Column =  [Cell]
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
        --putStrLn ("Parsed as : " ++ (show exp))

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
                        putStrLn ("Lexed as : " ++ (show tokens))
                        let exp = parseCalc tokens
                        putStrLn ("Parsed as : " ++ (show exp))


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
getTableFromFunction (Select selectFunction) vars = getTableFromSelect selectFunction vars
getTableFromFunction (Insert insertFunction) vars = getTableFromInsert insertFunction vars
getTableFromFunction (Delete deleteFunction) vars = getTableFromDelete deleteFunction vars
getTableFromFunction (Format formatFunction) vars = getTableFromFormat formatFunction vars
getTableFromFunction (Union unionFunction) vars   = getTableFromUnion unionFunction vars 
getTableFromFunction (Join joinFunction) vars     = getTableFromJoin joinFunction vars



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
getTableFromSelect :: SelectFunction -> Vars -> IO Table
getTableFromSelect (SelectAll tableType) vars                 = (getTableFromType tableType vars)
getTableFromSelect (SelectCol cols tableType) vars            = do
                                                                        table <- getTableFromType tableType vars
                                                                        let tableCols = (selectTableCols cols table)
                                                                        return tableCols
getTableFromSelect (SelectAllWhere predicates tableType) vars = do
                                                                        table <- getTableFromType tableType vars
                                                                        let whereTable = getTableFromWhere predicates table
                                                                        return whereTable
getTableFromSelect (SelectColWhere cols predicates tableType) vars = do 
                                                                        table <- getTableFromType tableType vars
                                                                        let whereTable = getTableFromWhere predicates table
                                                                        let tableCols = (selectTableCols cols whereTable)
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


------------
-- INSERT --
------------


-- getTableFromInsert
        -- @brief:
        -- @params: 
        -- @return:
getTableFromInsert :: InsertFunction -> Vars -> IO Table
getTableFromInsert (InsertValues vals tableType) vars       = do
                                                                table <- getTableFromType tableType vars
                                                                return (table ++ [vals])
getTableFromInsert (InsertColumn colNum val tableType) vars = do
                                                                table <- getTableFromType tableType vars
                                                                let insertTable = insertColumnTable colNum val table
                                                                return insertTable

-- insertColumnTable
        -- @brief:
        -- @params: The Int is the index of the column in the new table (i.e., input of 1 means new table will have new column at index 1).
        -- @return:
insertColumnTable :: Int -> String -> Table -> Table
insertColumnTable colNum val []         = []
insertColumnTable colNum val (row:rows) = newRow : (insertColumnTable colNum val rows)
        where
                newRow = insertColumnRow colNum val row

-- insertColumnRow
        -- @brief:
        -- @params: 
        -- @return:
insertColumnRow :: Int -> String -> Row -> Row
insertColumnRow 0 val row               = val:row
insertColumnRow colNum val (cell:cells) = cell : (insertColumnRow (colNum - 1) val cells)



---------------
--- DELETE  ---
---------------


-- getTableFromDelete
        -- @brief:
        -- @params: 
        -- @return:
getTableFromDelete :: DeleteFunction-> Vars -> IO Table
getTableFromDelete (DeleteAll tableType) vars                 = return []
getTableFromDelete (DeleteCol cols tableType) vars            = do
                                                                table <- getTableFromType tableType vars
                                                                let tableCols = deleteTableCols cols table 
                                                                return tableCols
getTableFromDelete (DeleteAllWhere predicates tableType) vars = do
                                                                table <- getTableFromType tableType vars
                                                                let whereTable = getTableFromWhere predicates table
                                                                let deleteTable = table \\ whereTable
                                                                return deleteTable



-- sort the list of columns into descending order, and then dont need to account for change in index

-- deleteTableCols
        -- @brief:
        -- @params: 
        -- @return:
deleteTableCols :: [Int] -> Table -> Table
deleteTableCols cols []         = []
deleteTableCols cols (row:rows) = newRow : (deleteTableCols cols rows)
        where
                sortedCols = reverse (sort cols)
                newRow = deleteRowCols sortedCols row

-- deleteRowCols
        -- @brief:
        -- @params: 
        -- @return:
deleteRowCols :: [Int] -> Row -> Row
deleteRowCols [] row         = row
deleteRowCols (col:cols) row = deleteRowCols cols newRow
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
getTableFromWhere :: [Predicate] -> Table ->  Table
getTableFromWhere [] table           = table
getTableFromWhere (pred:preds) table = getTableFromWhere preds (getTableFromPredicate pred table)

-- getTableFromPredicate
        -- @brief:
        -- @params: 
        -- @return:
getTableFromPredicate :: Predicate -> Table -> Table
getTableFromPredicate pred [] = []
getTableFromPredicate pred (row:rows) | rowSatisfyPredicate pred row = row : (getTableFromPredicate pred rows)
                                      | otherwise                    = getTableFromPredicate pred rows

-- rowSatisfyPredicate
        -- @brief:
        -- @params: 
        -- @return:
rowSatisfyPredicate :: Predicate -> Row -> Bool
rowSatisfyPredicate (Not predicate) row             = not (rowSatisfyPredicate predicate row)
rowSatisfyPredicate (And predicate1 predicate2) row = and [(rowSatisfyPredicate predicate1 row),  (rowSatisfyPredicate predicate2 row)]
rowSatisfyPredicate (Or predicate1 predicate2) row  = or  [(rowSatisfyPredicate predicate1 row),  (rowSatisfyPredicate predicate2 row)]
rowSatisfyPredicate (Comparison comparisonType) row = rowSatisfyComparison comparisonType row

-- rowSatisfyComparison
        -- @brief:
        -- @params: 
        -- @return:
rowSatisfyComparison :: ComparisonType -> Row -> Bool
rowSatisfyComparison (ColVal col operator val) row   = satisfyOperator operator (row!!(col)) val
rowSatisfyComparison (ColCol col1 operator col2) row = satisfyOperator operator (row!!(col1)) (row!!(col2))

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


-----------
-- UNION -- 
-----------

-- getTableFromUnion
        -- @brief:
        -- @params: 
        -- @return:
getTableFromUnion :: UnionFunction -> Vars -> IO Table
getTableFromUnion (UnionUnique tableType1 tableType2) vars    = do
                                                                table1 <- getTableFromType tableType1 vars
                                                                table2 <- getTableFromType tableType2 vars
                                                                let unionTable = nub (table1 ++ table2)
                                                                return unionTable
getTableFromUnion (UnionAll tableType1 tableType2) vars = do
                                                                table1 <- getTableFromType tableType1 vars
                                                                table2 <- getTableFromType tableType2 vars
                                                                let unionTable = table1 ++ table2
                                                                return unionTable


----------
-- JOIN -- 
----------

-- getTableFromJoin
        -- @brief:
        -- @params: 
        -- @return:
getTableFromJoin :: JoinFunction -> Vars -> IO Table
getTableFromJoin (JoinInner (TableComparison lcol rcol) ltableType rtableType) vars = do 
                                                                                ltable <- getTableFromType ltableType vars
                                                                                rtable <- getTableFromType rtableType vars
                                                                                let joinTable = getTableFromInnerJoin lcol rcol ltable rtable
                                                                                return joinTable
getTableFromJoin (JoinLeft (TableComparison lcol rcol) ltableType rtableType) vars = do 
                                                                                ltable <- getTableFromType ltableType vars
                                                                                rtable <- getTableFromType rtableType vars
                                                                                let joinTable = getTableFromInnerJoin lcol rcol ltable rtable
                                                                                return joinTable
getTableFromJoin (JoinRight (TableComparison lcol rcol) ltableType rtableType) vars = do 
                                                                                ltable <- getTableFromType ltableType vars
                                                                                rtable <- getTableFromType rtableType vars
                                                                                let joinTable = getTableFromInnerJoin lcol rcol ltable rtable
                                                                                return joinTable
getTableFromJoin (JoinFull (TableComparison lcol rcol) ltableType rtableType) vars = do 
                                                                                ltable <- getTableFromType ltableType vars
                                                                                rtable <- getTableFromType rtableType vars
                                                                                let joinTable = getTableFromInnerJoin lcol rcol ltable rtable
                                                                                return joinTable

-- getTableFromInnerJoin
        -- @brief:
        -- @params: 
        -- @return:
getTableFromInnerJoin :: Int -> Int -> Table -> Table -> Table
getTableFromInnerJoin lcol rcol [] rtable         = []
getTableFromInnerJoin lcol rcol (lrow:lrows) rtable | matchedRow == [] = [] -- couldn't find a matching row for the right table
                                                    | otherwise = (lrow ++ matchedRow) : (getTableFromInnerJoin lcol rcol lrows rtable)
        where
                matchedRow = (getRowFromColValue rcol (lrow!!lcol) rtable )


------------
-- FORMAT -- 
------------

-- getTableFromFormat
        -- @brief:
        -- @params: 
        -- @return:
getTableFromFormat :: FormatFunction -> Vars -> IO Table
getTableFromFormat (OrderBy direction tableType) vars =  do 
                                                                table <- getTableFromType tableType vars
                                                                let orderTable = getTableFromOrder direction table 
                                                                return orderTable
getTableFromFormat (OrderByCol cols direction tableType) vars =  do 
                                                                        table <- getTableFromType tableType vars
                                                                        let orderTable = getTableFromOrderCol cols direction table
                                                                        return orderTable
getTableFromFormat (Limit limit tableType) vars   = do
                                                        table <- getTableFromType tableType vars
                                                        let limitTable = getTableFromLimit limit table
                                                        return limitTable
getTableFromFormat (Offset offset tableType) vars = do
                                                        table <- getTableFromType tableType vars
                                                        let offsetTable = getTableFromOffset offset table
                                                        return offsetTable
getTableFromFormat (Last num tableType) vars = do
                                                table <- getTableFromType tableType vars
                                                let lastTable = getTableFromLast num table
                                                return lastTable

-- getTableFromOrder
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOrder :: Direction -> Table -> Table
getTableFromOrder Asc table  = sort table
getTableFromOrder Desc table = reverse (sort table)

-- getTableFromOrderCol
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOrderCol :: [Int] -> Direction -> Table -> Table
getTableFromOrderCol [] dir table | dir == Asc  = sort table
                                  | dir == Desc = reverse (sort table)
getTableFromOrderCol (col:cols) dir table       = getTableFromSortedCol col sortedCol sortedTable
        where
                sortedCol | dir == Asc  = sort((transpose table )!!col)
                          | dir == Desc = reverse (sort((transpose table )!!col))
                sortedTable             = getTableFromOrderCol cols dir table

-- getTableFromSortedCol
        -- @brief:
        -- @params: 
        -- @return:
getTableFromSortedCol :: Int -> Column -> Table -> Table
getTableFromSortedCol col [] table = []
getTableFromSortedCol col (cell:cells) table = (getRowFromColValue col cell table) : (getTableFromSortedCol col cells newTable)
        where 
                newTable = table \\ [(getRowFromColValue col cell table)]

-- getRowFromColValue
        -- @brief:
        -- @params: 
        -- @return:
getRowFromColValue :: Int -> Cell -> Table -> Row
getRowFromColValue col cell [] = []
getRowFromColValue col cell (row:rows) | cell == (row!!col) = row
                                       | otherwise = getRowFromColValue col cell rows

-- getTableFromLimit
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLimit :: Int -> Table -> Table
getTableFromLimit 0 table = []
getTableFromLimit limit (row:rows) = row : (getTableFromLimit (limit-1) rows)

-- getTableFromLimitOffset
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOffset :: Int -> Table -> Table
getTableFromOffset offset table = drop offset table

-- getTableFromLast
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLast lastNum table = drop ((length table) - (lastNum)) table




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
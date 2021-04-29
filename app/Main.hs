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
type Var = (String, [[String]])
type Vars = [(String, [[String]])]




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
getTableFromFunction function@(SelectAll tableType) vars       = getTableFromSelect function vars
getTableFromFunction function@(SelectCol cols tableType) vars  = getTableFromSelect function vars




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
getTableFromSelect :: FunctionTable -> Vars -> IO Table
getTableFromSelect (SelectAll tableType) vars       = (getTableFromType tableType vars)
getTableFromSelect (SelectCol cols tableType) vars  = do
                                                        table <- getTableFromType tableType vars
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
selectRowCols:: [Int] -> Row -> Row
selectRowCols [] row          = []
selectRowCols (col:cols) row   = [(row!!col)] ++ (selectRowCols cols row)



------------
-- INSERT --
------------

-- todo...

------------
-- DELETE --
------------

-- todo...

-----------
-- WHERE --
-----------

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
module ErrorHandler where

-----------------------
-- IMPORT STATEMENTS -- 
-----------------------

-- Library Imports -- 
import System.Environment
import Control.Exception
import System.IO ( hPutStr, stdout, stderr, hPutStrLn )
import Data.List
import Data.Char (isSpace) 
import Data.List.Split

-- Local Imports -- 
import Tokens
import Grammar
import Types
import Helper



-- ================================================================================ --
-- ================================================================================ --
-- ================================= MAIN METHOD  ================================= --
-- ================================================================================ --
-- ================================================================================ --


-- executionError 
        -- @brief:
        -- @params: 
        -- @return:
executionError :: ErrorCall -> IO ()
executionError e = do 
                      let err = show e
                      let msg = (splitOn "@" err)!!0 -- dodgy code but it will do. Wanted to seperate the error message away from the error object, so put a '@' at the end of every error message. Can then get just the message by splitting it based on the '@' delimiter. Otherwise, it prints out the stack trace which is not good.
                      hPutStrLn stderr ("\x1b[31m" ++ "### EXECUTION ERROR ### : " ++ msg ++ "\x1b[0m")
                      pure ()




-- ================================================================================ --
-- ================================================================================ --
-- ============================= VALIDATOR METHODS  =============================== --
-- ================================================================================ --
-- ================================================================================ --




-- isValidTable
        -- @brief:
        -- @params: 
        -- @return:
isValidTable :: Table -> String -> [Configuration] -> IO Bool
isValidTable table name config = do
                                        uniformTable <- isUniformTable table name

                                        -- other conditions to check here
                                        
                                        -- if error not thrown yet, table is valid, so returning true
                                        return True

-- isUniformTable
        -- @brief:
        -- @params: 
        -- @return:
isUniformTable :: Table -> String -> IO Bool 
isUniformTable (row:rows) name = isUniformTableAux rows name (length row)

-- isValidTableAux
        -- @brief:
        -- @params: 
        -- @return:
isUniformTableAux :: Table -> String -> Int -> IO Bool 
isUniformTableAux [] name width         = return True
isUniformTableAux (row:rows) name width | length row == width = isUniformTableAux rows name width
                                        | otherwise = error ("The table '" ++ name ++  "' is not uniform.@") 

-- isValidColAssigments
        -- @brief:
        -- @params: 
        -- @return:
isValidColAssignments :: [Assignment] -> Table -> Bool 
isValidColAssignments [] table     = True
isValidColAssignments (a:as) table = (isValidColAssignment a table) && (isValidColAssignments as table)

-- isValidColAssignment
        -- @brief:
        -- @params: 
        -- @return:
isValidColAssignment :: Assignment -> Table -> Bool 
isValidColAssignment (Assignment col val) table = col < (getTableWidth table)

-- isValidColumns
        -- @brief:
        -- @params: 
        -- @return:
isValidColumns :: [Int] -> Table -> Bool
isValidColumns [] table         = True
isValidColumns (col:cols) table = and [(col < getTableWidth table),(isValidColumns cols table)]

-- isValidColPreds
        -- @brief:
        -- @params: 
        -- @return:
isValidColPreds :: [Predicate(ColumnComparison)] -> Table -> Bool
isValidColPreds [] table = True
isValidColPreds (pred:preds) table = and [(isValidColPredicate pred table), ((isValidColPreds preds table))]

-- isValidColPredicate
        -- @brief:
        -- @params: 
        -- @return:
isValidColPredicate :: Predicate(ColumnComparison) -> Table -> Bool
isValidColPredicate (Not predicate) table               = isValidColPredicate predicate table
isValidColPredicate (And predicate1 predicate2) table   = and [(isValidColPredicate predicate1 table),  (isValidColPredicate predicate2 table)]
isValidColPredicate (Or predicate1 predicate2) table    = or  [(isValidColPredicate predicate1 table),  (isValidColPredicate predicate2 table)]
isValidColPredicate (Comparison columnComparison) table = isValidColComparison columnComparison table

-- isValidColComparison
        -- @brief:
        -- @params: 
        -- @return:
isValidColComparison :: ColumnComparison -> Table -> Bool
isValidColComparison (ColVal col cOperator val) table               = col < getTableWidth table
isValidColComparison (ColCol col1 cOperator col2) table             = and [(col1 < getTableWidth table),(col2 < getTableWidth table)]
isValidColComparison (IndexVal operator val cOperator result) table = True

-- isValidTablePreds
        -- @brief:
        -- @params: 
        -- @return:
isValidTablePreds :: [Predicate(TableComparison)] -> Table -> Table -> Bool
isValidTablePreds [] ltable rtable = True
isValidTablePreds (pred:preds) ltable rtable = and [(isValidTablePredicate pred ltable rtable), ((isValidTablePreds preds ltable rtable))]

-- isValidTablePredicate
        -- @brief:
        -- @params: 
        -- @return:
isValidTablePredicate :: Predicate(TableComparison) -> Table -> Table -> Bool
isValidTablePredicate (Not predicate) ltable rtable              = isValidTablePredicate predicate ltable rtable 
isValidTablePredicate (And predicate1 predicate2) ltable rtable  = and [(isValidTablePredicate predicate1 ltable rtable ),  (isValidTablePredicate predicate2 ltable rtable )]
isValidTablePredicate (Or predicate1 predicate2) ltable rtable   = or  [(isValidTablePredicate predicate1 ltable rtable ),  (isValidTablePredicate predicate2 ltable rtable )]
isValidTablePredicate (Comparison tableComparison) ltable rtable = isValidTableComparison tableComparison ltable rtable 

-- isValidTableComparison
        -- @brief:
        -- @params: 
        -- @return:
isValidTableComparison :: TableComparison -> Table -> Table -> Bool
isValidTableComparison (TableComparison lcol operator rcol) ltable rtable = and [(validLCol),(validRCol)]
        where
                validLCol = lcol < getTableWidth ltable
                validRCol = rcol < getTableWidth rtable

-- isValidBinaryOperation
        -- @brief:
        -- @params: 
        -- @return:
isValidBinaryOperation :: Table -> Table -> Bool 
isValidBinaryOperation (l:ls) (r:rs) = length l == length r
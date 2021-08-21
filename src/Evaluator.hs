module Evaluator where

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
import ErrorHandler




-- ================================================================================ --
-- ================================================================================ --
-- ================================= MAIN METHOD  ================================= --
-- ================================================================================ --
-- ================================================================================ --

                                                                                                                   
-- eval
        -- @brief:
        -- @params: 
        -- @return:
eval :: Exp ->  Vars -> [Configuration] -> IO Table
eval (Let varName tableType exp) vars config  = do 
                                                table <- getTableFromType tableType vars config
                                                let updatedVars = updateVars (varName, table) vars
                                                eval exp updatedVars config                                                      
eval (Return tableType) vars config           = getTableFromType tableType vars config




-- ================================================================================ --
-- ================================================================================ --
-- ================================ GETTING TABLES ================================ --
-- ================================================================================ --
-- ================================================================================ --




---------------------
-- TABLE FROM TYPE -- 
---------------------

-- getTableFromType
        -- @brief:
        -- @params: 
        -- @return:
getTableFromType :: TableType  -> Vars -> [Configuration] -> IO Table
getTableFromType (Read filename) vars config          = do 
                                                        table <- getTableFromFile filename config 
                                                        let formattedTable = formatTable table config

                                                        validateTable <- isValidTable formattedTable filename config 
                                                        
                                                        -- only get to this point if the table is valid
                                                        return formattedTable 
                                                     
getTableFromType (Var varName) vars config            = do 
                                                        let table = getTableFromVar varName vars config
                                                        let formattedTable = formatTable table config   -- Why is format run? At the moment it only removed leading/trailing whitespace, but it is run in case formatting does something extra in the future, and woud therefore need to be appllied to all tablles, not just when they are loaded (I dunnno...)
                                                        return formattedTable
getTableFromType (Function functionTable) vars config = do 
                                                        table <- getTableFromFunction functionTable vars config
                                                        let formattedTable = formatTable table config
                                                        return formattedTable

---------------------
-- TABLE FROM FILE --
---------------------

-- getTableFromFile
        -- @brief:
        -- @params: 
        -- @return:
getTableFromFile :: String -> [Configuration] -> IO Table
getTableFromFile filename config = if contains LoadFromTsv config then
                                        getTableFromTsvFile filename config
                                   else
                                        getTableFromCsvFile filename config
                                
-- getTableFromCsvFile
        -- @brief:
        -- @params: 
        -- @return:
getTableFromCsvFile :: String -> [Configuration] -> IO Table
getTableFromCsvFile filename config = if stringEndsWith ".csv" filename then
                                        do
                                                content <- myReadFile filename 
                                                if content == "error" then
                                                        do
                                                                error ("No such table '" ++ filename ++ "' exists.@")
                                                else
                                                        do
                                                                let rows = lines content
                                                                let table = getTableFromLines rows config
                                                                return table
                                      else
                                        error ("The TSV file '" ++ filename ++ "' cannot be loaded in CSV mode.@")

-- getTableFromTsvFile
        -- @brief:
        -- @params: 
        -- @return:                  
getTableFromTsvFile :: String -> [Configuration] -> IO Table
getTableFromTsvFile filename config = if stringEndsWith ".tsv" filename then
                                        do
                                                content <- myReadFile filename 
                                                if content == "error" then
                                                        do
                                                                error ("No such table '" ++ filename ++ "' exists.@")
                                                else
                                                        do
                                                                let rows = lines content
                                                                let table = getTableFromLines rows config
                                                                return table
                                      else
                                        error ("The CSV file '" ++ filename ++ "' cannot be loaded in TSV mode.@")      


--------------------
-- TABLE FROM VAR -- 
--------------------

-- getTableFromVar
        -- @brief:
        -- @params: 
        -- @return:
getTableFromVar :: String -> Vars -> [Configuration] -> Table
getTableFromVar name [] config                                       = error ("Variable '" ++ name ++ "' is referenced but not declared.@") -- if got to end of vars and didnt find the variable, it must not exist, and therefore it is an error
getTableFromVar name ((varName, table):vs) config | varName == name  = table
                                                  | otherwise        = getTableFromVar name vs config


-------------------------
-- TABLE FROM FUNCTION -- 
-------------------------

-- getTableFromFunction
        -- @brief:
        -- @params: 
        -- @return:
getTableFromFunction :: FunctionTable -> Vars -> [Configuration] -> IO Table
getTableFromFunction (Select selectFunction) vars config = getTableFromSelect selectFunction vars config
getTableFromFunction (Insert insertFunction) vars config = getTableFromInsert insertFunction vars config
getTableFromFunction (Delete deleteFunction) vars config = getTableFromDelete deleteFunction vars config
getTableFromFunction (Update updateFunction) vars config = getTableFromUpdate updateFunction vars config
getTableFromFunction (Set setFunction) vars config       = getTableFromSet    setFunction    vars config
getTableFromFunction (Join joinFunction) vars config     = getTableFromJoin   joinFunction   vars config
getTableFromFunction (Format formatFunction) vars config = getTableFromFormat formatFunction vars config




-- ================================================================================ --
-- ================================================================================ --
-- =================================== SELECT ===================================== --
-- ================================================================================ --
-- ================================================================================ --




-- getTableFromSelect
        -- @brief:
        -- @params: 
        -- @return:
getTableFromSelect :: SelectFunction -> Vars -> [Configuration] -> IO Table
getTableFromSelect (SelectAll tableType) vars config                      = (getTableFromType tableType vars config)
getTableFromSelect (SelectCol cols tableType) vars config                 = do 
                                                                                table <- getTableFromType tableType vars config
                                                                                let tableCols = (selectTableCols cols table)
                                                                                return tableCols
getTableFromSelect (SelectAllWhere predicates tableType) vars config      = do 
                                                                                table <- getTableFromType tableType vars config
                                                                                let whereTable = getTableFromWhere predicates table
                                                                                return whereTable
getTableFromSelect (SelectColWhere cols predicates tableType) vars config = do 
                                                                                table <- getTableFromType tableType vars config
                                                                                let whereTable = getTableFromWhere predicates table
                                                                                let tableCols = (selectTableCols cols whereTable)
                                                                                return tableCols

-- selectTableCols
        -- @brief: Used for error checking the input.
        -- @params: 
        -- @return:
selectTableCols :: [Int] -> Table -> Table
selectTableCols cols []    = [] -- ERROR FIX: for case where the table is empty - just need to return the empty list (is what is expected in the test cases)
selectTableCols cols table | validColumns = selectTableColsAux cols table
                           | otherwise    = error ("The column(s) '" ++ (show cols) ++ "' are invalid.@")
        where
                validColumns = isValidColumns cols table

-- selectTableColsAux
        -- @brief:
        -- @params: 
        -- @return:
selectTableColsAux :: [Int] -> Table -> Table
selectTableColsAux cols []          = []
selectTableColsAux cols (row:rows)  = newRow : (selectTableColsAux cols rows)
        where
                newRow = selectRowCols cols row

-- selectRowCols
        -- @brief:
        -- @params: 
        -- @return:
selectRowCols :: [Int] -> Row -> Row
selectRowCols [] row          = []
selectRowCols (col:cols) row   = [(row!!col)] ++ (selectRowCols cols row)




-- ================================================================================ --
-- ================================================================================ --
-- ================================== INSERT ====================================== --
-- ================================================================================ --
-- ================================================================================ --




-- getTableFromInsert
        -- @brief:
        -- @params: 
        -- @return:
getTableFromInsert :: InsertFunction -> Vars -> [Configuration] -> IO Table
getTableFromInsert (InsertValues vals tableType) vars config   = do 
                                                                table <- getTableFromType tableType vars config
                                                                let insertTable = insertValuesTable vals table
                                                                return insertTable
getTableFromInsert (InsertColumn colNum tableType) vars config = do 
                                                                table <- getTableFromType tableType vars config
                                                                let insertTable = insertColumnTable colNum table
                                                                return insertTable

-- insertValuesTable
        -- @brief: Used for error checking the input.
        -- @params: 
        -- @return:
insertValuesTable :: [String] -> Table -> Table
insertValuesTable vals table | validValues = insertValuesTableAux vals table
                             | otherwise   = error ("The value(s) '" ++ (show vals) ++ "' are invalid.@")
        where
                validValues = length vals == getTableWidth table

-- insertValuesTableAux
        -- @brief:
        -- @params: 
        -- @return:
insertValuesTableAux :: [String] -> Table -> Table
insertValuesTableAux vals table = (table ++ [vals])

-- insertColumnTable
        -- @brief: Used for error checking the input.
        -- @params: The Int is the index of the column in the new table (i.e., input of 1 means new table will have new column at index 1).
        -- @return:
insertColumnTable :: Int -> Table -> Table
insertColumnTable colNum []    = [] -- ERROR FIX: Inserting column into an empty table should give an empty table.
insertColumnTable colNum table | validColNum = insertColumnTableAux colNum table
                               | otherwise = error ("The column number '" ++ (show colNum) ++ "' is invalid.@")
        where 
                validColNum = colNum <= getTableWidth table -- less than or equal to so you can add a column at the end of the table

-- insertColumnTableAux
        -- @brief:
        -- @params: The Int is the index of the column in the new table (i.e., input of 1 means new table will have new column at index 1).
        -- @return:
insertColumnTableAux :: Int -> Table -> Table
insertColumnTableAux colNum []         = []
insertColumnTableAux colNum (row:rows) = newRow : (insertColumnTableAux colNum rows)
        where
                newRow = insertColumnRow colNum row

-- insertColumnRow
        -- @brief:
        -- @params: 
        -- @return:
insertColumnRow :: Int -> Row -> Row
insertColumnRow 0 row               = (""):row
insertColumnRow colNum (cell:cells) = cell : (insertColumnRow (colNum - 1) cells)




-- ================================================================================ --
-- ================================================================================ --
-- ================================== DELETE ====================================== --
-- ================================================================================ --
-- ================================================================================ --




-- getTableFromDelete
        -- @brief:
        -- @params: 
        -- @return:
getTableFromDelete :: DeleteFunction-> Vars -> [Configuration] -> IO Table
getTableFromDelete (DeleteAll tableType) vars config                 = return []
getTableFromDelete (DeleteCol cols tableType) vars config            = do 
                                                                        table <- getTableFromType tableType vars config
                                                                        let tableCols = deleteTableCols cols table 
                                                                        if tableCols == [[]] -- handling case where all table columns aree deletd, which would return [[]], but [[]] is not an empty table, [] is.
                                                                                then return []
                                                                        else return tableCols
getTableFromDelete (DeleteAllWhere predicates tableType) vars config = do 
                                                                        table <- getTableFromType tableType vars config
                                                                        let whereTable = getTableFromWhere predicates table
                                                                        let deleteTable = table \\ whereTable
                                                                        return deleteTable

-- deleteTableCols
        -- @brief: Used for error checking the input.
        -- @params: 
        -- @return:
deleteTableCols :: [Int] -> Table -> Table
deleteTableCols cols []    = [] -- ERROR FIX : Output expects empty file when deleting from an empty table
deleteTableCols cols table | validColumns = deleteTableColsAux cols table
                           | otherwise    = error ("The column(s) '" ++ (show cols) ++ "' are invalid.@")
        where
                validColumns = isValidColumns cols table

-- deleteTableColsAux
        -- @brief:
        -- @params: 
        -- @return:
deleteTableColsAux :: [Int] -> Table -> Table
deleteTableColsAux cols []         = []
deleteTableColsAux cols (row:rows) = newRow : (deleteTableColsAux cols rows)
        where
                sortedCols = reverse (sort cols) -- sort the list of columns into descending order, and then dont need to account for change in index
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

-- deleteRowCol
        -- @brief:
        -- @params: 
        -- @return:
deleteRowCol :: Int -> Int -> Row -> Row
deleteRowCol col currentcol [] = []
deleteRowCol col currentCol (cell:cells) | col == currentCol = cells
                                         | otherwise = cell : (deleteRowCol col (currentCol + 1) cells)




-- ================================================================================ --
-- ================================================================================ --
-- ================================== UPDATE ====================================== --
-- ================================================================================ --
-- ================================================================================ --




-- getTableFromUpdate
        -- @brief:
        -- @params: 
        -- @return:
getTableFromUpdate :: UpdateFunction -> Vars -> [Configuration] -> IO Table
getTableFromUpdate (UpdateAll assignments tableType) vars config              = do
                                                                                table <- getTableFromType tableType vars config
                                                                                let updateTable = getTableFromUpdateAll assignments table
                                                                                return updateTable
getTableFromUpdate (UpdateWhere assignments predicates tableType) vars config = do 
                                                                                table <- getTableFromType tableType vars config
                                                                                let updateTable = getTableFromUpdateWhere assignments predicates table
                                                                                return updateTable

-- getTableFromUpdateAll
        -- @brief:
        -- @params: 
        -- @return:
getTableFromUpdateAll :: [Assignment] -> Table -> Table
getTableFromUpdateAll assignments [] = []
getTableFromUpdateAll assignments (row:rows) | validAssignments = updatedRow : getTableFromUpdateAll assignments rows
                                             | otherwise        = error ("The column assignment '" ++ (show assignments) ++ "' is invalid.@")
        where
                validAssignments = isValidColAssignments assignments (row:rows)
                updatedRow = getRowFromAssignments assignments row

-- getRowFromAssignment
        -- @brief:
        -- @params: 
        -- @return:v
getTableFromUpdateWhere :: [Assignment] -> [Predicate(ColumnComparison)] -> Table -> Table
getTableFromUpdateWhere assignments predicates table | validAssignments = let 
                                                                           tableFromWhere = getTableFromWhere predicates table
                                                                           in 
                                                                           getTableFromUpdateWhereAux assignments tableFromWhere table
                                                     | otherwise = error ("The column assignment '" ++ (show assignments) ++ "' is invalid.@")
        where
                validAssignments = isValidColAssignments assignments table

-- getRowFromAssignment
        -- @brief:
        -- @params: 
        -- @return:
getTableFromUpdateWhereAux :: [Assignment] -> Table -> Table -> Table
getTableFromUpdateWhereAux assignments whereTable []                                   = []
getTableFromUpdateWhereAux assignments whereTable (row:rows) | contains row whereTable = updatedRow : restOfTable
                                                             | otherwise               = row : restOfTable
        where
                updatedRow  = getRowFromAssignments assignments row
                restOfTable = getTableFromUpdateWhereAux assignments whereTable rows

-- getRowFromAssignments
        -- @brief:
        -- @params: 
        -- @return:
getRowFromAssignments :: [Assignment] -> Row -> Row
getRowFromAssignments [] row = row
getRowFromAssignments ((Assignment colNum val):assignments) row = getRowFromAssignments assignments updatedRow
        where
                updatedRow = getRowFromAssignment colNum val row

-- getRowFromAssignment
        -- @brief:
        -- @params: 
        -- @return:
getRowFromAssignment :: Int -> String -> Row -> Row
getRowFromAssignment 0 val (cell:cells)      = val:cells
getRowFromAssignment colNum val (cell:cells) = cell : (getRowFromAssignment (colNum - 1) val cells)




-- ================================================================================ --
-- ================================================================================ --
-- =================================== WHERE ====================================== --
-- ================================================================================ --
-- ================================================================================ --




-- getTableFromWhere
        -- @brief:
        -- @params: 
        -- @return:
getTableFromWhere :: [Predicate(ColumnComparison)] -> Table ->  Table
getTableFromWhere preds []    = [] -- ERROR FIX: Test cases expect output of nothing, and not an error in the when table is empty.
getTableFromWhere preds table | validPreds = getTableFromWhereAux preds table
                              | otherwise = error ("The column predicate '" ++ (show preds) ++ "' is invalid.@")
        where 
                validPreds = isValidColPreds preds table

-- getTableFromWhereAux
        -- @brief:
        -- @params: 
        -- @return:
getTableFromWhereAux :: [Predicate(ColumnComparison)] -> Table ->  Table
getTableFromWhereAux [] table           = table
getTableFromWhereAux (pred:preds) table = getTableFromWhere preds (getRowsFromColumnPredicate pred table 0)

-- getRowsFromColumnPredicate
        -- @brief:
        -- @params: 
        -- @return:
getRowsFromColumnPredicate :: Predicate(ColumnComparison) -> Table -> Int -> Table
getRowsFromColumnPredicate pred [] index = []
getRowsFromColumnPredicate pred (row:rows) index | rowSatisfyColumnPredicate pred row index = row : (getRowsFromColumnPredicate pred rows (index+1))
                                                 | otherwise                                = getRowsFromColumnPredicate pred rows (index+1)
        

-- rowSatisfyColumnPredicate
        -- @brief:
        -- @params: 
        -- @return:
rowSatisfyColumnPredicate :: Predicate(ColumnComparison) -> Row -> Int -> Bool
rowSatisfyColumnPredicate (Not predicate) row index               = not (rowSatisfyColumnPredicate predicate row index)
rowSatisfyColumnPredicate (And predicate1 predicate2) row index   = and [(rowSatisfyColumnPredicate predicate1 row index),  (rowSatisfyColumnPredicate predicate2 row index)]
rowSatisfyColumnPredicate (Or predicate1 predicate2) row index    = or  [(rowSatisfyColumnPredicate predicate1 row index),  (rowSatisfyColumnPredicate predicate2 row index)]
rowSatisfyColumnPredicate (Comparison columnComparison) row index = rowSatisfyColumnComparison columnComparison row index

-- rowSatisfyColumnComparison
        -- @brief:
        -- @params: 
        -- @return:
rowSatisfyColumnComparison :: ColumnComparison -> Row -> Int -> Bool
rowSatisfyColumnComparison (ColVal col cOperator val) row index               = satisfyCOperator cOperator (row!!(col)) val
rowSatisfyColumnComparison (ColCol col1 cOperator col2) row index             = satisfyCOperator cOperator (row!!(col1)) (row!!(col2))
rowSatisfyColumnComparison (IndexVal operator val cOperator result) row index = satisfyCOperator cOperator calcResult result
        where
                calcResult = evalOperatorExpression index operator val

-- satisfyCOperator
        -- @brief:
        -- @params: 
        -- @return:
satisfyCOperator :: (Eq a, Ord a) => ComparisonOperator -> a -> a -> Bool
satisfyCOperator Eq val1 val2             = val1 == val2
satisfyCOperator LessThan val1 val2       = val1 < val2 
satisfyCOperator GreaterThan val1 val2    = val1 > val2
satisfyCOperator LessThanEq val1 val2     = val1 <= val2
satisfyCOperator GreaterThanEq val1 val2  = val1 >= val2
satisfyCOperator NotEq val1 val2          = val1 /= val2

-- evalOperatorExpression
        -- @brief:
        -- @params: 
        -- @return:
evalOperatorExpression :: Int -> Operator -> Int -> Int
evalOperatorExpression val1 Add val2 = val1 + val2
evalOperatorExpression val1 Subtract val2 = val1 - val2
evalOperatorExpression val1 Multiply val2 = val1 * val2
evalOperatorExpression val1 Divide val2 = div val1 val2
evalOperatorExpression val1 Modulo val2 = mod val1 val2




-- ================================================================================ --
-- ================================================================================ --
-- ================================== SETS ====================================== --
-- ================================================================================ --
-- ================================================================================ --




-----------------
-- MAIN METHOD -- 
-----------------

-- getTableFromSet
        -- @brief:
        -- @params: 
        -- @return:
getTableFromSet :: SetFunction -> Vars -> [Configuration] -> IO Table
getTableFromSet (Union tableType1 tableType2) vars config        = do 
                                                                        table1 <- getTableFromType tableType1 vars config
                                                                        table2 <- getTableFromType tableType2 vars config
                                                                        let unionTable = getTableFromUnion table1 table2
                                                                        return unionTable
getTableFromSet (Intersection tableType1 tableType2) vars config = do 
                                                                        table1 <- getTableFromType tableType1 vars config
                                                                        table2 <- getTableFromType tableType2 vars config
                                                                        let intersectionTable = getTableFromIntersection table1 table2
                                                                        return intersectionTable
getTableFromSet (Difference tableType1 tableType2) vars config   = do 
                                                                        table1 <- getTableFromType tableType1 vars config
                                                                        table2 <- getTableFromType tableType2 vars config
                                                                        let differenceTable = getTableFromDifference table1 table2
                                                                        return differenceTable

-----------
-- UNION -- 
-----------

-- getTableFromUnion
        -- @brief:
        -- @params: 
        -- @return:
getTableFromUnion :: Table -> Table -> Table
getTableFromUnion table1 table2 = table1 ++ table2


------------------
-- INTERSECTION --
------------------

-- getTableFromIntersection
        -- @brief:
        -- @params: 
        -- @return:
getTableFromIntersection :: Table -> Table -> Table
getTableFromIntersection [] table2 = []
getTableFromIntersection (row1:rows1) table2 | contains row1 table2 = row1 : getTableFromIntersection rows1 table2
                                             | otherwise            = getTableFromIntersection rows1 table2


----------------
-- DIFFERENCE -- 
----------------

-- getTableFromDifference
        -- @brief:
        -- @params: 
        -- @return:
getTableFromDifference :: Table -> Table -> Table
getTableFromDifference table1 table2 = table1 \\ table2




-- ================================================================================ --
-- ================================================================================ --
-- =================================== JOIN ======================================= --
-- ================================================================================ --
-- ================================================================================ --




-- Standard Join = Connects two tables together without a codition (row 1 of left table paired with row 1 of right table, and so on...)
-- Inner Join    = Connects two tables together in the cases where the condition is matched.
-- Left Join     = Connects two tables together in the cases where codition is met, and lists all rows of the left table even if they have no match (paired with nulls).
-- Right Join    = Connects two tables together in the cases where codition is met, and lists all rows of the right table even if they have no match (paired with nulls).
-- Outer Join    = Connects two rows together based on where the codition is met, and provides nulls for both sides when it is not.
-- Full Join     = Every row in left table paired with every row in right table (every possible combination of rows). 

-----------------
-- MAIN METHOD -- 
-----------------

-- getTableFromJoin
        -- @brief:
        -- @params: 
        -- @return:
getTableFromJoin :: JoinFunction -> Vars -> [Configuration] -> IO Table
getTableFromJoin (JoinStandard ltableType rtableType) vars config         = do 
                                                                                ltable <- getTableFromType ltableType vars config
                                                                                rtable <- getTableFromType rtableType vars config
                                                                                let joinTable = getTableFromStandardJoin ltable (getTableWidth ltable) rtable (getTableWidth rtable)
                                                                                return joinTable
getTableFromJoin (JoinInner predicates ltableType rtableType) vars config = do 
                                                                                ltable <- getTableFromType ltableType vars config
                                                                                rtable <- getTableFromType rtableType vars config
                                                                                let joinTable = getTableFromInnerJoin predicates ltable rtable
                                                                                return joinTable
getTableFromJoin (JoinLeft predicates ltableType rtableType) vars config = do 
                                                                                ltable <- getTableFromType ltableType vars config
                                                                                rtable <- getTableFromType rtableType vars config
                                                                                let joinTable = getTableFromLeftJoin predicates ltable rtable
                                                                                return joinTable
getTableFromJoin (JoinRight predicates ltableType rtableType) vars config = do 
                                                                                ltable <- getTableFromType ltableType vars config
                                                                                rtable <- getTableFromType rtableType vars config
                                                                                let joinTable = getTableFromRightJoin predicates ltable rtable
                                                                                return joinTable
getTableFromJoin (JoinOuter predicates ltableType rtableType) vars config = do 
                                                                                ltable <- getTableFromType ltableType vars config
                                                                                rtable <- getTableFromType rtableType vars config
                                                                                let joinTable = getTableFromOuterJoin predicates ltable rtable
                                                                                return joinTable
getTableFromJoin (JoinFull ltableType rtableType) vars config             = do 
                                                                                ltable <- getTableFromType ltableType vars config
                                                                                rtable <- getTableFromType rtableType vars config
                                                                                let joinTable = getTableFromFullJoin ltable rtable
                                                                                return joinTable
getTableFromJoin (JoinMerge preds keeps ltableType rtableType) vars config = do 
                                                                                ltable <- getTableFromType ltableType vars config
                                                                                rtable <- getTableFromType rtableType vars config
                                                                                let joinTable = getTableFromMerge preds ltable rtable keeps
                                                                                return joinTable

-------------------
-- STANDARD JOIN -- 
-------------------

-- getTableFromStandard
        -- @brief:
        -- @params: 
        -- @return:
getTableFromStandardJoin :: Table -> Int -> Table -> Int -> Table
getTableFromStandardJoin [] lwidth [] rwidth           = []
getTableFromStandardJoin (lrow:lrows) lwidth [] rwidth = (lrow ++ nullRRow) : (getTableFromStandardJoin lrows lwidth [] rwidth)
        where
                nullRRow = getNullRow rwidth
getTableFromStandardJoin [] lwidth (rrow:rrows) rwidth = (nullLRow ++ rrow) : (getTableFromStandardJoin [] lwidth rrows rwidth)
        where
                nullLRow = getNullRow lwidth
getTableFromStandardJoin (lrow:lrows) lwidth (rrow:rrows) rwidth = (lrow ++ rrow) : (getTableFromStandardJoin lrows lwidth rrows rwidth) 

----------------
-- INNER JOIN -- 
----------------

-- getTableFromInnerJoin
        -- @brief:
        -- @params: 
        -- @return:
getTableFromInnerJoin :: [Predicate(TableComparison)] -> Table -> Table -> Table
getTableFromInnerJoin preds []     rtable = [] -- ERROR FIX : Output expects empty table, currently would throw an error as the provided columns would be out of range
getTableFromInnerJoin preds ltable []     = [] -- ERROR FIX : Output expects empty table, currently would throw an error as the provided columns would be out of range
getTableFromInnerJoin preds ltable rtable | validPreds = getTableFromInnerJoinAux preds ltable rtable
                                          | otherwise  = error ("The table predicates '" ++ (show preds) ++ "' are invalid.@")
        where 
                validPreds = isValidTablePreds preds ltable rtable

-- getTableFromInnerJoinAaux
        -- @brief:
        -- @params: 
        -- @return:
getTableFromInnerJoinAux :: [Predicate(TableComparison)] ->Table -> Table -> Table
getTableFromInnerJoinAux predicates [] rtable           = []
getTableFromInnerJoinAux predicates (lrow:lrows) rtable | joinedRows == [] = (getTableFromInnerJoinAux predicates lrows rtable) -- couldn't find a matching row for the right table, so neither row is included
                                                        | otherwise        = joinedRows ++ (getTableFromInnerJoinAux predicates lrows rtable)
        where
                matchedRRows = (getRowsFromTablePredicates predicates lrow rtable) -- every row in rtable that has the same column value as ltable
                joinedRows   = getLJoinedRows lrow matchedRRows -- the row in ltable joined to every row it matches in rtable

---------------
-- LEFT JOIN -- 
---------------

-- getTableFromLeftJoin
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLeftJoin :: [Predicate(TableComparison)] ->Table -> Table -> Table
getTableFromLeftJoin preds []     rtable              = [] -- ERROR FIX : Output should be empty if left table is empty
getTableFromLeftJoin preds ltable rtable | validPreds = getTableFromLeftJoinAux preds ltable rtable
                                         | otherwise  = error ("The table predicates '" ++ (show preds) ++ "' are invalid.@")
        where 
                validPreds = isValidTablePreds preds ltable rtable

-- getTableFromLeftJoinAux
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLeftJoinAux :: [Predicate(TableComparison)] ->Table -> Table -> Table
getTableFromLeftJoinAux predicates [] rtable           = []
getTableFromLeftJoinAux predicates (lrow:lrows) rtable | joinedRows == []  = (lrow ++ nullRRow) : (getTableFromLeftJoinAux predicates lrows rtable) -- couldn't find a matching row for the right table, so using nulls
                                                       | otherwise         = joinedRows ++ (getTableFromLeftJoinAux predicates lrows rtable)
        where
                matchedRRows = (getRowsFromTablePredicates predicates lrow rtable)
                joinedRows   = getLJoinedRows lrow matchedRRows 
                nullRRow     = getNullRow (getTableWidth rtable) 

-----------------
-- RIGHT JOIN  -- 
-----------------

-- getTableFromRightJoin
        -- @brief:
        -- @params: 
        -- @return:
getTableFromRightJoin :: [Predicate(TableComparison)] ->Table -> Table -> Table
getTableFromRightJoin preds ltable []     = [] -- ERROR FIX : Output should be empty if right table is empty
getTableFromRightJoin preds ltable rtable | validPreds = getTableFromRightJoinAux preds ltable rtable
                                          | otherwise  = error ("The table predicates '" ++ (show preds) ++ "' are invalid.@")
        where 
                validPreds = isValidTablePreds preds ltable rtable

-- getTableFromRightJoinAux
        -- @brief:
        -- @params: 
        -- @return:
getTableFromRightJoinAux :: [Predicate(TableComparison)] ->Table -> Table -> Table
getTableFromRightJoinAux predicates ltable []                              = []
getTableFromRightJoinAux predicates ltable (rrow:rrows) | joinedRows == [] = (nullLRow ++ rrow) : (getTableFromRightJoinAux predicates ltable rrows) -- couldn't find a matching row for the right table, so using nulls
                                                        | otherwise        = joinedRows ++ (getTableFromRightJoinAux predicates ltable rrows)
        where
                matchedLRows = (getRowsFromTablePredicatesR predicates rrow ltable) -- calling the method to get the rows based on Right-joining
                joinedRows   = getRJoinedRows matchedLRows rrow 
                nullLRow     = getNullRow (getTableWidth ltable) 

-----------------
-- OUTER JOIN  -- 
-----------------

-- getTableFromOuterJoin
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOuterJoin :: [Predicate(TableComparison)] -> Table -> Table -> Table
getTableFromOuterJoin predicates ltable rtable = nub (leftJoinTable ++ rightJoinTable)
        where
                leftJoinTable  = getTableFromLeftJoin predicates ltable rtable
                rightJoinTable = getTableFromRightJoin predicates ltable rtable

---------------
-- FULL JOIN -- 
---------------

-- getTableFromFullJoin
        -- @brief:
        -- @params: 
        -- @return:
getTableFromFullJoin :: Table -> Table -> Table
getTableFromFullJoin [] table         = []
getTableFromFullJoin (row:rows) table = joinedRows ++ (getTableFromFullJoin rows table)
        where
                joinedRows = getLJoinedRows row table

-----------
-- MERGE --
-----------

-- getTableFromMerge
        -- @brief:
        -- @params: 
        -- @return:v
getTableFromMerge :: [Predicate(TableComparison)] -> Table -> Table -> [Int] -> Table
getTableFromMerge preds ltable rtable keeps = mergeTable joinedTable maxIndex keeps
        where 
                joinedTable = getTableFromInnerJoin preds ltable rtable 
                maxIndex = getTableWidth ltable - 1 -- PROBLEM : Assumes both tables have the same width

-- mergeTable
        -- @brief:
        -- @params: 
        -- @return:
mergeTable :: Table -> Int -> [Int] -> Table
mergeTable [] maxIndex keeps         = []
mergeTable (row:rows) maxIndex keeps = (mergeRow row maxIndex keeps) : (mergeTable rows maxIndex keeps)

-- mergeRow
        -- @brief:
        -- @params: 
        -- @return:
mergeRow :: Row -> Int -> [Int] -> Row
mergeRow row maxIndex keeps = mergeRowAux row maxIndex keeps 0

-- mergeRowAux
        -- @brief:
        -- @params: 
        -- @return:
mergeRowAux :: Row -> Int -> [Int] -> Int -> Row
mergeRowAux [] maxIndex keeps index           = []
mergeRowAux (cell:cells) maxIndex keeps index | (contains index keeps) = cell : (mergeRowAux cells maxIndex keeps (index+1))
                                              | index > maxIndex = []
                                              | cell == "" = rightCell : (mergeRowAux cells maxIndex keeps (index+1))
                                              | otherwise = cell : (mergeRowAux cells maxIndex keeps (index+1))
        where
                rightCell = (cells!!(maxIndex))
                                     

--------------------
-- HELPER METHODS -- 
--------------------


-- getRowsFromTablePredicates
        -- @brief: Returns all rows within the table that satisfy the list of predicates betweenn the row and the table.
        -- @params: 
        -- @return:
getRowsFromTablePredicates :: [Predicate(TableComparison)] -> Row -> Table -> [Row]
getRowsFromTablePredicates [] row table           = []
getRowsFromTablePredicates (pred:preds) row table = getRowsFromTablePredicate pred row table ++ getRowsFromTablePredicates preds row table

-- getRowsFromTablePredicatesR
        -- @brief:
        -- @params: 
        -- @return:
getRowsFromTablePredicatesR :: [Predicate(TableComparison)] -> Row -> Table -> [Row]
getRowsFromTablePredicatesR [] row table           = []
getRowsFromTablePredicatesR (pred:preds) row table = getRowsFromTablePredicate switchedPred row table ++ getRowsFromTablePredicatesR preds row table
        where
                switchedPred = switchTablePredicate pred -- predicate must be switched because we are now comparing right row to left table, 
                                                         -- but the predicate is defined for left row to right table. Switching means that the 
                                                         -- evaluator functions will consider the predicate correctly.

-- switchTablePredicate
        -- @brief:
        -- @params: 
        -- @return:
switchTablePredicate :: Predicate(TableComparison) -> Predicate(TableComparison)
switchTablePredicate (Not predicate)              = (Not (switchTablePredicate predicate))
switchTablePredicate (And predicate1 predicate2)  = (And (switchTablePredicate predicate1) (switchTablePredicate predicate2))
switchTablePredicate (Or predicate1 predicate2)   = (Or  (switchTablePredicate predicate1) (switchTablePredicate predicate2))
switchTablePredicate (Comparison tableComparison) = (Comparison (switchTableComparison tableComparison))

-- switchTableComparison
        -- @brief:
        -- @params: 
        -- @return:
switchTableComparison :: TableComparison -> TableComparison
switchTableComparison (TableComparison col1 Eq col2)            = (TableComparison col2 Eq col1) 
switchTableComparison (TableComparison col1 LessThan col2)      = (TableComparison col2 GreaterThanEq col1) 
switchTableComparison (TableComparison col1 GreaterThan col2)   = (TableComparison col2 LessThanEq col1) 
switchTableComparison (TableComparison col1 LessThanEq col2)    = (TableComparison col2 GreaterThan col1) 
switchTableComparison (TableComparison col1 GreaterThanEq col2) = (TableComparison col2 LessThan col1) 
switchTableComparison (TableComparison col1 NotEq col2)         = (TableComparison col2 NotEq col1) 


-- getRowsFromTablePredicate
        -- @brief:
        -- @params: 
        -- @return:
getRowsFromTablePredicate :: Predicate(TableComparison) -> Row -> Table -> [Row]
getRowsFromTablePredicate predicate row1 [] = []
getRowsFromTablePredicate predicate row1 (row2:rows) | rowSatisfyTablePredicate predicate row1 row2 = row2 : getRowsFromTablePredicate predicate row1 rows
                                                     | otherwise = getRowsFromTablePredicate predicate row1 rows

-- rowSatisfyTablePredicate
        -- @brief:
        -- @params: 
        -- @return:
rowSatisfyTablePredicate :: Predicate(TableComparison) -> Row -> Row -> Bool
rowSatisfyTablePredicate (Not predicate)              row1 row2  = not (rowSatisfyTablePredicate predicate row1 row2)
rowSatisfyTablePredicate (And predicate1 predicate2)  row1 row2  = and [(rowSatisfyTablePredicate predicate1 row1 row2), (rowSatisfyTablePredicate predicate2 row1 row2)]
rowSatisfyTablePredicate (Or predicate1 predicate2)   row1 row2  = or  [(rowSatisfyTablePredicate predicate1 row1 row2), (rowSatisfyTablePredicate predicate2 row1 row2)]
rowSatisfyTablePredicate (Comparison tableComparison) row1 row2  = rowSatisfyTableComparison tableComparison row1 row2

-- rowSatisfyTableComparison
        -- @brief:
        -- @params: 
        -- @return:
rowSatisfyTableComparison :: TableComparison -> Row -> Row -> Bool
rowSatisfyTableComparison (TableComparison col1 Eq col2) row1 row2            | (row1!!col1) == (row2!!col2) = True
                                                                              | otherwise                    = False
rowSatisfyTableComparison (TableComparison col1 LessThan col2) row1 row2      | (row1!!col1) <  (row2!!col2) = True
                                                                              | otherwise                    = False
rowSatisfyTableComparison (TableComparison col1 GreaterThan col2) row1 row2   | (row1!!col1) >  (row2!!col2) = True
                                                                              | otherwise                    = False  
rowSatisfyTableComparison (TableComparison col1 LessThanEq col2) row1 row2    | (row1!!col1) <= (row2!!col2) = True
                                                                              | otherwise                    = False
rowSatisfyTableComparison (TableComparison col1 GreaterThanEq col2) row1 row2 | (row1!!col1) >= (row2!!col2) = True
                                                                              | otherwise                    = False  
rowSatisfyTableComparison (TableComparison col1 NotEq col2) row1 row2         | (row1!!col1) /= (row2!!col2) = True
                                                                              | otherwise                    = False

-- getLJoinedRows
        -- @brief:
        -- @params: 
        -- @return:
getLJoinedRows :: Row -> [Row] -> [Row]
getLJoinedRows row [] = []
getLJoinedRows row (matchedRow:matches) = (row ++ matchedRow) : (getLJoinedRows row matches)

-- getRJoinedRows
        -- @brief:
        -- @params: 
        -- @return:
getRJoinedRows :: [Row] -> Row -> [Row]
getRJoinedRows [] row = []
getRJoinedRows (matchedRow:matches) row  = (matchedRow ++ row) : (getRJoinedRows matches row)





-- ================================================================================ --
-- ================================================================================ --
-- ================================== FORMAT ====================================== --
-- ================================================================================ --
-- ================================================================================ --




-----------------
-- MAIN METHOD -- 
-----------------

-- getTableFromFormat
        -- @brief:
        -- @params: 
        -- @return:
getTableFromFormat :: FormatFunction -> Vars -> [Configuration] -> IO Table
getTableFromFormat (OrderBy direction tableType) vars config         =  do 
                                                                        table <- getTableFromType tableType vars config
                                                                        let orderTable = getTableFromOrder direction table 
                                                                        return orderTable
getTableFromFormat (OrderByCol direction cols tableType) vars config = do 
                                                                        table <- getTableFromType tableType vars config
                                                                        let orderTable = getTableFromOrderCols direction cols table
                                                                        return orderTable
getTableFromFormat (Limit limit tableType) vars config               = do
                                                                        table <- getTableFromType tableType vars config
                                                                        let limitTable = getTableFromLimit limit table
                                                                        return limitTable
getTableFromFormat (Offset offset tableType) vars config             = do
                                                                        table <- getTableFromType tableType vars config
                                                                        let offsetTable = getTableFromOffset offset table
                                                                        return offsetTable
getTableFromFormat (Last num tableType) vars config                  = do
                                                                        table <- getTableFromType tableType vars config
                                                                        let lastTable = getTableFromLast num table
                                                                        return lastTable
getTableFromFormat (Unique tableType) vars config                   = do
                                                                        table <- getTableFromType tableType vars config
                                                                        let uniqueTable = getTableFromUnique table
                                                                        return uniqueTable 
getTableFromFormat (Transpose tableType) vars config                 = do
                                                                        table <- getTableFromType tableType vars config
                                                                        let transposeTable = getTableFromTranspose table
                                                                        return transposeTable 

-----------
-- ORDER -- 
-----------

-- getTableFromOrder
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOrder :: Direction -> Table -> Table
getTableFromOrder Asc table  = sort table
getTableFromOrder Desc table = reverse (sort table)

-- getTableFromOrderCols
        -- @brief: Used for error checking the input.
        -- @params: 
        -- @return:
getTableFromOrderCols :: Direction -> [Int] -> Table -> Table
getTableFromOrderCols dir cols []    = [] -- ERROR FIX : Expected output is empty table when ordering empty table, not throwing an error
getTableFromOrderCols dir cols table | validCols = getTableFromOrderColsAux dir cols table
                                     | otherwise = error ("The column(s) '" ++ (show cols) ++ "' are invalid.@")
        where
                validCols = isValidColumns cols table

-- getTableFromOrderColsAux
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOrderColsAux :: Direction -> [Int] -> Table -> Table
getTableFromOrderColsAux dir [] table | dir == Asc  = sort table
                                      | dir == Desc = reverse (sort table)
getTableFromOrderColsAux dir (col:cols) table       = getTableFromSortedCol col sortedCol sortedTable
        where
                sortedCol | dir == Asc  = sort((transpose table )!!col)
                          | dir == Desc = reverse (sort((transpose table )!!col))
                sortedTable             = getTableFromOrderColsAux dir cols table

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

-----------
-- LIMIT -- 
-----------

-- getTableFromLimit
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLimit :: Int -> Table -> Table
getTableFromLimit limit []    = [] -- ERROR FIX
getTableFromLimit limit table | validLimit = getTableFromLimitAux limit table
                              | otherwise  = error ("The LIMIT value '" ++ (show limit) ++ "' is invalid.@")
        where
                validLimit = limit <= length table

-- getTableFromLimitAux
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLimitAux :: Int -> Table -> Table
getTableFromLimitAux 0 table = []
getTableFromLimitAux limit (row:rows) = row : (getTableFromLimitAux (limit-1) rows)

------------
-- OFFSET -- 
------------

-- getTableFromOffset
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOffset :: Int -> Table -> Table
getTableFromOffset offset []    = [] -- ERROR FIX
getTableFromOffset offset table | validOffset = getTableFromOffsetAux offset table
                                | otherwise = error ("The OFFSET value '" ++ (show offset) ++ "' is invalid.@")
        where
                validOffset = offset < length table

-- getTableFromOffsetAux
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOffsetAux :: Int -> Table -> Table
getTableFromOffsetAux offset table = drop offset table

----------
-- LAST -- 
----------

-- getTableFromLast
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLast :: Int -> Table -> Table
getTableFromlast llastNum []   = [] -- ERROR FIX
getTableFromLast lastNum table | validLastNum = getTableFromLastAux lastNum table
                               | otherwise    = error ("The LAST value '" ++ (show lastNum) ++ "' is invalid.@")
        where
                validLastNum = lastNum <= length table

-- getTableFromLastAux
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLastAux :: Int -> Table -> Table 
getTableFromLastAux lastNum table = drop ((length table) - (lastNum)) table

------------
-- UNIQUE -- 
------------

-- getTableFromUnique
        -- @brief:
        -- @params: 
        -- @return:
getTableFromUnique :: Table -> Table
getTableFromUnique table = nub table

---------------
-- TRANSPOSE -- 
---------------

-- getTableFromTranspose
        -- @brief:
        -- @params: 
        -- @return:
getTableFromTranspose :: Table -> Table
getTableFromTranspose table = transpose table
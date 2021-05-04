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
import Data.Char (isSpace) 

-- ADDITIONAL DEPENDENCIES 
        -- Data.List.Split
        -- "array" in CQLanguage.cabal (not sure what it's used for?)

-----------------------
-- TYPE DECLERATIONS -- 
-----------------------


type Cell = String
type Row = [Cell]
type Column =  [Cell]
type Table = [Row]
type Var = (String, Table)
type Vars = [Var]




-- ================================================================================ --
-- ================================================================================ --
-- ================================= MAIN METHODS ================================= --
-- ================================================================================ --
-- ================================================================================ --




-- main
        -- @brief:
        -- @params: 
        -- @return:
main :: IO ()
main = catch mainAux noLex 

-- mainAux
        -- @brief:
        -- @params: 
        -- @return:
mainAux :: IO ()
mainAux = do 
             (filename : _ ) <- getArgs
             sourceText <- readFile filename
                
             let tokens = alexScanTokens sourceText
             let program = parseCalc tokens

             let configuration = getConfiguration program
             let exp = getExp program

             result <- eval exp []

             if (contains PrettyPrint configuration) 
                     then prettyPrint filename result
             else printTable result

-- getConfiguration 
        -- @brief:
        -- @params: 
        -- @return:
getConfiguration :: Program -> [Configuration]
getConfiguration (SetupProgram configuration exp) = configuration
getConfiguration (Program exp)                    = []

-- getExp 
        -- @brief:
        -- @params: 
        -- @return:
getExp :: Program -> Exp
getExp (SetupProgram configuration exp) = exp
getExp (Program exp)                    = exp


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
                                            let updatedVars = updateVars (varName, table) vars
                                            eval exp updatedVars                                                       
eval (Return tableType) vars           = getTableFromType tableType vars




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
getTableFromType :: TableType -> Vars -> IO Table
getTableFromType (Read filename) vars           = do 
                                                     table <- getTableFromFile filename
                                                     let formattedTable = formatTable table
                                                     return formattedTable              
getTableFromType (Var varName) vars             = do 
                                                     let table = getTableFromVar varName vars
                                                     let formattedTable = formatTable table
                                                     return formattedTable
getTableFromType (Function functionTable) vars  = do 
                                                     table <- getTableFromFunction functionTable vars
                                                     let formattedTable = formatTable table
                                                     return formattedTable

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
getTableFromFunction (Update updateFunction) vars = getTableFromUpdate updateFunction vars
getTableFromFunction (Set setFunction) vars       = getTableFromSet    setFunction    vars 
getTableFromFunction (Join joinFunction) vars     = getTableFromJoin   joinFunction   vars
getTableFromFunction (Format formatFunction) vars = getTableFromFormat formatFunction vars




-- ================================================================================ --
-- ================================================================================ --
-- ================================== FUNCTIONS =================================== --
-- ================================================================================ --
-- ================================================================================ --



-- ============================== -- 
-- =========== SELECT =========== -- 
-- ============================== -- 


-- getTableFromSelect
        -- @brief:
        -- @params: 
        -- @return:
getTableFromSelect :: SelectFunction -> Vars -> IO Table
getTableFromSelect (SelectAll tableType) vars                      = (getTableFromType tableType vars)
getTableFromSelect (SelectCol cols tableType) vars                 = do 
                                                                        table <- getTableFromType tableType vars
                                                                        let tableCols = (selectTableCols cols table)
                                                                        return tableCols
getTableFromSelect (SelectAllWhere predicates tableType) vars      = do 
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


-- ============================== -- 
-- =========== INSERT =========== -- 
-- ============================== -- 


-- getTableFromInsert
        -- @brief:
        -- @params: 
        -- @return:
getTableFromInsert :: InsertFunction -> Vars -> IO Table
getTableFromInsert (InsertValues vals tableType) vars   = do 
                                                             table <- getTableFromType tableType vars
                                                             return (table ++ [vals])
getTableFromInsert (InsertColumn colNum tableType) vars = do 
                                                             table <- getTableFromType tableType vars
                                                             let insertTable = insertColumnTable colNum table
                                                             return insertTable

-- insertColumnTable
        -- @brief:
        -- @params: The Int is the index of the column in the new table (i.e., input of 1 means new table will have new column at index 1).
        -- @return:
insertColumnTable :: Int -> Table -> Table
insertColumnTable colNum []         = []
insertColumnTable colNum (row:rows) = newRow : (insertColumnTable colNum rows)
        where
                newRow = insertColumnRow colNum row

-- insertColumnRow
        -- @brief:
        -- @params: 
        -- @return:
insertColumnRow :: Int -> Row -> Row
insertColumnRow 0 row               = (""):row
insertColumnRow colNum (cell:cells) = cell : (insertColumnRow (colNum - 1) cells)


-- ============================== -- 
-- =========== DELETE =========== -- 
-- ============================== -- 


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


-- deleteTableCols
        -- @brief:
        -- @params: 
        -- @return:
deleteTableCols :: [Int] -> Table -> Table
deleteTableCols cols []         = []
deleteTableCols cols (row:rows) = newRow : (deleteTableCols cols rows)
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

deleteRowCol :: Int -> Int -> Row -> Row
deleteRowCol col currentcol [] = []
deleteRowCol col currentCol (cell:cells) | col == currentCol = cells
                                         | otherwise = cell : (deleteRowCol col (currentCol + 1) cells)


-- ============================== -- 
-- =========== UPDATE =========== -- 
-- ============================== -- 

-- todo... 

-- getTableFromUpdate
        -- @brief:
        -- @params: 
        -- @return:
getTableFromUpdate :: UpdateFunction -> Vars -> IO Table
getTableFromUpdate (UpdateAll assignments tableType) vars              = do 
                                                                            table <- getTableFromType tableType vars
                                                                            let updateTable = getTableFromUpdateAll assignments table
                                                                            return updateTable
getTableFromUpdate (UpdateWhere assignments predicates tableType) vars = do 
                                                                            table <- getTableFromType tableType vars
                                                                            let updateTable = getTableFromUpdateWhere assignments predicates table
                                                                            return updateTable

-- getTableFromUpdateAll
        -- @brief:
        -- @params: 
        -- @return:
getTableFromUpdateAll :: [Assignment] -> Table -> Table
getTableFromUpdateAll assignments [] = []
getTableFromUpdateAll assignments (row:rows) = updatedRow : getTableFromUpdateAll assignments rows
        where
                updatedRow = getRowFromAssignments assignments row

-- getRowFromAssignment
        -- @brief:
        -- @params: 
        -- @return:v
getTableFromUpdateWhere :: [Assignment] -> [Predicate(ColumnComparison)] -> Table -> Table
getTableFromUpdateWhere assignments predicates table = let 
                                                        tableFromWhere = getTableFromWhere predicates table
                                                       in 
                                                        getTableFromUpdateWhereAux assignments tableFromWhere table

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


-- ============================== -- 
-- ============ WHERE =========== -- 
-- ============================== -- 


-- getTableFromWhere
        -- @brief:
        -- @params: 
        -- @return:
getTableFromWhere :: [Predicate(ColumnComparison)] -> Table ->  Table
getTableFromWhere [] table           = table
getTableFromWhere (pred:preds) table = getTableFromWhere preds (getRowsFromColumnPredicate pred table 0)

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


-- ============================== -- 
-- ============ SETS ============ -- 
-- ============================== -- 


-----------------
-- MAIN METHOD -- 
-----------------

-- getTableFromSet
        -- @brief:
        -- @params: 
        -- @return:
getTableFromSet :: SetFunction -> Vars -> IO Table
getTableFromSet (Union tableType1 tableType2) vars        = do 
                                                               table1 <- getTableFromType tableType1 vars
                                                               table2 <- getTableFromType tableType2 vars
                                                               let unionTable = getTableFromUnion table1 table2
                                                               return unionTable
getTableFromSet (Intersection tableType1 tableType2) vars = do 
                                                               table1 <- getTableFromType tableType1 vars
                                                               table2 <- getTableFromType tableType2 vars
                                                               let intersectionTable = getTableFromIntersection table1 table2
                                                               return intersectionTable
getTableFromSet (Difference tableType1 tableType2) vars   = do 
                                                               table1 <- getTableFromType tableType1 vars
                                                               table2 <- getTableFromType tableType2 vars
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


-- ============================== -- 
-- ============ JOIN ============ -- 
-- ============================== -- 


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
getTableFromJoin :: JoinFunction -> Vars -> IO Table
getTableFromJoin (JoinStandard ltableType rtableType) vars         = do 
                                                                        ltable <- getTableFromType ltableType vars
                                                                        rtable <- getTableFromType rtableType vars
                                                                        let joinTable = getTableFromStandardJoin ltable (getTableWidth ltable) rtable (getTableWidth rtable)
                                                                        return joinTable
getTableFromJoin (JoinInner predicates ltableType rtableType) vars = do 
                                                                        ltable <- getTableFromType ltableType vars
                                                                        rtable <- getTableFromType rtableType vars
                                                                        let joinTable = getTableFromInnerJoin predicates ltable rtable
                                                                        return joinTable
getTableFromJoin (JoinLeft predicates ltableType rtableType) vars = do 
                                                                        ltable <- getTableFromType ltableType vars
                                                                        rtable <- getTableFromType rtableType vars
                                                                        let joinTable = getTableFromLeftJoin predicates ltable rtable
                                                                        return joinTable
getTableFromJoin (JoinRight predicates ltableType rtableType) vars = do 
                                                                        ltable <- getTableFromType ltableType vars
                                                                        rtable <- getTableFromType rtableType vars
                                                                        let joinTable = getTableFromRightJoin predicates ltable rtable
                                                                        return joinTable
getTableFromJoin (JoinOuter predicates ltableType rtableType) vars = do 
                                                                        ltable <- getTableFromType ltableType vars
                                                                        rtable <- getTableFromType rtableType vars
                                                                        let joinTable = getTableFromOuterJoin predicates ltable rtable
                                                                        return joinTable
getTableFromJoin (JoinFull ltableType rtableType) vars             = do 
                                                                        ltable <- getTableFromType ltableType vars
                                                                        rtable <- getTableFromType rtableType vars
                                                                        let joinTable = getTableFromFullJoin ltable rtable
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
getTableFromInnerJoin :: [Predicate(TableComparison)] ->Table -> Table -> Table
getTableFromInnerJoin predicates [] rtable           = []
getTableFromInnerJoin predicates (lrow:lrows) rtable | joinedRows == [] = (getTableFromInnerJoin predicates lrows rtable) -- couldn't find a matching row for the right table, so neither row is included
                                                     | otherwise        = joinedRows ++ (getTableFromInnerJoin predicates lrows rtable)
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
getTableFromLeftJoin predicates [] rtable                               = []
getTableFromLeftJoin predicates (lrow:lrows) rtable | joinedRows == []  = (lrow ++ nullRRow) : (getTableFromLeftJoin predicates lrows rtable) -- couldn't find a matching row for the right table, so using nulls
                                                    | otherwise         = joinedRows ++ (getTableFromLeftJoin predicates lrows rtable)
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
getTableFromRightJoin predicates ltable []                              = []
getTableFromRightJoin predicates ltable (rrow:rrows) | joinedRows == [] = (nullLRow ++ rrow) : (getTableFromRightJoin predicates ltable rrows) -- couldn't find a matching row for the right table, so using nulls
                                                     | otherwise        = joinedRows ++ (getTableFromRightJoin predicates ltable rrows)
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


-- ============================== -- 
-- =========== FORMAT =========== -- 
-- ============================== -- 


-----------------
-- MAIN METHOD -- 
-----------------

-- getTableFromFormat
        -- @brief:
        -- @params: 
        -- @return:
getTableFromFormat :: FormatFunction -> Vars -> IO Table
getTableFromFormat (OrderBy direction tableType) vars         =  do 
                                                                    table <- getTableFromType tableType vars
                                                                    let orderTable = getTableFromOrder direction table 
                                                                    return orderTable
getTableFromFormat (OrderByCol direction cols tableType) vars = do 
                                                                    table <- getTableFromType tableType vars
                                                                    let orderTable = getTableFromOrderCol direction cols table
                                                                    return orderTable
getTableFromFormat (Limit limit tableType) vars               = do
                                                                    table <- getTableFromType tableType vars
                                                                    let limitTable = getTableFromLimit limit table
                                                                    return limitTable
getTableFromFormat (Offset offset tableType) vars             = do
                                                                    table <- getTableFromType tableType vars
                                                                    let offsetTable = getTableFromOffset offset table
                                                                    return offsetTable
getTableFromFormat (Last num tableType) vars                  = do
                                                                    table <- getTableFromType tableType vars
                                                                    let lastTable = getTableFromLast num table
                                                                    return lastTable
getTableFromFormat (Unique tableType) vars                    = do
                                                                    table <- getTableFromType tableType vars
                                                                    let uniqueTable = getTableFromUnique table
                                                                    return uniqueTable 
getTableFromFormat (Transpose tableType) vars                 = do
                                                                    table <- getTableFromType tableType vars
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

-- getTableFromOrderCol
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOrderCol :: Direction -> [Int] -> Table -> Table
getTableFromOrderCol dir [] table | dir == Asc  = sort table
                                  | dir == Desc = reverse (sort table)
getTableFromOrderCol dir (col:cols) table       = getTableFromSortedCol col sortedCol sortedTable
        where
                sortedCol | dir == Asc  = sort((transpose table )!!col)
                          | dir == Desc = reverse (sort((transpose table )!!col))
                sortedTable             = getTableFromOrderCol dir cols table

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
getTableFromLimit 0 table = []
getTableFromLimit limit (row:rows) = row : (getTableFromLimit (limit-1) rows)

------------
-- OFFSET -- 
------------

-- getTableFromOffset
        -- @brief:
        -- @params: 
        -- @return:
getTableFromOffset :: Int -> Table -> Table
getTableFromOffset offset table = drop offset table

----------
-- LAST -- 
----------

-- getTableFromLast
        -- @brief:
        -- @params: 
        -- @return:
getTableFromLast :: Int -> Table -> Table
getTableFromLast lastNum table = drop ((length table) - (lastNum)) table

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




-- ================================================================================ --
-- ================================================================================ --
-- ================================ HELPER METHODS ================================ --
-- ================================================================================ --
-- ================================================================================ --




-- formatTable
        -- @brief:
        -- @params: 
        -- @return:
formatTable :: Table -> Table
formatTable table = let trimmedTable = trimTable table
                    in trimmedTable

-- trimTable
        -- @brief:
        -- @params: 
        -- @return:
trimTable :: Table -> Table
trimTable [] = []
trimTable (row:rows) = (trimRow row) : (trimTable rows)

-- trimRow
        -- @brief:
        -- @params: 
        -- @return:
trimRow :: Row -> Row
trimRow [] = []
trimRow (cell:cells) = trimCell cell : trimRow cells

-- trim
        -- @brief:
        -- @params: 
        -- @return:
trimCell :: String -> String
trimCell = f . f
   where f = reverse . dropWhile isSpace

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
                cells = splitOn ',' row

splitOn :: Char -> String -> [String]
splitOn  target input = splitOnAux target input []

splitOnAux :: Char -> String -> String -> [String]
splitOnAux target [] current           = [current]
splitOnAux target (char:chars) current | char == target = current : splitOnAux target chars []
                                       | otherwise      = splitOnAux target chars (current ++ [char])

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

-- getTableWidth
        -- @brief:
        -- @params: 
        -- @return:
getTableWidth :: Table -> Int
getTableWidth []    = 0
getTableWidth table = length (table!!0) -- CAUSES PROBLEMS WHEN INPUT FILE IS EMPTY

-- getNullRow
        -- @brief:
        -- @params: 
        -- @return:
getNullRow :: Int -> Row
getNullRow 0 = []
getNullRow width = "" : (getNullRow (width-1))


-- interleave
        -- @brief:
        -- @params: 
        -- @return:
interleave :: [a] -> [a] -> [a]
interleave xs ys = concat (zipWith (\x y -> [x]++[y]) xs ys)


-- interleaveAll
        -- @brief:
        -- @params: 
        -- @return:
interleaveAll :: [a] -> [a] -> [a]
interleaveAll xs ys = (interleave xs ys) ++ extraElements
        where
                extraElements | length xs == length ys = []
                              | length xs > length ys = drop (length ys) xs
                              | length xs < length ys = drop (length xs) ys

-- contains
        -- @brief:
        -- @params: 
        -- @return:
contains :: Eq a => a -> [a] -> Bool
contains val [] = False
contains val (x:xs) | x == val    = True
                    | otherwise     = contains val xs


-- ================================================================================ --
-- ================================================================================ --
-- =============================== ERRROR HANDLING  =============================== --
-- ================================================================================ --
-- ================================================================================ --




noLex :: ErrorCall -> IO ()
noLex e = do 
             let err =  show e
             hPutStr stderr ("Problem with parsing : " ++ err)
             return ()


             

-- ================================================================================ --
-- ================================================================================ --
-- =============================== PRINTING TABLES ================================ --
-- ================================================================================ --
-- ================================================================================ --


-- ============================== -- 
-- ======== NORMAL PRINT ======== -- 
-- ============================== -- 


-----------------
-- MAIN METHOD --
-----------------


-- prettyPrint 
        -- @brief:
        -- @params: 
        -- @return:
prettyPrint :: String -> Table -> IO ()
prettyPrint filename result = do
                                 putStrLn("\n")
                                 putStrLn("Running program : " ++ filename)
                                 putStrLn("\n")

                                 putStrLn("Program output : ")
                                 putStrLn("\n")
                                 prettyPrintTable result
                                 putStrLn("\n")

--------------------
-- PRINTING TABLE --
--------------------

-- printTable
        -- @brief:
        -- @params: 
        -- @return:
printTable :: Table -> IO ()
printTable [] = return ()
printTable (r:rs) = do 
                       printRow r
                       putStrLn ""
                       printTable rs 

------------------
-- PRINTING ROW --
------------------

-- printRow
        -- @brief:
        -- @params: 
        -- @return:
printRow :: Row -> IO ()
printRow [] = return ()
printRow (cell:cells) | cells == [] = do 
                                         putStr cell
                                         printRow cells
                      | otherwise   = do 
                                         putStr cell
                                         putStr ","
                                         printRow cells

-- printLines
        -- @brief:
        -- @params: 
        -- @return:
printLines :: [String] -> IO ()
printLines [] = return ()
printLines (l:ls) = do 
                       putStrLn l
                       printLines ls

-- ============================== -- 
-- ======== PRETTY PRINT ======== -- 
-- ============================== -- 

--------------------
-- PRINTING TABLE --
--------------------

-- prettyPrintTable
        -- @brief:
        -- @params: 
        -- @return:
prettyPrintTable :: Table -> IO ()
prettyPrintTable []    = prettyPrintTable [[""]] -- no table (empty file), so printing a one by one tabl
prettyPrintTable table = do
                            let rowLabelledTable = getRowLabelledTable table 0 -- 0 is the index of the current row, which starts at 0
                            let columnLabels = getColumnLabels ((getTableWidth rowLabelledTable) - 2)
                            let columnRowLabelledTable = ("" : columnLabels) : rowLabelledTable
                            let widths = getColumnWidths (transpose columnRowLabelledTable)                                
                            prettyPrintTableAux columnRowLabelledTable widths 

-- prettyPrintTableAux
        -- @brief:
        -- @params: 
        -- @return:
prettyPrintTableAux :: Table -> [Int] -> IO ()
prettyPrintTableAux [] widths = return ()
prettyPrintTableAux (row:rows) widths = do 
                                           prettyPrintRow row widths 0 -- 0 is the index of the current column, which starts at 0

                                           putStrLn ("\t" ++ hSeperator)

                                           prettyPrintTableAux rows widths
        where   
                hSeperator = concat (replicate neededAmount "-")
                neededAmount = allWidths + vSeperators + vSeperatorSpaces
                allWidths = sum widths                  -- width of every column
                vSeperators = (length widths) - 1       -- the number of v seperators in the row (-1 as the row label does not have a v seperator on it's left-hand side)
                vSeperatorSpaces = (length widths) * 2  -- the number of spaces around the v seperators

------------------
-- PRINTING ROW --
------------------

-- prettyPrintRow
        -- @brief:
        -- @params: 
        -- @return:
prettyPrintRow :: Row -> [Int] -> Int -> IO ()
prettyPrintRow (cell:cells) widths currentCol | cells == []     = do 
                                                                     putStr " | "
                                                                     prettyPrintCell cell (widths!!currentCol)
                                                                     putStrLn " | " -- printing seperator onto a new line as this is the final cell
                                              | currentCol == 0 = do 
                                                                     putStr "\t" -- first cell is the row label, so need to tab and not provide seperator
                                                                     prettyPrintCell cell (widths!!currentCol)
                                                                     prettyPrintRow cells widths (currentCol + 1)
                                              | otherwise       = do 
                                                                     putStr " | "
                                                                     prettyPrintCell cell (widths!!currentCol)
                                                                     prettyPrintRow cells widths (currentCol + 1)

-------------------
-- PRINTING CELL --
-------------------

-- prettyPrintCell
        -- @brief:
        -- @params: 
        -- @return:
prettyPrintCell :: String -> Int -> IO ()
prettyPrintCell cell width | length cell < width = putStr formattedCell
                           | otherwise           = putStr cell
        where
                formattedCell = concat (cell : extraSpaces)
                extraSpaces   = replicate (neededSpaces) " "
                neededSpaces  = width - (length cell)

--------------------
-- HELPER METHODS --
--------------------

-- getColumnWidths
        -- @brief:
        -- @params: 
        -- @return:
getColumnWidths :: Table -> [Int]
getColumnWidths []         = []
getColumnWidths (col:cols) = getColumnWidth col : getColumnWidths cols

-- getColumnWidth
        -- @brief:
        -- @params: 
        -- @return:
getColumnWidth :: Column -> Int
getColumnWidth []           = 0
getColumnWidth (cell:cells) = max (length cell) (getColumnWidth cells)

-- getColumnLabels
        -- @brief:
        -- @params: 
        -- @return:                               
getColumnLabels :: Int -> Row
getColumnLabels 0     = ["C0"]
getColumnLabels width = getColumnLabels (width-1) ++ [("C" ++ (show width))]

-- getRowLabelledTable
        -- @brief:
        -- @params: 
        -- @return:
getRowLabelledTable :: Table -> Int -> Table
getRowLabelledTable [] index         = []
getRowLabelledTable (row:rows) index = labelledRow : getRowLabelledTable rows (index + 1)
        where
                labelledRow = ("R" ++ (show index)) : row
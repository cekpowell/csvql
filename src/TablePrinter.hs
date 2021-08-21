module TablePrinter where

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
-- ================================= MAIN METHOD ================================== --
-- ================================================================================ --
-- ================================================================================ --



-- printResult
        -- @brief:
        -- @params: 
        -- @return:
printResult :: String -> Table -> [Configuration] -> IO ()
printResult filename table config = do
                                        -- Performing PrettyPrint if the configuration is present
                                        if (contains PrettyPrint config) 
                                                then prettyPrint filename table
                                        -- Performing normal print if no PrettyPrint configuration
                                        else 
                                                normalPrintTable table




-- ================================================================================ --
-- ================================================================================ --
-- =============================== NORMAL PRINTING ================================ --
-- ================================================================================ --
-- ================================================================================ --


-----------------
-- MAIN METHOD --
-----------------

-- normalPrintTable
        -- @brief:
        -- @params: 
        -- @return:
normalPrintTable :: Table -> IO ()
normalPrintTable []     = return () -- If there is no table, what needs to happen??
normalPrintTable (r:rs) = do 
                                printRow r
                                hPutStrLn stdout ""
                                normalPrintTable rs 

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
                                         hPutStr stdout cell
                                         printRow cells
                      | otherwise   = do 
                                         hPutStr stdout cell
                                         hPutStr stdout ","
                                         printRow cells

-- printLines
        -- @brief:
        -- @params: 
        -- @return:
printLines :: [String] -> IO ()
printLines [] = return ()
printLines (l:ls) = do 
                       hPutStrLn stdout l
                       printLines ls




-- ================================================================================ --
-- ================================================================================ --
-- =============================== PRETTY PRINTING ================================ --
-- ================================================================================ --
-- ================================================================================ --




-----------------
-- MAIN METHOD --
-----------------


-- prettyPrint 
        -- @brief:
        -- @params: 
        -- @return:
prettyPrint :: String -> Table -> IO ()
prettyPrint filename result = do
                                 hPutStrLn stdout ("\n")
                                 hPutStrLn stdout (runningProgramColour)
                                 hPutStrLn stdout ("\n")

                                 hPutStrLn stdout (programOutputColour)
                                 hPutStrLn stdout ("\n")
                                 prettyPrintTable result
                                 hPutStrLn stdout ("\n")
        where 
                runningProgramColour = greenColour ++ "Running program : " ++ "\x1b[33m" ++ filename ++ "\x1b[0m"
                runningProgram       = "Running program : " ++ filename
                programOutputColour  = (greenColour ++ programOutput ++ baseColour)
                programOutput        = "Program output : "
                blueColour           = "\x1b[36m"
                greenColour          = "\x1b[32m"
                baseColour           = "\x1b[0m"

--------------------
-- PRINTING TABLE --
--------------------

-- prettyPrintTable
        -- @brief:
        -- @params: 
        -- @return:
prettyPrintTable :: Table -> IO ()
--prettyPrintTable []    = prettyPrintTable [[""]] -- empty table, so printing a one by one table
prettyPrintTable [[]]  = hPutStrLn stdout colouredEmpty -- printint "EMPTY" if the table is empty
        where
                colouredEmpty = "\t" ++ redColour ++ "EMPTY" ++ baseColour
                redColour = "\x1b[31m"
                baseColour = "\x1b[0m"
prettyPrintTable table = do
                            let rowLabelledTable = getRowLabelledTable table 0 -- 0 is the index of the current row, which starts at 0
                            let columnLabels = getColumnLabels ((getTableWidth rowLabelledTable) - 2)
                            let columnRowLabelledTable = ("" : columnLabels) : rowLabelledTable
                            let widths = getColumnWidths (transpose columnRowLabelledTable)   
                            let colouredTable = colourTable columnRowLabelledTable                             
                            prettyPrintTableAux colouredTable widths 

-- prettyPrintTableAux
        -- @brief:
        -- @params: 
        -- @return:
prettyPrintTableAux :: Table -> [Int] -> IO ()
prettyPrintTableAux [] widths = return ()
prettyPrintTableAux (row:rows) widths = do 
                                           prettyPrintRow row widths 0 -- 0 is the index of the current column, which starts at 0

                                           hPutStrLn stdout ("\t" ++ colouredHSeperator)

                                           prettyPrintTableAux rows widths
        where   
                colouredHSeperator = blueColour ++ hSeperator ++ baseColour
                blueColour         = "\x1b[36m"
                baseColour         = "\x1b[0m"
                hSeperator         = concat (replicate neededAmount "-")
                neededAmount       = allWidths + vSeperators + vSeperatorSpaces
                allWidths          = sum widths                  -- width of every column
                vSeperators        = (length widths) - 1       -- the number of v seperators in the row (-1 as the row label does not have a v seperator on it's left-hand side)
                vSeperatorSpaces   = (length widths) * 2  -- the number of spaces around the v seperators

------------------
-- PRINTING ROW --
------------------

-- prettyPrintRow
        -- @brief:
        -- @params: 
        -- @return:
prettyPrintRow :: Row -> [Int] -> Int -> IO ()
prettyPrintRow (cell:cells) widths currentCol | cells == []     = do 
                                                                     hPutStr stdout colouredVSeperator
                                                                     prettyPrintCell cell (widths!!currentCol)
                                                                     hPutStrLn stdout colouredVSeperator -- printing seperator onto a new line as this is the final cell
                                              | currentCol == 0 = do 
                                                                     hPutStr stdout "\t" -- first cell is the row label, so need to tab and not provide seperator
                                                                     prettyPrintCell cell (widths!!currentCol)
                                                                     prettyPrintRow cells widths (currentCol + 1)
                                              | otherwise       = do 
                                                                     hPutStr stdout colouredVSeperator
                                                                     prettyPrintCell cell (widths!!currentCol)
                                                                     prettyPrintRow cells widths (currentCol + 1)
        where
                colouredVSeperator = blueColour ++ vSeperator ++ baseColour
                blueColour         = "\x1b[36m"
                baseColour         = "\x1b[0m"
                vSeperator         = " | "

-------------------
-- PRINTING CELL --
-------------------

-- prettyPrintCell
        -- @brief:
        -- @params: 
        -- @return:
prettyPrintCell :: String -> Int -> IO ()
prettyPrintCell cell width | cellLength < width = hPutStr stdout formattedCell -- this cell is not the widest cell, so it needs to be formatted to add extra spaces
                           | otherwise          = hPutStr stdout cell          -- this cell is the widest cell in the column, so it can just be printed without formatting
        where
                formattedCell = concat (cell : extraSpaces)
                extraSpaces   = replicate (neededSpaces) " "
                neededSpaces  = width - cellLength
                cellLength    = length cell - 5 -- (-5) as taking into account the colour that has been added to each cell (which is 5 characters long after ignoring excaped characters?)

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


---------------------
-- COLOURING TABLE --
---------------------


-- colourTable
        -- @brief:
        -- @params: 
        -- @return:
colourTable :: Table -> Table
colourTable table = colourTableAux table 0

-- colourTableAux
        -- @brief:
        -- @params: 
        -- @return:
colourTableAux :: Table -> Int -> Table
colourTableAux [] rowNum         = []
colourTableAux (row:rows) 0      = (colourColumnRow row) : colourTableAux rows 1
colourTableAux (row:rows) rowNum = (colourRow row 0) : colourTableAux rows (rowNum + 1)

-- colourColumnRow
        -- @brief:
        -- @params: 
        -- @return:
colourColumnRow :: Row -> Row
colourColumnRow []           = []
colourColumnRow (cell:cells) = (colourCell cell columnLabelColour) : (colourColumnRow cells)
        where 
                columnLabelColour = "\x1b[35m"
-- colourRow
        -- @brief:
        -- @params: 
        -- @return:
colourRow :: Row -> Int -> Row
colourRow [] rowNum           = []
colourRow (cell:cells) 0      = (colourCell cell rowLabelColour) :  (colourRow cells 1)
        where
                rowLabelColour = "\x1b[35m"
colourRow (cell:cells) rowNum = (colourCell cell cellColour) : (colourRow cells (rowNum+1))
        where
                cellColour     =  "\x1b[33m"

-- colourCell
        -- @brief:
        -- @params: 
        -- @return:
colourCell :: Cell -> String -> Cell
colourCell cell colour = colour ++ cell
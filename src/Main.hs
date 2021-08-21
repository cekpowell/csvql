module Main where

-----------------------
-- IMPORT STATEMENTS -- 
-----------------------

-- Library Imports -- 
import System.Environment
import Control.Exception
import System.IO ( hPutStr, stdout, stderr, hPutStrLn )
import Data.List ( intercalate, transpose, nub, sort, (\\) )
import Data.Char (isSpace) 
import Data.List.Split

-- Local Imports -- 
import Tokens
import Grammar
import Types
import Evaluator
import TablePrinter
import ErrorHandler
import Helper




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
main = catch mainAux executionError 

-- mainAux
        -- @brief:
        -- @params: 
        -- @return:
mainAux :: IO ()
mainAux = do 
             -- Loading Program -- 
             (programName : _ ) <- getArgs -- name of program being run
             sourceText <- myReadFile programName -- reading in the program

             if sourceText == "error" then
                     error ("No such program '" ++ programName ++ "' exists.@")
             else
                     do
                        -- Lexing and Parsing -- 
                        let tokens = alexScanTokens sourceText -- lexing the program (converting into tokens)
                        let program = parseCalc tokens -- parsing the program (converting into Haskell objects)

                        -- Gathering Configuration + Expression -- 
                        let config = getConfiguration program
                        let exp = getExp program

                        -- Evaluating Program -- 
                        result <- eval exp [] config

                        -- Outputting Result -- 
                        printResult programName result config


-- getConfiguration 
        -- @brief:
        -- @params: 
        -- @return:
getConfiguration :: Program -> [Configuration]
getConfiguration (SetupProgram c exp)      = c
getConfiguration (Program exp)             = []

-- getExp 
        -- @brief:
        -- @params: 
        -- @return:
getExp :: Program -> Exp
getExp (SetupProgram configuration exp) = exp
getExp (Program exp)                    = exp
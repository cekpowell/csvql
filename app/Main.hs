module Main where

import Lib ()
import CQLTokens
import CQLGrammar
import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = catch main' noLex -- catch ==>> {catch <function to try run> <function to run if error occurs>}

main' = do
        (filename : _ ) <- getArgs
        sourceText <- readFile filename
        let tokens = alexScanTokens sourceText
        putStrLn ("Lexed as : " ++ (show tokens))
        let exp = parseCalc tokens
        putStrLn ("Parsed as : " ++ (show exp))
        eval exp

-- Current eval outputs contents of a file to console
eval :: Exp -> IO()
eval (LET varName filename) = do   
                                sourceText <- readFile filename     
                                putStrLn sourceText
                                

noLex :: ErrorCall -> IO ()
noLex e = do 
             let err =  show e
             hPutStr stderr ("Problem with parsing : " ++ err)
             return ()
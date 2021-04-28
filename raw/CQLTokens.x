{ 
module CQLTokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+    ; 
  "--".*     ; 
  READ          { \p s -> TokenRead p } 
  LET           { \p s -> TokenLet p }
  "="           { \p s -> TokenEquals p }
  \"[$alpha $white \_ \' $digit]*.[$alpha $white \_ \' $digit]*\" { \p s -> TokenFilename p (read s) }
  \"[$alpha $white \_ \' $digit]*\"    { \p s -> TokenStr p (read s) }
  $alpha [$alpha \_ $digit]*           { \p s -> TokenVar p s }


{ 
-- Each action has type :: String -> CQLToken 
-- The token type: 
data CQLToken = TokenRead AlexPosn 
              | TokenLet AlexPosn
              | TokenEquals AlexPosn
              | TokenFilename AlexPosn String
              | TokenStr AlexPosn String
              | TokenVar AlexPosn String
                deriving (Eq,Show) 

tokenPosn :: CQLToken -> String
tokenPosn (TokenRead (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEquals (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFilename (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenStr (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}
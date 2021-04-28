{ 
module MDLTokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+    ; 
  "--".*     ; 
  if          { \p s -> TokenIf p } 
  then        { \p s -> TokenThen p }
  else        { \p s -> TokenElse p }
  forward     { \p s -> TokenForward p }
  rotate      { \p s -> TokenRotate p }
  prox        { \p s -> TokenProx p }
  left        { \p s -> TokenLeft p }
  right       { \p s -> TokenRight p }
  [1-9]       { \p s -> TokenDigit p (read s) }
  $digit+     { \p s -> TokenInt p (read s) } 
  \(          { \p s -> TokenLParen p }
  \)          { \p s -> TokenRParen p }
  \;          { \p s -> TokenSeq p }

{ 
-- Each action has type :: String -> MDLToken 
-- The token type: 
data MDLToken = 
  TokenIf AlexPosn          | 
  TokenThen AlexPosn        | 
  TokenElse AlexPosn        |
  TokenForward AlexPosn     | 
  TokenRotate AlexPosn      |
  TokenProx AlexPosn        |
  TokenLeft AlexPosn        |
  TokenRight AlexPosn       |
  TokenDigit AlexPosn Int   |
  TokenInt AlexPosn Int     |
  TokenLParen AlexPosn      |
  TokenRParen AlexPosn      |
  TokenSeq AlexPosn
  deriving (Eq,Show) 

tokenPosn :: MDLToken -> String
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenForward  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRotate  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenProx (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLeft (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRight (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDigit (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSeq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

}
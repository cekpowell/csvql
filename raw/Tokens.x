{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+              ; 
  "--".*             ; 
  "--/" [.\n]* "/--" ;
  READ          { \p s -> TokenRead p } 
  LET           { \p s -> TokenLet p }
  RETURN        { \p s -> TokenReturn p }
  SELECT        { \p s -> TokenSelect p }
  INSERT        { \p s -> TokenInsert p }
  VALUES        { \p s -> TokenValues p }
  COLUMN        { \p s -> TokenColumn p }
  DELETE        { \p s -> TokenDelete p }
  WHERE         { \p s -> TokenWhere p }
  NOT           { \p s -> TokenNot p }
  AND           { \p s -> TokenAnd p }
  OR            { \p s -> TokenOr p }
  UPDATE        { \p s -> TokenUpdate p }
  SET           { \p s -> TokenSet p }
  UNION         { \p s -> TokenUnion p }
  ALL           { \p s -> TokenAll p }
  INTERSECTION  { \p s -> TokenIntersection p }
  DIFFERENCE    { \p s -> TokenDifference p }
  JOIN          { \p s -> TokenJoin p }
  INNER         { \p s -> TokenInner p }
  LEFT          { \p s -> TokenLeft p }
  RIGHT         { \p s -> TokenRight p }
  OUTER         { \p s -> TokenOuter p }
  FULL          { \p s -> TokenFull p }
  ON            { \p s -> TokenOn p }
  ORDER         { \p s -> TokenOrder p }
  BY            { \p s -> TokenBy p }
  ASC           { \p s -> TokenAsc p }
  DESC          { \p s -> TokenDesc p }
  LIMIT         { \p s -> TokenLimit p }
  OFFSET        { \p s -> TokenOffset p }
  LAST          { \p s -> TokenLast p }
  UNIQUE        { \p s -> TokenUnique p }
  TRANSPOSE     { \p s -> TokenTranspose p }
  "="           { \p s -> TokenAssign p }
  "=="          { \p s -> TokenEq p }
  "<"           { \p s -> TokenLessThan p }
  ">"           { \p s -> TokenGreaterThan p }
  "<="          { \p s -> TokenLessThanEq p }
  ">="          { \p s -> TokenGreaterThanEq p }
  "!="          { \p s -> TokenNotEq p }
  ";"           { \p s -> TokenSep p }
  "["           { \p s -> TokenLSquare p }
  "]"           { \p s -> TokenRSquare p }
  ","           { \p s -> TokenComma p }
  "."           { \p s -> TokenDot p }
  "*"           { \p s -> TokenAst p }
  "@"           { \p s -> TokenAt p } 
  "("           { \p s -> TokenLParen p }
  ")"           { \p s -> TokenRParen p }
  [$digit]+     { \p s -> TokenInt p (read s)}
  \"[$alpha $white \_ \' $digit]* \. [$alpha $white \_ \' $digit]*\" { \p s -> TokenFilename p (read s) }
  \"[$alpha $white \_ \' $digit]*\"    { \p s -> TokenStr p (read s) }
  $alpha [$alpha \_ $digit]*           { \p s -> TokenVar p s }

{ 
-- Each action has type :: String -> Token 
-- The token type: 
data Token = TokenRead AlexPosn 
              | TokenLet AlexPosn
              | TokenReturn AlexPosn

              | TokenSelect AlexPosn

              | TokenInsert AlexPosn
              | TokenValues AlexPosn
              | TokenColumn AlexPosn

              | TokenDelete AlexPosn

              | TokenWhere AlexPosn
              | TokenNot AlexPosn
              | TokenAnd AlexPosn
              | TokenOr AlexPosn 

              | TokenUpdate AlexPosn
              | TokenSet AlexPosn

              | TokenUnion AlexPosn
              | TokenAll AlexPosn
              | TokenIntersection AlexPosn
              | TokenDifference AlexPosn

              | TokenJoin AlexPosn
              | TokenInner AlexPosn
              | TokenLeft AlexPosn
              | TokenRight AlexPosn
              | TokenOuter AlexPosn
              | TokenFull AlexPosn
              | TokenOn AlexPosn

              | TokenOrder AlexPosn
              | TokenBy AlexPosn
              | TokenAsc AlexPosn
              | TokenDesc AlexPosn
              | TokenLimit AlexPosn
              | TokenOffset AlexPosn
              | TokenLast AlexPosn
              | TokenUnique AlexPosn
              | TokenTranspose AlexPosn

              | TokenAssign AlexPosn

              | TokenEq AlexPosn
              | TokenLessThan AlexPosn
              | TokenGreaterThan AlexPosn
              | TokenLessThanEq AlexPosn
              | TokenGreaterThanEq AlexPosn
              | TokenNotEq AlexPosn

              | TokenSep AlexPosn
              | TokenLSquare AlexPosn
              | TokenRSquare AlexPosn
              | TokenComma AlexPosn
              | TokenDot AlexPosn
              | TokenAst AlexPosn
              | TokenAt AlexPosn
              | TokenLParen AlexPosn
              | TokenRParen AlexPosn

              | TokenInt AlexPosn Int
              | TokenFilename AlexPosn String
              | TokenStr AlexPosn String
              | TokenVar AlexPosn String
                deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenRead (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReturn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenSelect (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenInsert (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenValues (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenColumn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenDelete (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenWhere (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenUpdate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenUnion (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAll (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIntersection (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDifference (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenJoin (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInner (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLeft (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRight (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOuter (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFull (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenOrder (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBy (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAsc (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDesc (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLimit (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOffset (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLast (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenUnique (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTranspose (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenAssign (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessThan (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGreaterThan (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessThanEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGreaterThanEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNotEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenSep (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAst (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFilename (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenStr (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}
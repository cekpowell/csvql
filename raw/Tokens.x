{ 
module Tokens where 
}




-- ================================================================================ --
-- ================================================================================ --
-- ================================= TOKEN STRINGS ================================ --
-- ================================================================================ --
-- ================================================================================ --




%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
  $white+            ; 

  --------------
  -- COMMENTS --
  --------------
  
  "--".*             ; 
  --/ [. \n]* /--    ;

  -----------------
  -- EXPRESSIONS --
  -----------------

  SETUP         { \p s -> TokenSetup p }
  PRETTYPRINT   { \p s -> TokenPrettyPrint p }
  READ          { \p s -> TokenRead p } 
  LET           { \p s -> TokenLet p }
  RETURN        { \p s -> TokenReturn p }

  ---------------
  -- FUNCTIONS --
  ---------------

  SELECT        { \p s -> TokenSelect p }
  FROM          { \p s -> TokenFrom p }
  INSERT        { \p s -> TokenInsert p }
  INTO          { \p s -> TokenInto p }
  VALUES        { \p s -> TokenValues p }
  COLUMN        { \p s -> TokenColumn p }
  DELETE        { \p s -> TokenDelete p }
  WHERE         { \p s -> TokenWhere p }
  NOT           { \p s -> TokenNot p }
  AND           { \p s -> TokenAnd p }
  OR            { \p s -> TokenOr p }
  INDEX         { \p s -> TokenIndex p }
  UPDATE        { \p s -> TokenUpdate p }
  TO            { \p s -> TokenTo p }
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
  IN            { \p s -> TokenIn p }
  BY            { \p s -> TokenBy p }
  ASC           { \p s -> TokenAsc p }
  DESC          { \p s -> TokenDesc p }
  LIMIT         { \p s -> TokenLimit p }
  OFFSET        { \p s -> TokenOffset p }
  LAST          { \p s -> TokenLast p }
  UNIQUE        { \p s -> TokenUnique p }
  TRANSPOSE     { \p s -> TokenTranspose p }

  ---------------------
  -- SPECIAL SYMBOLS -- 
  ---------------------

  ";"           { \p s -> TokenSep p }
  ","           { \p s -> TokenComma p }
  "."           { \p s -> TokenDot p }
  "@"           { \p s -> TokenAt p } 
  "="           { \p s -> TokenAssign p }

  ---------------------
  -- MATHS OPERATORS --
  ---------------------

  "+"           { \p s -> TokenAdd p }
  "-"           { \p s -> TokenSubtract p }
  "*"           { \p s -> TokenAst p }
  "/"           { \p s -> TokenDivide p }
  "%"           { \p s -> TokenModulo p }

  --------------------------
  -- COMPARISON OPERATORS --
  -------------------------- 

  "=="          { \p s -> TokenEq p }
  "<"           { \p s -> TokenLessThan p }
  ">"           { \p s -> TokenGreaterThan p }
  "<="          { \p s -> TokenLessThanEq p }
  ">="          { \p s -> TokenGreaterThanEq p }
  "!="          { \p s -> TokenNotEq p }

  -----------------
  -- PARENTHESIS --
  -----------------

  "("           { \p s -> TokenLParen p }
  ")"           { \p s -> TokenRParen p }
  "["           { \p s -> TokenLParenSquare p }
  "]"           { \p s -> TokenRParenSquare p }
  "{"           { \p s -> TokenLParenCurly p }
  "}"          {  \p s -> TokenRParenCurly p }

  --------------
  -- PATTERNS --
  --------------

  [$digit]+                                                          { \p s -> TokenInt p (read s)}
  \"[$alpha $white \_ \' $digit]* \. [$alpha $white \_ \' $digit]*\" { \p s -> TokenFilename p (read s) }
  \"[$alpha $white \_ \' $digit]*\"                                  { \p s -> TokenStr p (read s) }
  $alpha [$alpha \_ $digit]*                                         { \p s -> TokenVar p s }




-- ================================================================================ --
-- ================================================================================ --
-- ================================= TOKEN TYPES ================================== --
-- ================================================================================ --
-- ================================================================================ --




{ 
data Token = 
                -----------------
                -- EXPRESSIONS --
                -----------------

                TokenSetup AlexPosn
              | TokenPrettyPrint AlexPosn
              | TokenRead AlexPosn 
              | TokenLet AlexPosn
              | TokenReturn AlexPosn

                ---------------
                -- FUNCTIONS --
                ---------------

                -- SELECT -- 

              | TokenSelect AlexPosn
              | TokenFrom AlexPosn

                -- INSERT -- 

              | TokenInsert AlexPosn
              | TokenInto AlexPosn
              | TokenValues AlexPosn
              | TokenColumn AlexPosn

                -- DELETE --

              | TokenDelete AlexPosn

                -- WHERE -- 

              | TokenWhere AlexPosn
              | TokenNot AlexPosn
              | TokenAnd AlexPosn
              | TokenOr AlexPosn 
              | TokenIndex AlexPosn

                -- UPDATE -- 

              | TokenUpdate AlexPosn
              | TokenTo AlexPosn

                -- SET OPERATIONS -- 

              | TokenSet AlexPosn
              | TokenUnion AlexPosn
              | TokenAll AlexPosn
              | TokenIntersection AlexPosn
              | TokenDifference AlexPosn

                -- JOIN --

              | TokenJoin AlexPosn
              | TokenInner AlexPosn
              | TokenLeft AlexPosn
              | TokenRight AlexPosn
              | TokenOuter AlexPosn
              | TokenFull AlexPosn
              | TokenOn AlexPosn

                -- FORMAT -- 

              | TokenOrder AlexPosn
              | TokenIn AlexPosn
              | TokenBy AlexPosn
              | TokenAsc AlexPosn
              | TokenDesc AlexPosn
              | TokenLimit AlexPosn
              | TokenOffset AlexPosn
              | TokenLast AlexPosn
              | TokenUnique AlexPosn
              | TokenTranspose AlexPosn

                ---------------------
                -- SPECIAL SYMBOLS -- 
                ---------------------

              | TokenSep AlexPosn
              | TokenComma AlexPosn
              | TokenDot AlexPosn
              | TokenAt AlexPosn
              | TokenAssign AlexPosn

                ---------------------
                -- MATHS OPERATORS --
                ---------------------

              | TokenAdd AlexPosn
              | TokenSubtract AlexPosn
              | TokenAst AlexPosn
              | TokenDivide AlexPosn
              | TokenModulo AlexPosn

                --------------------------
                -- COMPARISON OPERATORS --
                -------------------------- 

              | TokenEq AlexPosn
              | TokenLessThan AlexPosn
              | TokenGreaterThan AlexPosn
              | TokenLessThanEq AlexPosn
              | TokenGreaterThanEq AlexPosn
              | TokenNotEq AlexPosn

                -----------------
                -- PARENTHESIS --
                -----------------

              | TokenLParen AlexPosn
              | TokenRParen AlexPosn
              | TokenLParenSquare AlexPosn
              | TokenRParenSquare AlexPosn
              | TokenLParenCurly AlexPosn
              | TokenRParenCurly AlexPosn

                --------------
                -- PATTERNS --
                --------------

              | TokenInt AlexPosn Int
              | TokenFilename AlexPosn String
              | TokenStr AlexPosn String
              | TokenVar AlexPosn String
                deriving (Eq,Show) 




-- ================================================================================ --
-- ================================================================================ --
-- ================================ TOKEN POSITION ================================ --
-- ================================================================================ --
-- ================================================================================ --




tokenPosn :: Token -> String

-----------------
-- EXPRESSIONS --
-----------------

tokenPosn (TokenSetup (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrettyPrint (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRead (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReturn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

---------------
-- FUNCTIONS --
---------------

tokenPosn (TokenSelect (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFrom (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenInsert (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInto (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenValues (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenColumn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenDelete (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenWhere (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIndex (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenUpdate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTo (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

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
tokenPosn (TokenIn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBy (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAsc (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDesc (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLimit (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOffset (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLast (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenUnique (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTranspose (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

---------------------
-- SPECIAL SYMBOLS -- 
---------------------

tokenPosn (TokenSep (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAssign (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

---------------------
-- MATHS OPERATORS --
---------------------

tokenPosn (TokenAdd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSubtract (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAst (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDivide (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

--------------------------
-- COMPARISON OPERATORS --
-------------------------- 

tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessThan (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGreaterThan (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessThanEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGreaterThanEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNotEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

-----------------
-- PARENTHESIS --
-----------------

tokenPosn (TokenModulo (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParenSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParenSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParenCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParenCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

--------------
-- PATTERNS --
--------------

tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFilename (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenStr (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}
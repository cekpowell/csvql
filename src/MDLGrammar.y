{ 
module MDLGrammar where 
import MDLTokens 
}

%name parseCalc 
%tokentype { MDLToken } 
%error { parseError }
%token 
    If       { TokenIf _ }
    Then     { TokenThen _ }
    Else     { TokenElse _ }  
    Forward  { TokenForward _ }
    Rotate   { TokenRotate _ }
    Prox     { TokenProx _ }
    Left     { TokenLeft _ }
    Right    { TokenRight _ }
    digit    { TokenDigit _ $$ }
    int      { TokenInt _ $$ } 
    '('      { TokenLParen _ }
    ')'      { TokenRParen _ }
    ';'      { TokenSeq _ }

%right Then
%right Else
%right ';'
%left 'Forward' 
%left 'Rotate'
%% 
Exp : Forward int     { Forward $2 }
    | Forward digit   { Forward $2 }
    | Rotate Dir      { Rotate $2 }
    | Prox digit      { Prox $2 }
    | If Exp Then Exp Else Exp { If $2 $4 $6 }
    | Exp ';' Exp     { Seq $1 $3 }
    | '(' Exp ')'     { $2 }
    | Exp ';'         { $1 }

Dir : Left { LeftDir }
    | Right { RightDir }
    
{ 
parseError :: [MDLToken] -> a
parseError [] = error "Unknown parse error"
parseError (t:ts) = error ("Error at line:column  " ++ (tokenPosn t))
data Dir = LeftDir 
         | RightDir
         deriving Show
data Exp = Forward Int
         | Rotate Dir
         | Prox Int
         | If Exp Exp Exp
         | Seq Exp Exp
         deriving Show
}
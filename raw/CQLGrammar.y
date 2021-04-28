{ 
module CQLGrammar where 
import CQLTokens 
}

%name parseCalc 
%tokentype { CQLToken } 
%error { parseError }
%token 
    READ     { TokenRead _ } 
    LET      { TokenLet _ }
    '='      { TokenEquals _ }
    Filename { TokenFilename _ $$ }
    Str      { TokenStr _ $$ }
    Var      { TokenVar _ $$ }


%% 
Exp : LET Var '=' READ Filename { LET $2 $5 }
    
{ 
parseError :: [CQLToken] -> a
parseError [] = error "Unknown parse error"
parseError (t:ts) = error ("Error at line:column  " ++ (tokenPosn t))
data Exp = LET String String
           deriving Show
}
{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    Read     { TokenRead _ } 
    Let      { TokenLet _ }
    Return   { TokenReturn _ }
    Select   { TokenSelect _ }
    Delete   { TokenDelete _ }
    Where    { TokenWhere _ }
    Not      { TokenNot _ }
    And      { TokenAnd _ }
    Or       { TokenOr _ }
    '='      { TokenAssign _ }
    "=="     { TokenEq _ }
    "<"      { TokenLessThan _ }
    ">"      { TokenGreaterThan _ }
    "<="     { TokenLessThanEq _ }
    ">="     { TokenGreaterThanEq _ }
    "!="     { TokenNotEq _ }
    ';'      { TokenSep _ }
    '['      { TokenLSquare _ }
    ']'      { TokenRSquare _ }
    ','      { TokenComma _ }     
    '*'      { TokenAst _ } 
    "@"      { TokenAt _ } 
    int      { TokenInt  _ $$ }
    Filename { TokenFilename _ $$ }
    Str      { TokenStr _ $$ }
    Var      { TokenVar _ $$ }


%% 
Exp : Let Var '=' TableType ';' Exp     { Let $2 $4 $6 }
    | Return TableType ';'              { Return $2 }
  
TableType : Read Filename { Read $2 }
          | Var { Var $1 }
          | FunctionTable { Function $1 }

FunctionTable : SelectTable { Select $1 }
              | DeleteTable { Delete $1 }

SelectTable : Select '*' TableType { SelectAll $3 }
            | Select List TableType { SelectCol $2 $3 }
            | Select '*' TableType Where Conditions { SelectAllWhere $3 $5 }
            | Select List TableType Where Conditions { SelectColWhere $2 $3 $5 }

DeleteTable : Delete TableType { DeleteAll $2}
            | Delete List TableType { DeleteCol $2 $3 }
            | Delete TableType Where Conditions { DeleteAllWhere $2 $4 }

List : '[' ']'       { [] }
     | '[' ListCont ']'  { $2 }
ListCont : int           { [$1] }
         | int ',' ListCont  { [$1] ++ $3}

Conditions : '[' ']' {[]}
           | '[' ConditionsCont ']'  { $2 }
ConditionsCont : Predicate                      { [$1] }
                | Predicate ',' ConditionsCont  { [$1] ++ $3}

Predicate : Not Predicate  { Not $2 }
          | Predicate And Predicate { And $1 $3 }
          | Predicate Or Predicate { Or $1 $3  }
          | Comparison     { Comparison $1}

Comparison : "@" int ComparisonOperator Str      { ColVal $2 $3 $4 }
           | "@" int ComparisonOperator "@" int  { ColCol $2 $3 $5 }

ComparisonOperator : "==" { Eq } 
                   | "<"  { LessThan }
                   | ">"  { GreaterThan }
                   | "<=" { LessThanEq }
                   | ">=" { GreaterThanEq }
                   | "!=" { NotEq }

    
{ 
parseError :: [Token] -> a
parseError [] = error "Unknown parse error"
parseError (t:ts) = error ("Error at line:column  " ++ (tokenPosn t))

data Exp = Let String TableType Exp
         | Return TableType
           deriving (Show, Eq)

data TableType = Read String
               | Var String
               | Function FunctionTable
                 deriving (Show, Eq)

data FunctionTable = Select SelectTable
                   | Delete DeleteTable
                     deriving (Show, Eq)

data SelectTable = SelectAll TableType
                 | SelectCol [Int] TableType
                 | SelectAllWhere TableType [Predicate]
                 | SelectColWhere [Int] TableType [Predicate]
                   deriving (Show, Eq)

data DeleteTable = DeleteAll TableType
                 | DeleteCol [Int] TableType
                 | DeleteAllWhere TableType [Predicate]
                   deriving (Show, Eq)

data Predicate = Not Predicate 
               | And Predicate Predicate
               | Or Predicate Predicate
               | Comparison ComparisonType 
                 deriving (Show, Eq)

data ComparisonType = ColVal Int ComparisonOperator String
                    | ColCol Int ComparisonOperator Int
                      deriving (Show, Eq)

data ComparisonOperator = Eq 
                        | LessThan
                        | GreaterThan
                        | LessThanEq
                        | GreaterThanEq 
                        | NotEq 
                          deriving (Show, Eq)

}
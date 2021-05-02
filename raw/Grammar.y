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
    Insert   { TokenInsert _ }
    Values   { TokenValues _ }
    Column   { TokenColumn _ }
    Delete   { TokenDelete _ }
    Where    { TokenWhere _ }
    Not      { TokenNot _ }
    And      { TokenAnd _ }
    Or       { TokenOr _ }
    Union    { TokenUnion _ }
    All      { TokenAll _ }
    Join     { TokenJoin _ }
    Inner    { TokenInner _ }
    Left     { TokenLeft _ }
    Right    { TokenRight _ }
    Outer    { TokenOuter _ }
    Full     { TokenFull _ }
    On       { TokenOn _ }
    Order    { TokenOrder _ }
    By       { TokenBy _ }
    Asc      { TokenAsc _ }
    Desc     { TokenDesc _ }
    Limit    { TokenLimit _ }
    Offset   { TokenOffset _ }
    Last     { TokenLast _ }
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
    '.'      { TokenDot _ }
    '*'      { TokenAst _ } 
    "@"      { TokenAt _ } 
    '('      { TokenLParen _ }
    ')'      { TokenRParen _ }
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
          | '(' TableType ')' { $2 }

FunctionTable : SelectFunction { Select $1 }
              | InsertFunction { Insert $1 }
              | DeleteFunction { Delete $1 }
              | UnionFunction  { Union $1 }
              | JoinFunction   { Join $1 }
              | FormatFunction { Format $1 }

SelectFunction : Select '*' TableType { SelectAll $3 }
               | Select List(ColumnRef) TableType { SelectCol $2 $3 }
               | Select '*' Where List(Predicate) TableType { SelectAllWhere $4 $5 }
               | Select List(ColumnRef) Where List(Predicate) TableType { SelectColWhere $2 $4 $5 }

DeleteFunction : Delete TableType { DeleteAll $2}
               | Delete List(ColumnRef) TableType { DeleteCol $2 $3 }
               | Delete Where List(Predicate) TableType { DeleteAllWhere $3 $4 }

InsertFunction : Insert Values List(Str) TableType { InsertValues $3 $4 }
               | Insert ColumnRef int Str TableType { InsertColumn $3 $4 $5}

UnionFunction : Union TableType TableType { UnionUnique $2 $3 }
              | Union All TableType TableType { UnionAll $3 $4 }

JoinFunction : Join Inner On TableComparison TableType TableType { JoinInner $4 $5 $6 }
             | Join Left On TableComparison TableType TableType { JoinLeft $4 $5 $6 }
             | Join Right On TableComparison TableType TableType { JoinRight $4 $5 $6 }
             | Join Outer On TableComparison TableType TableType { JoinOuter $4 $5 $6 }

TableComparison : Left '.' ColumnRef "==" Right '.' ColumnRef { TableComparison $3 $7 }

TableColumnRef : Var '.' ColumnRef { TableColumnRef $1 $3 }
               
FormatFunction: Order By Direction TableType { OrderBy $3 $4 }
              | Order By List(ColumnRef) Direction TableType { OrderByCol $3 $4 $5 }
              | Limit int TableType { Limit $2 $3 }
              | Offset int TableType { Offset $2 $3 }
              | Last int TableType { Last $2 $3 }

Direction : Asc { Asc }
          | Desc { Desc }

List (a) : '[' ']'       { [] }
         | '[' ListCont (a) ']'  { $2 }
ListCont (a) : a           { [$1] }
             | a ',' ListCont (a)  { [$1] ++ $3}

Predicate : Not Predicate  { Not $2 }
          | Predicate And Predicate { And $1 $3 }
          | Predicate Or Predicate { Or $1 $3  }
          | Comparison     { Comparison $1}

Comparison : ColumnRef ComparisonOperator Str      { ColVal $1 $2 $3 }
           | ColumnRef ComparisonOperator ColumnRef  { ColCol $1 $2 $3 }

ColumnRef : "@" int { $2 }

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

data Direction = Asc
               | Desc
                 deriving (Show,Eq)

data FunctionTable = Select SelectFunction
                   | Insert InsertFunction
                   | Delete DeleteFunction
                   | Union UnionFunction
                   | Join JoinFunction
                   | Format FormatFunction
                     deriving (Show, Eq)

data SelectFunction = SelectAll TableType
                    | SelectCol [Int] TableType
                    | SelectAllWhere [Predicate] TableType
                    | SelectColWhere [Int] [Predicate] TableType
                      deriving (Show, Eq)

data DeleteFunction = DeleteAll TableType
                    | DeleteCol [Int] TableType
                    | DeleteAllWhere [Predicate] TableType
                      deriving (Show, Eq)

data InsertFunction = InsertValues [String] TableType
                    | InsertColumn Int String TableType
                      deriving (Show, Eq)

data UnionFunction = UnionUnique TableType TableType
                   | UnionAll TableType TableType 
                     deriving (Show, Eq)

data JoinFunction = JoinInner TableComparison TableType TableType 
                  | JoinLeft TableComparison TableType TableType 
                  | JoinRight TableComparison TableType TableType 
                  | JoinOuter TableComparison TableType TableType 
                    deriving (Show, Eq)

data TableComparison = TableComparison Int Int
                       deriving (Show, Eq)

data TableColumnRef = TableColumnRef String Int
                      deriving (Show, Eq)

data FormatFunction = OrderBy Direction TableType
                    | OrderByCol [Int] Direction TableType
                    | Limit Int TableType
                    | Offset Int TableType
                    | Last Int TableType
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
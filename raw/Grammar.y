{ 
module Grammar where 
import Tokens 
}




-- ================================================================================ --
-- ================================================================================ --
-- ================================= TOKEN MATCHES ================================ --
-- ================================================================================ --
-- ================================================================================ --




%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 

    -----------------
    -- EXPRESSIONS --
    -----------------

    Setup        { TokenSetup _ }
    PrettyPrint  { TokenPrettyPrint _ }
    Read         { TokenRead _ } 
    Let          { TokenLet _ }
    Return       { TokenReturn _ }

    ---------------
    -- FUNCTIONS --
    ---------------

    Select       { TokenSelect _ }
    Insert       { TokenInsert _ }
    Values       { TokenValues _ }
    Column       { TokenColumn _ }
    Delete       { TokenDelete _ }
    Where        { TokenWhere _ }
    Not          { TokenNot _ }
    And          { TokenAnd _ }
    Or           { TokenOr _ }
    Index        { TokenIndex _ }
    Update       { TokenUpdate _ }
    Set          { TokenSet _ }
    Union        { TokenUnion _ }
    All          { TokenAll _ }
    Intersection { TokenIntersection _ }
    Difference   { TokenDifference _ }
    Join         { TokenJoin _ }
    Inner        { TokenInner _ }
    Left         { TokenLeft _ }
    Right        { TokenRight _ }
    Outer        { TokenOuter _ }
    Full         { TokenFull _ }
    On           { TokenOn _ }
    Order        { TokenOrder _ }
    By           { TokenBy _ }
    Asc          { TokenAsc _ }
    Desc         { TokenDesc _ }
    Limit        { TokenLimit _ }
    Offset       { TokenOffset _ }
    Last         { TokenLast _ }
    Unique       { TokenUnique _ }
    Transpose    { TokenTranspose _ }

    ---------------------
    -- SPECIAL SYMBOLS -- 
    ---------------------

    ';'          { TokenSep _ }
    ','          { TokenComma _ }     
    '.'          { TokenDot _ }
    "@"          { TokenAt _ } 
    '='          { TokenAssign _ }

    ---------------------
    -- MATHS OPERATORS --
    ---------------------

    '+'          { TokenAdd _ }
    '-'          { TokenSubtract _ }
    '*'          { TokenAst _ } 
    "/"          { TokenDivide _ }
    '%'          { TokenModulo _ }

    --------------------------
    -- COMPARISON OPERATORS --
    -------------------------- 

    "=="         { TokenEq _ }
    "<"          { TokenLessThan _ }
    ">"          { TokenGreaterThan _ }
    "<="         { TokenLessThanEq _ }
    ">="         { TokenGreaterThanEq _ }
    "!="         { TokenNotEq _ }

    -----------------
    -- PARENTHESIS --
    ----------------- 

    '('          { TokenLParen _ }
    ')'          { TokenRParen _ }
    '['          { TokenLParenSquare _ }
    ']'          { TokenRParenSquare _ }
    '{'          { TokenLParenCurly _ }
    '}'          { TokenRParenCurly _ }

    --------------
    -- PATTERNS --
    --------------

    int          { TokenInt  _ $$ }
    Filename     { TokenFilename _ $$ }
    Str          { TokenStr _ $$ }
    Var          { TokenVar _ $$ }




-- ================================================================================ --
-- ================================================================================ --
-- ============================== GRAMMAR DEFINITION ============================== --
-- ================================================================================ --
-- ================================================================================ --




%% 

-----------------
-- EXPRESSIONS --
-----------------

Program : Setup CurlyList(Configuration) Exp { SetupProgram $2 $3}
        | Exp                                { Program $1 }

Configuration : PrettyPrint { PrettyPrint }

Exp : Let Var '=' TableType ';' Exp { Let $2 $4 $6 }
    | Return TableType ';'            { Return $2 }

-----------------
-- TABLE TYPES --
----------------- 

-- TABLE TYPE -- 
  
TableType : Read Filename     { Read $2 }
          | Var               { Var $1 }
          | FunctionTable     { Function $1 }
          | '(' TableType ')' { $2 }

-- FUNCTION TABLE -- 

FunctionTable : SelectFunction { Select $1 }
              | InsertFunction { Insert $1 }
              | DeleteFunction { Delete $1 }
              | UpdateFunction { Update $1 }
              | SetFunction    { Set $1 }
              | JoinFunction   { Join $1 }
              | FormatFunction { Format $1 }

---------------
-- FUNCTIONS --
---------------

-- SELECT FUNCTION --

SelectFunction : Select '*' TableType                                                     { SelectAll $3 }
               | Select List(ColumnRef) TableType                                         { SelectCol $2 $3 }
               | Select '*' Where List(Predicate(ColumnComparison)) TableType             { SelectAllWhere $4 $5 }
               | Select List(ColumnRef) Where List(Predicate(ColumnComparison)) TableType { SelectColWhere $2 $4 $5 }

-- INSERT -- 

InsertFunction : Insert Values List(Str) TableType { InsertValues $3 $4 }
               | Insert Column ColumnRef TableType { InsertColumn $3 $4 }

-- DELETE -- 

DeleteFunction : Delete TableType                                         { DeleteAll $2}
               | Delete List(ColumnRef) TableType                         { DeleteCol $2 $3 }
               | Delete Where List(Predicate(ColumnComparison)) TableType { DeleteAllWhere $3 $4 }

-- UPDATE -- 

UpdateFunction : Update List(Assignment) TableType                                         { UpdateAll $2 $3 }
               | Update List(Assignment) Where List(Predicate(ColumnComparison)) TableType { UpdateWhere $2 $4 $5 }

-- SETS -- 

SetFunction : Union TableType TableType        { Union $2 $3 }
            | Intersection TableType TableType { Intersection $2 $3 }
            | Difference TableType TableType   { Difference $2 $3 }

-- JOIN --

JoinFunction : Join TableType TableType                                           { JoinStandard $2 $3 }
             | Join Inner On List(Predicate(TableComparison)) TableType TableType { JoinInner $4 $5 $6 }
             | Join Left On List(Predicate(TableComparison))  TableType TableType { JoinLeft $4 $5 $6 }
             | Join Right On List(Predicate(TableComparison)) TableType TableType { JoinRight $4 $5 $6 }
             | Join Outer On List(Predicate(TableComparison)) TableType TableType { JoinOuter $4 $5 $6 }
             | Join Full TableType TableType                                      { JoinFull $3 $4 }

-- FORMAT -- 

FormatFunction: Order By Direction TableType                 { OrderBy $3 $4 }
              | Order By List(ColumnRef) Direction TableType { OrderByCol $3 $4 $5 }
              | Limit int TableType                          { Limit $2 $3 }
              | Offset int TableType                         { Offset $2 $3 }
              | Last int TableType                           { Last $2 $3 }
              | Unique TableType                             { Unique $2 }
              | Transpose TableType                          { Transpose $2 }

Direction : Asc  { Asc }
          | Desc { Desc }

-----------
-- LISTS --
----------- 

List (a)     : '[' ']'              { [] }
             | '[' ListCont (a) ']' { $2 }
ListCont (a) : a                    { [$1] }
             | a ',' ListCont (a)   { [$1] ++ $3 }

CurlyList (a)     : '{' '}'                   { [] }
                  | '{' CurlyListCont (a) '}' { $2 }
CurlyListCont (a) : a                         { [$1] }
                  | a ',' CurlyListCont (a)   { [$1] ++ $3 }

----------------
-- PREDICATES --
----------------

Predicate (a) : Not Predicate (a)               { Not $2 }
              | Predicate (a) And Predicate (a) { And $1 $3 }
              | Predicate (a) Or Predicate (a)  { Or $1 $3  }
              | a                               { Comparison $1 }

ColumnComparison : ColumnRef ComparisonOperator Str          { ColVal $1 $2 $3 }
                 | ColumnRef ComparisonOperator ColumnRef    { ColCol $1 $2 $3 }
                 | Index Operator int ComparisonOperator int { IndexVal $2 $3 $4 $5 }

ComparisonOperator : "==" { Eq } 
                   | "<"  { LessThan }
                   | ">"  { GreaterThan }
                   | "<=" { LessThanEq }
                   | ">=" { GreaterThanEq }
                   | "!=" { NotEq }

------------------------
-- OBJECT REFERENCING --
------------------------ 

ColumnRef : "@" int { $2 }

TableComparison : Left '.' ColumnRef ComparisonOperator Right '.' ColumnRef { TableComparison $3 $4 $7 }

TableColumnRef : Var '.' ColumnRef { TableColumnRef $1 $3 }

Assignment : ColumnRef '=' Str { Assignment $1 $3 }

---------------
-- OPERATORS --
---------------

Operator : '+' { Add }
         | '-' { Subtract }
         | "/" { Divide }
         | '*' { Multiply }
         | '%' { Modulo }




-- ================================================================================ --
-- ================================================================================ --
-- ================================= DATA TYPES =================================== --
-- ================================================================================ --
-- ================================================================================ --




{ 
parseError :: [Token] -> a
parseError [] = error "Unknown parse error"
parseError (t:ts) = error ("Error at line:column  " ++ (tokenPosn t))

data Program = SetupProgram [Configuration] Exp
             | Program Exp
               deriving (Show, Eq)

data Configuration = PrettyPrint
                     deriving (Show, Eq)

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
                   | Update UpdateFunction
                   | Set SetFunction
                   | Join JoinFunction
                   | Format FormatFunction
                     deriving (Show, Eq)

data SelectFunction = SelectAll TableType
                    | SelectCol [Int] TableType
                    | SelectAllWhere [Predicate(ColumnComparison)] TableType
                    | SelectColWhere [Int] [Predicate(ColumnComparison)] TableType
                      deriving (Show, Eq)

data InsertFunction = InsertValues [String] TableType
                    | InsertColumn Int TableType
                      deriving (Show, Eq)

data DeleteFunction = DeleteAll TableType
                    | DeleteCol [Int] TableType
                    | DeleteAllWhere [Predicate(ColumnComparison)] TableType
                      deriving (Show, Eq)

data UpdateFunction = UpdateAll [Assignment] TableType
                    | UpdateWhere [Assignment] [Predicate(ColumnComparison)] TableType
                      deriving (Show, Eq)

data SetFunction = Union TableType TableType
                 | Intersection TableType TableType
                 | Difference TableType TableType
                   deriving (Show, Eq)

data JoinFunction = JoinStandard TableType TableType
                  | JoinInner [Predicate(TableComparison)] TableType TableType 
                  | JoinLeft [Predicate(TableComparison)] TableType TableType 
                  | JoinRight [Predicate(TableComparison)] TableType TableType 
                  | JoinOuter [Predicate(TableComparison)] TableType TableType 
                  | JoinFull TableType TableType
                    deriving (Show, Eq)

data FormatFunction = OrderBy Direction TableType
                    | OrderByCol [Int] Direction TableType
                    | Limit Int TableType
                    | Offset Int TableType
                    | Last Int TableType
                    | Unique TableType
                    | Transpose TableType
                      deriving (Show, Eq)

data Predicate a = Not (Predicate a)
                 | And (Predicate a) (Predicate a)
                 | Or (Predicate a) (Predicate a)
                 | Comparison a
                   deriving (Show, Eq)

data ColumnComparison = ColVal Int ComparisonOperator String
                      | ColCol Int ComparisonOperator Int
                      | IndexVal Operator Int ComparisonOperator Int
                        deriving (Show, Eq)

data TableComparison = TableComparison Int ComparisonOperator Int
                       deriving (Show, Eq)

data TableColumnRef = TableColumnRef String Int
                      deriving (Show, Eq)

data ComparisonOperator = Eq 
                        | LessThan
                        | GreaterThan
                        | LessThanEq
                        | GreaterThanEq 
                        | NotEq 
                          deriving (Show, Eq)

data Operator = Add 
              | Subtract 
              | Divide 
              | Multiply 
              | Modulo 
                deriving (Show, Eq)

data Assignment = Assignment Int String
                  deriving (Show, Eq)

}
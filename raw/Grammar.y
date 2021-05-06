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
    From         { TokenFrom _ }
    Insert       { TokenInsert _ }
    Into         { TokenInto _ }
    Values       { TokenValues _ }
    Column       { TokenColumn _ }
    Delete       { TokenDelete _ }
    Where        { TokenWhere _ }
    Not          { TokenNot _ }
    And          { TokenAnd _ }
    Or           { TokenOr _ }
    Index        { TokenIndex _ }
    Update       { TokenUpdate _ }
    To           { TokenTo _ }
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
    Merge        { TokenMerge _ }
    Keeping      { TokenKeeping _ }
    On           { TokenOn _ }
    Order        { TokenOrder _ }
    In           { TokenIn _ }
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


-------------------------
-- OPERATOR PRECEDENCE --
------------------------- 

%nonassoc Not
%nonassoc And
%nonassoc Or
%% 

-----------------
-- EXPRESSIONS --
-----------------

Program : Setup CurlyList(Configuration) Exp { SetupProgram $2 $3}
        | Exp                                { Program $1 }

Configuration : PrettyPrint { PrettyPrint }

Exp : Let Var '=' TableType ';' Exp { Let $2 $4 $6 }
    | Return TableType ';'          { Return $2 }

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

SelectFunction : Select '*' From TableType                                                     { SelectAll $4 }
               | Select List(ColumnRef) From TableType                                         { SelectCol $2 $4 }
               | Select '*' Where List(Predicate(ColumnComparison)) From TableType             { SelectAllWhere $4 $6 }
               | Select List(ColumnRef) Where List(Predicate(ColumnComparison)) From TableType { SelectColWhere $2 $4 $6 }

-- INSERT -- 

InsertFunction : Insert Values List(Str) Into TableType { InsertValues $3 $5 }
               | Insert Column ColumnRef Into TableType { InsertColumn $3 $5 }

-- DELETE -- 

DeleteFunction : Delete TableType                                              { DeleteAll $2}
               | Delete List(ColumnRef) From TableType                         { DeleteCol $2 $4 }
               | Delete Where List(Predicate(ColumnComparison)) From TableType { DeleteAllWhere $3 $5 }

-- UPDATE -- 

UpdateFunction : Update To List(Assignment) On TableType                                         { UpdateAll $3 $5 }
               | Update To List(Assignment) Where List(Predicate(ColumnComparison)) On TableType { UpdateWhere $3 $5 $7 }

-- SETS -- 

SetFunction : Union TableType And TableType        { Union $2 $4 }
            | Intersection TableType And TableType { Intersection $2 $4 }
            | Difference TableType And TableType   { Difference $2 $4 }

-- JOIN --

JoinFunction : Join On TableType And TableType                                                           { JoinStandard $3 $5 }
             | Join Inner Where List(Predicate(TableComparison)) On TableType And TableType              { JoinInner $4 $6 $8 }
             | Join Left  Where List(Predicate(TableComparison)) On TableType And TableType              { JoinLeft $4 $6 $8 }
             | Join Right Where List(Predicate(TableComparison)) On TableType And TableType              { JoinRight $4 $6 $8 }
             | Join Outer Where List(Predicate(TableComparison)) On TableType And TableType              { JoinOuter $4 $6 $8 }
             | Join Full On TableType And TableType                                                      { JoinFull $4 $6 }
             | Merge Where List(Predicate(TableComparison)) Keeping List(ColumnRef) On TableType And TableType { JoinMerge $3 $5 $7 $9 }

-- FORMAT -- 

FormatFunction: Order In Direction TableType                    { OrderBy $3 $4 }
              | Order In Direction By List(ColumnRef) TableType { OrderByCol $3 $5 $6 }
              | Limit int TableType                             { Limit $2 $3 }
              | Offset int TableType                            { Offset $2 $3 }
              | Last int TableType                              { Last $2 $3 }
              | Unique TableType                                { Unique $2 }
              | Transpose TableType                             { Transpose $2 }

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

Predicate (a) : Not Predicate(a)              { Not $2 }
              | Predicate(a) And Predicate(a) { And $1 $3 }
              | Predicate(a) Or Predicate(a)  { Or $1 $3  }
              | a                             { Comparison $1 }
              | '(' Predicate(a) ')'          { $2 }

ColumnComparison : ColumnRef ComparisonOperator Str          { ColVal $1 $2 $3 }
                 | ColumnRef ComparisonOperator ColumnRef    { ColCol $1 $2 $3 }
                 | Index Operator int ComparisonOperator int { IndexVal $2 $3 $4 $5 }

TableComparison : Left '.' ColumnRef ComparisonOperator Right '.' ColumnRef { TableComparison $3 $4 $7 }

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
                  | JoinMerge [Predicate(TableComparison)] [Int] TableType TableType 
                    deriving (Show, Eq)

data FormatFunction = OrderBy Direction TableType
                    | OrderByCol Direction [Int] TableType
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
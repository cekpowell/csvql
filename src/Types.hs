module Types where


-----------------------
-- TYPE DECLERATIONS -- 
-----------------------


type Cell = String
type Row = [Cell]
type Column =  [Cell]
type Table = [Row]
type Var = (String, Table)
type Vars = [Var]
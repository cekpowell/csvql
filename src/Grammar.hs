{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 t31
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34
	| HappyAbsSyn35 t35
	| HappyAbsSyn36 t36
	| HappyAbsSyn37 t37

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,727) ([0,0,1568,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,33321,36980,496,512,4,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,32784,0,0,0,384,0,0,0,0,0,36864,18530,2311,31,16544,0,0,0,256,0,0,0,0,0,8848,1864,7945,8192,64,0,0,33321,36980,496,512,4,0,36864,18466,2311,31,16416,0,0,0,32768,79,0,0,0,0,16384,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,128,0,0,0,0,0,0,8,0,0,33321,36980,496,512,4,0,36864,18466,2311,31,16416,0,0,10496,29826,61584,1,1026,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,24576,0,0,0,0,0,0,192,0,0,0,64,0,0,0,0,16384,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36864,18466,2311,31,16416,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36864,18466,2311,31,16416,0,0,10496,29826,61584,1,1026,0,0,8848,1864,7945,8192,64,0,0,0,0,12,0,0,0,0,0,0,0,128,0,0,0,4,0,0,0,0,0,16384,0,0,0,0,0,0,1024,0,0,0,0,0,0,64,0,0,0,0,0,0,0,64,0,0,0,0,8848,1864,7945,8192,64,0,0,4096,0,0,0,0,0,0,256,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,1,1,0,0,0,0,0,2048,0,0,0,0,0,256,0,0,0,4096,4,0,0,0,0,0,16640,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10496,29826,61584,1,1026,0,0,0,0,0,32768,0,0,0,33321,36980,496,512,4,0,0,0,0,0,128,0,0,16384,0,0,0,0,0,0,0,0,0,0,8,0,0,64,0,0,0,0,0,0,0,0,0,8448,0,0,0,0,0,4,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,72,0,16,18,0,0,8848,1864,7945,8192,64,0,0,1024,16384,0,0,0,0,0,0,0,256,256,0,0,10496,29826,61584,1,1026,0,0,8848,1864,7945,8192,64,0,0,33321,36980,496,512,4,0,0,256,0,0,0,0,0,10496,29826,61584,1,1026,0,0,0,0,0,32768,0,0,0,0,0,0,2048,0,0,0,0,0,0,128,0,0,0,0,0,0,8,0,0,0,0,2,0,0,0,0,2048,256,0,4608,0,0,36864,18466,10503,31,16416,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,192,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,12288,0,1024,0,0,0,0,0,0,0,256,0,0,0,8,1,0,2,0,0,0,0,32768,0,0,0,0,2048,256,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,4,0,0,0,0,0,16384,0,0,0,0,0,0,1024,0,0,0,0,0,0,64,0,0,0,0,0,1,0,0,0,0,0,33321,36980,496,512,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,64,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,36864,18466,2311,31,16416,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,504,0,0,0,768,0,64,0,0,0,0,0,0,0,16,0,0,32768,4,0,8193,0,0,0,0,0,49152,7,0,0,0,1152,0,256,32,0,0,0,0,0,0,0,0,0,8848,1864,7945,8192,64,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,36864,18466,2311,31,16416,0,0,0,0,0,0,0,0,0,8848,1864,7945,8192,64,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,33321,36980,496,512,4,0,36864,18466,2311,31,16416,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12288,0,0,1024,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,1152,0,256,32,0,0,0,72,0,16,2,0,0,32768,4,0,8193,0,0,0,0,0,4096,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,36864,18466,2311,31,16416,0,0,10496,29826,61584,1,1026,0,0,8848,1864,7945,8192,64,0,0,33321,36980,496,512,4,0,36864,18466,2311,31,16416,0,0,0,0,64,0,0,0,0,0,3,0,16384,0,0,0,0,0,4096,0,0,0,0,768,0,0,0,0,0,0,0,0,0,0,0,0,32768,4096,0,8192,0,0,0,2048,256,0,512,0,0,0,128,16,0,32,0,0,10496,29826,61584,1,1026,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,504,0,0,0,0,0,0,0,0,0,10496,29826,61584,1,1026,0,0,0,1,0,0,0,0,0,4096,0,0,0,0,0,0,256,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10496,29826,61584,1,1026,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,504,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,8848,1864,7945,8192,64,0,0,33321,36980,496,512,4,0,36864,18466,2311,31,16416,0,0,10496,29826,61584,1,1026,0,0,0,1,0,0,0,0,0,0,512,0,0,0,0,0,0,0,128,0,0,0,10496,29826,61584,1,1026,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Configuration","Exp","TableType","FunctionTable","SelectFunction","InsertFunction","DeleteFunction","UpdateFunction","SetFunction","JoinFunction","FormatFunction","Direction","ColumnComparison","TableComparison","ComparisonOperator","ColumnRef","TableColumnRef","Assignment","Operator","CurlyList__Configuration__","List__Assignment__","List__ColumnRef__","List__Predicate__ColumnComparison____","List__Predicate__TableComparison____","List__Str__","Predicate__ColumnComparison__","Predicate__TableComparison__","CurlyListCont__Configuration__","ListCont__Assignment__","ListCont__ColumnRef__","ListCont__Predicate__ColumnComparison____","ListCont__Predicate__TableComparison____","ListCont__Str__","Setup","PrettyPrint","LoadFromTsv","Read","Let","Return","Select","From","Insert","Into","Values","Column","Delete","Where","Not","And","Or","Index","Update","To","Set","Union","All","Intersection","Difference","Join","Inner","Left","Right","Outer","Full","Merge","Keeping","On","Order","In","By","Asc","Desc","Limit","Offset","Last","Unique","Transpose","';'","','","'.'","\"@\"","'='","'+'","'-'","'*'","\"/\"","'%'","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","'('","')'","'['","']'","'{'","'}'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 108
        bit_end = (st Prelude.+ 1) Prelude.* 108
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..107]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (38) = happyShift action_2
action_0 (42) = happyShift action_5
action_0 (43) = happyShift action_6
action_0 (4) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (38) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (102) = happyShift action_36
action_2 (24) = happyGoto action_35
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (108) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (107) = happyShift action_34
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (41) = happyShift action_16
action_6 (44) = happyShift action_17
action_6 (46) = happyShift action_18
action_6 (50) = happyShift action_19
action_6 (56) = happyShift action_20
action_6 (59) = happyShift action_21
action_6 (61) = happyShift action_22
action_6 (62) = happyShift action_23
action_6 (63) = happyShift action_24
action_6 (69) = happyShift action_25
action_6 (72) = happyShift action_26
action_6 (77) = happyShift action_27
action_6 (78) = happyShift action_28
action_6 (79) = happyShift action_29
action_6 (80) = happyShift action_30
action_6 (81) = happyShift action_31
action_6 (98) = happyShift action_32
action_6 (107) = happyShift action_33
action_6 (7) = happyGoto action_7
action_6 (8) = happyGoto action_8
action_6 (9) = happyGoto action_9
action_6 (10) = happyGoto action_10
action_6 (11) = happyGoto action_11
action_6 (12) = happyGoto action_12
action_6 (13) = happyGoto action_13
action_6 (14) = happyGoto action_14
action_6 (15) = happyGoto action_15
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (82) = happyShift action_71
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_9

action_9 _ = happyReduce_11

action_10 _ = happyReduce_12

action_11 _ = happyReduce_13

action_12 _ = happyReduce_14

action_13 _ = happyReduce_15

action_14 _ = happyReduce_16

action_15 _ = happyReduce_17

action_16 (105) = happyShift action_70
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (89) = happyShift action_69
action_17 (100) = happyShift action_65
action_17 (26) = happyGoto action_68
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (48) = happyShift action_66
action_18 (49) = happyShift action_67
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (41) = happyShift action_16
action_19 (44) = happyShift action_17
action_19 (46) = happyShift action_18
action_19 (50) = happyShift action_19
action_19 (51) = happyShift action_64
action_19 (56) = happyShift action_20
action_19 (59) = happyShift action_21
action_19 (61) = happyShift action_22
action_19 (62) = happyShift action_23
action_19 (63) = happyShift action_24
action_19 (69) = happyShift action_25
action_19 (72) = happyShift action_26
action_19 (77) = happyShift action_27
action_19 (78) = happyShift action_28
action_19 (79) = happyShift action_29
action_19 (80) = happyShift action_30
action_19 (81) = happyShift action_31
action_19 (98) = happyShift action_32
action_19 (100) = happyShift action_65
action_19 (107) = happyShift action_33
action_19 (7) = happyGoto action_62
action_19 (8) = happyGoto action_8
action_19 (9) = happyGoto action_9
action_19 (10) = happyGoto action_10
action_19 (11) = happyGoto action_11
action_19 (12) = happyGoto action_12
action_19 (13) = happyGoto action_13
action_19 (14) = happyGoto action_14
action_19 (15) = happyGoto action_15
action_19 (26) = happyGoto action_63
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (57) = happyShift action_61
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (41) = happyShift action_16
action_21 (44) = happyShift action_17
action_21 (46) = happyShift action_18
action_21 (50) = happyShift action_19
action_21 (56) = happyShift action_20
action_21 (59) = happyShift action_21
action_21 (61) = happyShift action_22
action_21 (62) = happyShift action_23
action_21 (63) = happyShift action_24
action_21 (69) = happyShift action_25
action_21 (72) = happyShift action_26
action_21 (77) = happyShift action_27
action_21 (78) = happyShift action_28
action_21 (79) = happyShift action_29
action_21 (80) = happyShift action_30
action_21 (81) = happyShift action_31
action_21 (98) = happyShift action_32
action_21 (107) = happyShift action_33
action_21 (7) = happyGoto action_60
action_21 (8) = happyGoto action_8
action_21 (9) = happyGoto action_9
action_21 (10) = happyGoto action_10
action_21 (11) = happyGoto action_11
action_21 (12) = happyGoto action_12
action_21 (13) = happyGoto action_13
action_21 (14) = happyGoto action_14
action_21 (15) = happyGoto action_15
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (41) = happyShift action_16
action_22 (44) = happyShift action_17
action_22 (46) = happyShift action_18
action_22 (50) = happyShift action_19
action_22 (56) = happyShift action_20
action_22 (59) = happyShift action_21
action_22 (61) = happyShift action_22
action_22 (62) = happyShift action_23
action_22 (63) = happyShift action_24
action_22 (69) = happyShift action_25
action_22 (72) = happyShift action_26
action_22 (77) = happyShift action_27
action_22 (78) = happyShift action_28
action_22 (79) = happyShift action_29
action_22 (80) = happyShift action_30
action_22 (81) = happyShift action_31
action_22 (98) = happyShift action_32
action_22 (107) = happyShift action_33
action_22 (7) = happyGoto action_59
action_22 (8) = happyGoto action_8
action_22 (9) = happyGoto action_9
action_22 (10) = happyGoto action_10
action_22 (11) = happyGoto action_11
action_22 (12) = happyGoto action_12
action_22 (13) = happyGoto action_13
action_22 (14) = happyGoto action_14
action_22 (15) = happyGoto action_15
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (41) = happyShift action_16
action_23 (44) = happyShift action_17
action_23 (46) = happyShift action_18
action_23 (50) = happyShift action_19
action_23 (56) = happyShift action_20
action_23 (59) = happyShift action_21
action_23 (61) = happyShift action_22
action_23 (62) = happyShift action_23
action_23 (63) = happyShift action_24
action_23 (69) = happyShift action_25
action_23 (72) = happyShift action_26
action_23 (77) = happyShift action_27
action_23 (78) = happyShift action_28
action_23 (79) = happyShift action_29
action_23 (80) = happyShift action_30
action_23 (81) = happyShift action_31
action_23 (98) = happyShift action_32
action_23 (107) = happyShift action_33
action_23 (7) = happyGoto action_58
action_23 (8) = happyGoto action_8
action_23 (9) = happyGoto action_9
action_23 (10) = happyGoto action_10
action_23 (11) = happyGoto action_11
action_23 (12) = happyGoto action_12
action_23 (13) = happyGoto action_13
action_23 (14) = happyGoto action_14
action_23 (15) = happyGoto action_15
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (64) = happyShift action_52
action_24 (65) = happyShift action_53
action_24 (66) = happyShift action_54
action_24 (67) = happyShift action_55
action_24 (68) = happyShift action_56
action_24 (71) = happyShift action_57
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (51) = happyShift action_51
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (73) = happyShift action_50
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (104) = happyShift action_49
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (104) = happyShift action_48
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (104) = happyShift action_47
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (41) = happyShift action_16
action_30 (44) = happyShift action_17
action_30 (46) = happyShift action_18
action_30 (50) = happyShift action_19
action_30 (56) = happyShift action_20
action_30 (59) = happyShift action_21
action_30 (61) = happyShift action_22
action_30 (62) = happyShift action_23
action_30 (63) = happyShift action_24
action_30 (69) = happyShift action_25
action_30 (72) = happyShift action_26
action_30 (77) = happyShift action_27
action_30 (78) = happyShift action_28
action_30 (79) = happyShift action_29
action_30 (80) = happyShift action_30
action_30 (81) = happyShift action_31
action_30 (98) = happyShift action_32
action_30 (107) = happyShift action_33
action_30 (7) = happyGoto action_46
action_30 (8) = happyGoto action_8
action_30 (9) = happyGoto action_9
action_30 (10) = happyGoto action_10
action_30 (11) = happyGoto action_11
action_30 (12) = happyGoto action_12
action_30 (13) = happyGoto action_13
action_30 (14) = happyGoto action_14
action_30 (15) = happyGoto action_15
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (41) = happyShift action_16
action_31 (44) = happyShift action_17
action_31 (46) = happyShift action_18
action_31 (50) = happyShift action_19
action_31 (56) = happyShift action_20
action_31 (59) = happyShift action_21
action_31 (61) = happyShift action_22
action_31 (62) = happyShift action_23
action_31 (63) = happyShift action_24
action_31 (69) = happyShift action_25
action_31 (72) = happyShift action_26
action_31 (77) = happyShift action_27
action_31 (78) = happyShift action_28
action_31 (79) = happyShift action_29
action_31 (80) = happyShift action_30
action_31 (81) = happyShift action_31
action_31 (98) = happyShift action_32
action_31 (107) = happyShift action_33
action_31 (7) = happyGoto action_45
action_31 (8) = happyGoto action_8
action_31 (9) = happyGoto action_9
action_31 (10) = happyGoto action_10
action_31 (11) = happyGoto action_11
action_31 (12) = happyGoto action_12
action_31 (13) = happyGoto action_13
action_31 (14) = happyGoto action_14
action_31 (15) = happyGoto action_15
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (41) = happyShift action_16
action_32 (44) = happyShift action_17
action_32 (46) = happyShift action_18
action_32 (50) = happyShift action_19
action_32 (56) = happyShift action_20
action_32 (59) = happyShift action_21
action_32 (61) = happyShift action_22
action_32 (62) = happyShift action_23
action_32 (63) = happyShift action_24
action_32 (69) = happyShift action_25
action_32 (72) = happyShift action_26
action_32 (77) = happyShift action_27
action_32 (78) = happyShift action_28
action_32 (79) = happyShift action_29
action_32 (80) = happyShift action_30
action_32 (81) = happyShift action_31
action_32 (98) = happyShift action_32
action_32 (107) = happyShift action_33
action_32 (7) = happyGoto action_44
action_32 (8) = happyGoto action_8
action_32 (9) = happyGoto action_9
action_32 (10) = happyGoto action_10
action_32 (11) = happyGoto action_11
action_32 (12) = happyGoto action_12
action_32 (13) = happyGoto action_13
action_32 (14) = happyGoto action_14
action_32 (15) = happyGoto action_15
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_8

action_34 (86) = happyShift action_43
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (42) = happyShift action_5
action_35 (43) = happyShift action_6
action_35 (6) = happyGoto action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (39) = happyShift action_39
action_36 (40) = happyShift action_40
action_36 (103) = happyShift action_41
action_36 (5) = happyGoto action_37
action_36 (32) = happyGoto action_38
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (83) = happyShift action_108
action_37 _ = happyReduce_88

action_38 (103) = happyShift action_107
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_3

action_40 _ = happyReduce_4

action_41 _ = happyReduce_66

action_42 _ = happyReduce_1

action_43 (41) = happyShift action_16
action_43 (44) = happyShift action_17
action_43 (46) = happyShift action_18
action_43 (50) = happyShift action_19
action_43 (56) = happyShift action_20
action_43 (59) = happyShift action_21
action_43 (61) = happyShift action_22
action_43 (62) = happyShift action_23
action_43 (63) = happyShift action_24
action_43 (69) = happyShift action_25
action_43 (72) = happyShift action_26
action_43 (77) = happyShift action_27
action_43 (78) = happyShift action_28
action_43 (79) = happyShift action_29
action_43 (80) = happyShift action_30
action_43 (81) = happyShift action_31
action_43 (98) = happyShift action_32
action_43 (107) = happyShift action_33
action_43 (7) = happyGoto action_106
action_43 (8) = happyGoto action_8
action_43 (9) = happyGoto action_9
action_43 (10) = happyGoto action_10
action_43 (11) = happyGoto action_11
action_43 (12) = happyGoto action_12
action_43 (13) = happyGoto action_13
action_43 (14) = happyGoto action_14
action_43 (15) = happyGoto action_15
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (99) = happyShift action_105
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_45

action_46 _ = happyReduce_44

action_47 (41) = happyShift action_16
action_47 (44) = happyShift action_17
action_47 (46) = happyShift action_18
action_47 (50) = happyShift action_19
action_47 (56) = happyShift action_20
action_47 (59) = happyShift action_21
action_47 (61) = happyShift action_22
action_47 (62) = happyShift action_23
action_47 (63) = happyShift action_24
action_47 (69) = happyShift action_25
action_47 (72) = happyShift action_26
action_47 (77) = happyShift action_27
action_47 (78) = happyShift action_28
action_47 (79) = happyShift action_29
action_47 (80) = happyShift action_30
action_47 (81) = happyShift action_31
action_47 (98) = happyShift action_32
action_47 (107) = happyShift action_33
action_47 (7) = happyGoto action_104
action_47 (8) = happyGoto action_8
action_47 (9) = happyGoto action_9
action_47 (10) = happyGoto action_10
action_47 (11) = happyGoto action_11
action_47 (12) = happyGoto action_12
action_47 (13) = happyGoto action_13
action_47 (14) = happyGoto action_14
action_47 (15) = happyGoto action_15
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (41) = happyShift action_16
action_48 (44) = happyShift action_17
action_48 (46) = happyShift action_18
action_48 (50) = happyShift action_19
action_48 (56) = happyShift action_20
action_48 (59) = happyShift action_21
action_48 (61) = happyShift action_22
action_48 (62) = happyShift action_23
action_48 (63) = happyShift action_24
action_48 (69) = happyShift action_25
action_48 (72) = happyShift action_26
action_48 (77) = happyShift action_27
action_48 (78) = happyShift action_28
action_48 (79) = happyShift action_29
action_48 (80) = happyShift action_30
action_48 (81) = happyShift action_31
action_48 (98) = happyShift action_32
action_48 (107) = happyShift action_33
action_48 (7) = happyGoto action_103
action_48 (8) = happyGoto action_8
action_48 (9) = happyGoto action_9
action_48 (10) = happyGoto action_10
action_48 (11) = happyGoto action_11
action_48 (12) = happyGoto action_12
action_48 (13) = happyGoto action_13
action_48 (14) = happyGoto action_14
action_48 (15) = happyGoto action_15
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (41) = happyShift action_16
action_49 (44) = happyShift action_17
action_49 (46) = happyShift action_18
action_49 (50) = happyShift action_19
action_49 (56) = happyShift action_20
action_49 (59) = happyShift action_21
action_49 (61) = happyShift action_22
action_49 (62) = happyShift action_23
action_49 (63) = happyShift action_24
action_49 (69) = happyShift action_25
action_49 (72) = happyShift action_26
action_49 (77) = happyShift action_27
action_49 (78) = happyShift action_28
action_49 (79) = happyShift action_29
action_49 (80) = happyShift action_30
action_49 (81) = happyShift action_31
action_49 (98) = happyShift action_32
action_49 (107) = happyShift action_33
action_49 (7) = happyGoto action_102
action_49 (8) = happyGoto action_8
action_49 (9) = happyGoto action_9
action_49 (10) = happyGoto action_10
action_49 (11) = happyGoto action_11
action_49 (12) = happyGoto action_12
action_49 (13) = happyGoto action_13
action_49 (14) = happyGoto action_14
action_49 (15) = happyGoto action_15
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (75) = happyShift action_100
action_50 (76) = happyShift action_101
action_50 (16) = happyGoto action_99
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (100) = happyShift action_98
action_51 (28) = happyGoto action_97
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (51) = happyShift action_96
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (51) = happyShift action_95
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (51) = happyShift action_94
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (51) = happyShift action_93
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (71) = happyShift action_92
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (41) = happyShift action_16
action_57 (44) = happyShift action_17
action_57 (46) = happyShift action_18
action_57 (50) = happyShift action_19
action_57 (56) = happyShift action_20
action_57 (59) = happyShift action_21
action_57 (61) = happyShift action_22
action_57 (62) = happyShift action_23
action_57 (63) = happyShift action_24
action_57 (69) = happyShift action_25
action_57 (72) = happyShift action_26
action_57 (77) = happyShift action_27
action_57 (78) = happyShift action_28
action_57 (79) = happyShift action_29
action_57 (80) = happyShift action_30
action_57 (81) = happyShift action_31
action_57 (98) = happyShift action_32
action_57 (107) = happyShift action_33
action_57 (7) = happyGoto action_91
action_57 (8) = happyGoto action_8
action_57 (9) = happyGoto action_9
action_57 (10) = happyGoto action_10
action_57 (11) = happyGoto action_11
action_57 (12) = happyGoto action_12
action_57 (13) = happyGoto action_13
action_57 (14) = happyGoto action_14
action_57 (15) = happyGoto action_15
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (53) = happyShift action_90
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (53) = happyShift action_89
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (53) = happyShift action_88
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (100) = happyShift action_87
action_61 (25) = happyGoto action_86
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_24

action_63 (45) = happyShift action_85
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (100) = happyShift action_84
action_64 (27) = happyGoto action_83
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (85) = happyShift action_77
action_65 (101) = happyShift action_82
action_65 (20) = happyGoto action_80
action_65 (34) = happyGoto action_81
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (100) = happyShift action_79
action_66 (29) = happyGoto action_78
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (85) = happyShift action_77
action_67 (20) = happyGoto action_76
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (45) = happyShift action_74
action_68 (51) = happyShift action_75
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (45) = happyShift action_72
action_69 (51) = happyShift action_73
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_7

action_71 _ = happyReduce_6

action_72 (41) = happyShift action_16
action_72 (44) = happyShift action_17
action_72 (46) = happyShift action_18
action_72 (50) = happyShift action_19
action_72 (56) = happyShift action_20
action_72 (59) = happyShift action_21
action_72 (61) = happyShift action_22
action_72 (62) = happyShift action_23
action_72 (63) = happyShift action_24
action_72 (69) = happyShift action_25
action_72 (72) = happyShift action_26
action_72 (77) = happyShift action_27
action_72 (78) = happyShift action_28
action_72 (79) = happyShift action_29
action_72 (80) = happyShift action_30
action_72 (81) = happyShift action_31
action_72 (98) = happyShift action_32
action_72 (107) = happyShift action_33
action_72 (7) = happyGoto action_157
action_72 (8) = happyGoto action_8
action_72 (9) = happyGoto action_9
action_72 (10) = happyGoto action_10
action_72 (11) = happyGoto action_11
action_72 (12) = happyGoto action_12
action_72 (13) = happyGoto action_13
action_72 (14) = happyGoto action_14
action_72 (15) = happyGoto action_15
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (100) = happyShift action_84
action_73 (27) = happyGoto action_156
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (41) = happyShift action_16
action_74 (44) = happyShift action_17
action_74 (46) = happyShift action_18
action_74 (50) = happyShift action_19
action_74 (56) = happyShift action_20
action_74 (59) = happyShift action_21
action_74 (61) = happyShift action_22
action_74 (62) = happyShift action_23
action_74 (63) = happyShift action_24
action_74 (69) = happyShift action_25
action_74 (72) = happyShift action_26
action_74 (77) = happyShift action_27
action_74 (78) = happyShift action_28
action_74 (79) = happyShift action_29
action_74 (80) = happyShift action_30
action_74 (81) = happyShift action_31
action_74 (98) = happyShift action_32
action_74 (107) = happyShift action_33
action_74 (7) = happyGoto action_155
action_74 (8) = happyGoto action_8
action_74 (9) = happyGoto action_9
action_74 (10) = happyGoto action_10
action_74 (11) = happyGoto action_11
action_74 (12) = happyGoto action_12
action_74 (13) = happyGoto action_13
action_74 (14) = happyGoto action_14
action_74 (15) = happyGoto action_15
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (100) = happyShift action_84
action_75 (27) = happyGoto action_154
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (47) = happyShift action_153
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (104) = happyShift action_152
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (47) = happyShift action_151
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (101) = happyShift action_149
action_79 (106) = happyShift action_150
action_79 (37) = happyGoto action_148
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (83) = happyShift action_147
action_80 _ = happyReduce_92

action_81 (101) = happyShift action_146
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_70

action_83 (45) = happyShift action_145
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (52) = happyShift action_141
action_84 (55) = happyShift action_142
action_84 (85) = happyShift action_77
action_84 (98) = happyShift action_143
action_84 (101) = happyShift action_144
action_84 (17) = happyGoto action_137
action_84 (20) = happyGoto action_138
action_84 (30) = happyGoto action_139
action_84 (35) = happyGoto action_140
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (41) = happyShift action_16
action_85 (44) = happyShift action_17
action_85 (46) = happyShift action_18
action_85 (50) = happyShift action_19
action_85 (56) = happyShift action_20
action_85 (59) = happyShift action_21
action_85 (61) = happyShift action_22
action_85 (62) = happyShift action_23
action_85 (63) = happyShift action_24
action_85 (69) = happyShift action_25
action_85 (72) = happyShift action_26
action_85 (77) = happyShift action_27
action_85 (78) = happyShift action_28
action_85 (79) = happyShift action_29
action_85 (80) = happyShift action_30
action_85 (81) = happyShift action_31
action_85 (98) = happyShift action_32
action_85 (107) = happyShift action_33
action_85 (7) = happyGoto action_136
action_85 (8) = happyGoto action_8
action_85 (9) = happyGoto action_9
action_85 (10) = happyGoto action_10
action_85 (11) = happyGoto action_11
action_85 (12) = happyGoto action_12
action_85 (13) = happyGoto action_13
action_85 (14) = happyGoto action_14
action_85 (15) = happyGoto action_15
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (51) = happyShift action_134
action_86 (71) = happyShift action_135
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (85) = happyShift action_77
action_87 (101) = happyShift action_133
action_87 (20) = happyGoto action_130
action_87 (22) = happyGoto action_131
action_87 (33) = happyGoto action_132
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (41) = happyShift action_16
action_88 (44) = happyShift action_17
action_88 (46) = happyShift action_18
action_88 (50) = happyShift action_19
action_88 (56) = happyShift action_20
action_88 (59) = happyShift action_21
action_88 (61) = happyShift action_22
action_88 (62) = happyShift action_23
action_88 (63) = happyShift action_24
action_88 (69) = happyShift action_25
action_88 (72) = happyShift action_26
action_88 (77) = happyShift action_27
action_88 (78) = happyShift action_28
action_88 (79) = happyShift action_29
action_88 (80) = happyShift action_30
action_88 (81) = happyShift action_31
action_88 (98) = happyShift action_32
action_88 (107) = happyShift action_33
action_88 (7) = happyGoto action_129
action_88 (8) = happyGoto action_8
action_88 (9) = happyGoto action_9
action_88 (10) = happyGoto action_10
action_88 (11) = happyGoto action_11
action_88 (12) = happyGoto action_12
action_88 (13) = happyGoto action_13
action_88 (14) = happyGoto action_14
action_88 (15) = happyGoto action_15
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (41) = happyShift action_16
action_89 (44) = happyShift action_17
action_89 (46) = happyShift action_18
action_89 (50) = happyShift action_19
action_89 (56) = happyShift action_20
action_89 (59) = happyShift action_21
action_89 (61) = happyShift action_22
action_89 (62) = happyShift action_23
action_89 (63) = happyShift action_24
action_89 (69) = happyShift action_25
action_89 (72) = happyShift action_26
action_89 (77) = happyShift action_27
action_89 (78) = happyShift action_28
action_89 (79) = happyShift action_29
action_89 (80) = happyShift action_30
action_89 (81) = happyShift action_31
action_89 (98) = happyShift action_32
action_89 (107) = happyShift action_33
action_89 (7) = happyGoto action_128
action_89 (8) = happyGoto action_8
action_89 (9) = happyGoto action_9
action_89 (10) = happyGoto action_10
action_89 (11) = happyGoto action_11
action_89 (12) = happyGoto action_12
action_89 (13) = happyGoto action_13
action_89 (14) = happyGoto action_14
action_89 (15) = happyGoto action_15
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (41) = happyShift action_16
action_90 (44) = happyShift action_17
action_90 (46) = happyShift action_18
action_90 (50) = happyShift action_19
action_90 (56) = happyShift action_20
action_90 (59) = happyShift action_21
action_90 (61) = happyShift action_22
action_90 (62) = happyShift action_23
action_90 (63) = happyShift action_24
action_90 (69) = happyShift action_25
action_90 (72) = happyShift action_26
action_90 (77) = happyShift action_27
action_90 (78) = happyShift action_28
action_90 (79) = happyShift action_29
action_90 (80) = happyShift action_30
action_90 (81) = happyShift action_31
action_90 (98) = happyShift action_32
action_90 (107) = happyShift action_33
action_90 (7) = happyGoto action_127
action_90 (8) = happyGoto action_8
action_90 (9) = happyGoto action_9
action_90 (10) = happyGoto action_10
action_90 (11) = happyGoto action_11
action_90 (12) = happyGoto action_12
action_90 (13) = happyGoto action_13
action_90 (14) = happyGoto action_14
action_90 (15) = happyGoto action_15
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (53) = happyShift action_126
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (41) = happyShift action_16
action_92 (44) = happyShift action_17
action_92 (46) = happyShift action_18
action_92 (50) = happyShift action_19
action_92 (56) = happyShift action_20
action_92 (59) = happyShift action_21
action_92 (61) = happyShift action_22
action_92 (62) = happyShift action_23
action_92 (63) = happyShift action_24
action_92 (69) = happyShift action_25
action_92 (72) = happyShift action_26
action_92 (77) = happyShift action_27
action_92 (78) = happyShift action_28
action_92 (79) = happyShift action_29
action_92 (80) = happyShift action_30
action_92 (81) = happyShift action_31
action_92 (98) = happyShift action_32
action_92 (107) = happyShift action_33
action_92 (7) = happyGoto action_125
action_92 (8) = happyGoto action_8
action_92 (9) = happyGoto action_9
action_92 (10) = happyGoto action_10
action_92 (11) = happyGoto action_11
action_92 (12) = happyGoto action_12
action_92 (13) = happyGoto action_13
action_92 (14) = happyGoto action_14
action_92 (15) = happyGoto action_15
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (100) = happyShift action_98
action_93 (28) = happyGoto action_124
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (100) = happyShift action_98
action_94 (28) = happyGoto action_123
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (100) = happyShift action_98
action_95 (28) = happyGoto action_122
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (100) = happyShift action_98
action_96 (28) = happyGoto action_121
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (70) = happyShift action_120
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (52) = happyShift action_116
action_98 (65) = happyShift action_117
action_98 (98) = happyShift action_118
action_98 (101) = happyShift action_119
action_98 (18) = happyGoto action_113
action_98 (31) = happyGoto action_114
action_98 (36) = happyGoto action_115
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (41) = happyShift action_16
action_99 (44) = happyShift action_17
action_99 (46) = happyShift action_18
action_99 (50) = happyShift action_19
action_99 (56) = happyShift action_20
action_99 (59) = happyShift action_21
action_99 (61) = happyShift action_22
action_99 (62) = happyShift action_23
action_99 (63) = happyShift action_24
action_99 (69) = happyShift action_25
action_99 (72) = happyShift action_26
action_99 (74) = happyShift action_112
action_99 (77) = happyShift action_27
action_99 (78) = happyShift action_28
action_99 (79) = happyShift action_29
action_99 (80) = happyShift action_30
action_99 (81) = happyShift action_31
action_99 (98) = happyShift action_32
action_99 (107) = happyShift action_33
action_99 (7) = happyGoto action_111
action_99 (8) = happyGoto action_8
action_99 (9) = happyGoto action_9
action_99 (10) = happyGoto action_10
action_99 (11) = happyGoto action_11
action_99 (12) = happyGoto action_12
action_99 (13) = happyGoto action_13
action_99 (14) = happyGoto action_14
action_99 (15) = happyGoto action_15
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_46

action_101 _ = happyReduce_47

action_102 _ = happyReduce_41

action_103 _ = happyReduce_42

action_104 _ = happyReduce_43

action_105 _ = happyReduce_10

action_106 (82) = happyShift action_110
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_67

action_108 (39) = happyShift action_39
action_108 (40) = happyShift action_40
action_108 (5) = happyGoto action_37
action_108 (32) = happyGoto action_109
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_89

action_110 (42) = happyShift action_5
action_110 (43) = happyShift action_6
action_110 (6) = happyGoto action_205
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_39

action_112 (100) = happyShift action_65
action_112 (26) = happyGoto action_204
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_86

action_114 (53) = happyShift action_201
action_114 (54) = happyShift action_202
action_114 (83) = happyShift action_203
action_114 _ = happyReduce_96

action_115 (101) = happyShift action_200
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (52) = happyShift action_116
action_116 (65) = happyShift action_117
action_116 (98) = happyShift action_118
action_116 (18) = happyGoto action_113
action_116 (31) = happyGoto action_199
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (84) = happyShift action_198
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (52) = happyShift action_116
action_118 (65) = happyShift action_117
action_118 (98) = happyShift action_118
action_118 (18) = happyGoto action_113
action_118 (31) = happyGoto action_197
action_118 _ = happyFail (happyExpListPerState 118)

action_119 _ = happyReduce_74

action_120 (100) = happyShift action_65
action_120 (26) = happyGoto action_196
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (71) = happyShift action_195
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (71) = happyShift action_194
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (71) = happyShift action_193
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (71) = happyShift action_192
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (53) = happyShift action_191
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (41) = happyShift action_16
action_126 (44) = happyShift action_17
action_126 (46) = happyShift action_18
action_126 (50) = happyShift action_19
action_126 (56) = happyShift action_20
action_126 (59) = happyShift action_21
action_126 (61) = happyShift action_22
action_126 (62) = happyShift action_23
action_126 (63) = happyShift action_24
action_126 (69) = happyShift action_25
action_126 (72) = happyShift action_26
action_126 (77) = happyShift action_27
action_126 (78) = happyShift action_28
action_126 (79) = happyShift action_29
action_126 (80) = happyShift action_30
action_126 (81) = happyShift action_31
action_126 (98) = happyShift action_32
action_126 (107) = happyShift action_33
action_126 (7) = happyGoto action_190
action_126 (8) = happyGoto action_8
action_126 (9) = happyGoto action_9
action_126 (10) = happyGoto action_10
action_126 (11) = happyGoto action_11
action_126 (12) = happyGoto action_12
action_126 (13) = happyGoto action_13
action_126 (14) = happyGoto action_14
action_126 (15) = happyGoto action_15
action_126 _ = happyFail (happyExpListPerState 126)

action_127 _ = happyReduce_31

action_128 _ = happyReduce_30

action_129 _ = happyReduce_29

action_130 (86) = happyShift action_189
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (83) = happyShift action_188
action_131 _ = happyReduce_90

action_132 (101) = happyShift action_187
action_132 _ = happyFail (happyExpListPerState 132)

action_133 _ = happyReduce_68

action_134 (100) = happyShift action_84
action_134 (27) = happyGoto action_186
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (41) = happyShift action_16
action_135 (44) = happyShift action_17
action_135 (46) = happyShift action_18
action_135 (50) = happyShift action_19
action_135 (56) = happyShift action_20
action_135 (59) = happyShift action_21
action_135 (61) = happyShift action_22
action_135 (62) = happyShift action_23
action_135 (63) = happyShift action_24
action_135 (69) = happyShift action_25
action_135 (72) = happyShift action_26
action_135 (77) = happyShift action_27
action_135 (78) = happyShift action_28
action_135 (79) = happyShift action_29
action_135 (80) = happyShift action_30
action_135 (81) = happyShift action_31
action_135 (98) = happyShift action_32
action_135 (107) = happyShift action_33
action_135 (7) = happyGoto action_185
action_135 (8) = happyGoto action_8
action_135 (9) = happyGoto action_9
action_135 (10) = happyGoto action_10
action_135 (11) = happyGoto action_11
action_135 (12) = happyGoto action_12
action_135 (13) = happyGoto action_13
action_135 (14) = happyGoto action_14
action_135 (15) = happyGoto action_15
action_135 _ = happyFail (happyExpListPerState 135)

action_136 _ = happyReduce_25

action_137 _ = happyReduce_81

action_138 (92) = happyShift action_179
action_138 (93) = happyShift action_180
action_138 (94) = happyShift action_181
action_138 (95) = happyShift action_182
action_138 (96) = happyShift action_183
action_138 (97) = happyShift action_184
action_138 (19) = happyGoto action_178
action_138 _ = happyFail (happyExpListPerState 138)

action_139 (53) = happyShift action_175
action_139 (54) = happyShift action_176
action_139 (83) = happyShift action_177
action_139 _ = happyReduce_94

action_140 (101) = happyShift action_174
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (52) = happyShift action_141
action_141 (55) = happyShift action_142
action_141 (85) = happyShift action_77
action_141 (98) = happyShift action_143
action_141 (17) = happyGoto action_137
action_141 (20) = happyGoto action_138
action_141 (30) = happyGoto action_173
action_141 _ = happyFail (happyExpListPerState 141)

action_142 (87) = happyShift action_168
action_142 (88) = happyShift action_169
action_142 (89) = happyShift action_170
action_142 (90) = happyShift action_171
action_142 (91) = happyShift action_172
action_142 (23) = happyGoto action_167
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (52) = happyShift action_141
action_143 (55) = happyShift action_142
action_143 (85) = happyShift action_77
action_143 (98) = happyShift action_143
action_143 (17) = happyGoto action_137
action_143 (20) = happyGoto action_138
action_143 (30) = happyGoto action_166
action_143 _ = happyFail (happyExpListPerState 143)

action_144 _ = happyReduce_72

action_145 (41) = happyShift action_16
action_145 (44) = happyShift action_17
action_145 (46) = happyShift action_18
action_145 (50) = happyShift action_19
action_145 (56) = happyShift action_20
action_145 (59) = happyShift action_21
action_145 (61) = happyShift action_22
action_145 (62) = happyShift action_23
action_145 (63) = happyShift action_24
action_145 (69) = happyShift action_25
action_145 (72) = happyShift action_26
action_145 (77) = happyShift action_27
action_145 (78) = happyShift action_28
action_145 (79) = happyShift action_29
action_145 (80) = happyShift action_30
action_145 (81) = happyShift action_31
action_145 (98) = happyShift action_32
action_145 (107) = happyShift action_33
action_145 (7) = happyGoto action_165
action_145 (8) = happyGoto action_8
action_145 (9) = happyGoto action_9
action_145 (10) = happyGoto action_10
action_145 (11) = happyGoto action_11
action_145 (12) = happyGoto action_12
action_145 (13) = happyGoto action_13
action_145 (14) = happyGoto action_14
action_145 (15) = happyGoto action_15
action_145 _ = happyFail (happyExpListPerState 145)

action_146 _ = happyReduce_71

action_147 (85) = happyShift action_77
action_147 (20) = happyGoto action_80
action_147 (34) = happyGoto action_164
action_147 _ = happyFail (happyExpListPerState 147)

action_148 (101) = happyShift action_163
action_148 _ = happyFail (happyExpListPerState 148)

action_149 _ = happyReduce_76

action_150 (83) = happyShift action_162
action_150 _ = happyReduce_98

action_151 (41) = happyShift action_16
action_151 (44) = happyShift action_17
action_151 (46) = happyShift action_18
action_151 (50) = happyShift action_19
action_151 (56) = happyShift action_20
action_151 (59) = happyShift action_21
action_151 (61) = happyShift action_22
action_151 (62) = happyShift action_23
action_151 (63) = happyShift action_24
action_151 (69) = happyShift action_25
action_151 (72) = happyShift action_26
action_151 (77) = happyShift action_27
action_151 (78) = happyShift action_28
action_151 (79) = happyShift action_29
action_151 (80) = happyShift action_30
action_151 (81) = happyShift action_31
action_151 (98) = happyShift action_32
action_151 (107) = happyShift action_33
action_151 (7) = happyGoto action_161
action_151 (8) = happyGoto action_8
action_151 (9) = happyGoto action_9
action_151 (10) = happyGoto action_10
action_151 (11) = happyGoto action_11
action_151 (12) = happyGoto action_12
action_151 (13) = happyGoto action_13
action_151 (14) = happyGoto action_14
action_151 (15) = happyGoto action_15
action_151 _ = happyFail (happyExpListPerState 151)

action_152 _ = happyReduce_58

action_153 (41) = happyShift action_16
action_153 (44) = happyShift action_17
action_153 (46) = happyShift action_18
action_153 (50) = happyShift action_19
action_153 (56) = happyShift action_20
action_153 (59) = happyShift action_21
action_153 (61) = happyShift action_22
action_153 (62) = happyShift action_23
action_153 (63) = happyShift action_24
action_153 (69) = happyShift action_25
action_153 (72) = happyShift action_26
action_153 (77) = happyShift action_27
action_153 (78) = happyShift action_28
action_153 (79) = happyShift action_29
action_153 (80) = happyShift action_30
action_153 (81) = happyShift action_31
action_153 (98) = happyShift action_32
action_153 (107) = happyShift action_33
action_153 (7) = happyGoto action_160
action_153 (8) = happyGoto action_8
action_153 (9) = happyGoto action_9
action_153 (10) = happyGoto action_10
action_153 (11) = happyGoto action_11
action_153 (12) = happyGoto action_12
action_153 (13) = happyGoto action_13
action_153 (14) = happyGoto action_14
action_153 (15) = happyGoto action_15
action_153 _ = happyFail (happyExpListPerState 153)

action_154 (45) = happyShift action_159
action_154 _ = happyFail (happyExpListPerState 154)

action_155 _ = happyReduce_19

action_156 (45) = happyShift action_158
action_156 _ = happyFail (happyExpListPerState 156)

action_157 _ = happyReduce_18

action_158 (41) = happyShift action_16
action_158 (44) = happyShift action_17
action_158 (46) = happyShift action_18
action_158 (50) = happyShift action_19
action_158 (56) = happyShift action_20
action_158 (59) = happyShift action_21
action_158 (61) = happyShift action_22
action_158 (62) = happyShift action_23
action_158 (63) = happyShift action_24
action_158 (69) = happyShift action_25
action_158 (72) = happyShift action_26
action_158 (77) = happyShift action_27
action_158 (78) = happyShift action_28
action_158 (79) = happyShift action_29
action_158 (80) = happyShift action_30
action_158 (81) = happyShift action_31
action_158 (98) = happyShift action_32
action_158 (107) = happyShift action_33
action_158 (7) = happyGoto action_230
action_158 (8) = happyGoto action_8
action_158 (9) = happyGoto action_9
action_158 (10) = happyGoto action_10
action_158 (11) = happyGoto action_11
action_158 (12) = happyGoto action_12
action_158 (13) = happyGoto action_13
action_158 (14) = happyGoto action_14
action_158 (15) = happyGoto action_15
action_158 _ = happyFail (happyExpListPerState 158)

action_159 (41) = happyShift action_16
action_159 (44) = happyShift action_17
action_159 (46) = happyShift action_18
action_159 (50) = happyShift action_19
action_159 (56) = happyShift action_20
action_159 (59) = happyShift action_21
action_159 (61) = happyShift action_22
action_159 (62) = happyShift action_23
action_159 (63) = happyShift action_24
action_159 (69) = happyShift action_25
action_159 (72) = happyShift action_26
action_159 (77) = happyShift action_27
action_159 (78) = happyShift action_28
action_159 (79) = happyShift action_29
action_159 (80) = happyShift action_30
action_159 (81) = happyShift action_31
action_159 (98) = happyShift action_32
action_159 (107) = happyShift action_33
action_159 (7) = happyGoto action_229
action_159 (8) = happyGoto action_8
action_159 (9) = happyGoto action_9
action_159 (10) = happyGoto action_10
action_159 (11) = happyGoto action_11
action_159 (12) = happyGoto action_12
action_159 (13) = happyGoto action_13
action_159 (14) = happyGoto action_14
action_159 (15) = happyGoto action_15
action_159 _ = happyFail (happyExpListPerState 159)

action_160 _ = happyReduce_23

action_161 _ = happyReduce_22

action_162 (106) = happyShift action_150
action_162 (37) = happyGoto action_228
action_162 _ = happyFail (happyExpListPerState 162)

action_163 _ = happyReduce_77

action_164 _ = happyReduce_93

action_165 _ = happyReduce_26

action_166 (53) = happyShift action_175
action_166 (54) = happyShift action_176
action_166 (99) = happyShift action_227
action_166 _ = happyFail (happyExpListPerState 166)

action_167 (104) = happyShift action_226
action_167 _ = happyFail (happyExpListPerState 167)

action_168 _ = happyReduce_61

action_169 _ = happyReduce_62

action_170 _ = happyReduce_64

action_171 _ = happyReduce_63

action_172 _ = happyReduce_65

action_173 (53) = happyShift action_175
action_173 (54) = happyShift action_176
action_173 _ = happyReduce_78

action_174 _ = happyReduce_73

action_175 (52) = happyShift action_141
action_175 (55) = happyShift action_142
action_175 (85) = happyShift action_77
action_175 (98) = happyShift action_143
action_175 (17) = happyGoto action_137
action_175 (20) = happyGoto action_138
action_175 (30) = happyGoto action_225
action_175 _ = happyFail (happyExpListPerState 175)

action_176 (52) = happyShift action_141
action_176 (55) = happyShift action_142
action_176 (85) = happyShift action_77
action_176 (98) = happyShift action_143
action_176 (17) = happyGoto action_137
action_176 (20) = happyGoto action_138
action_176 (30) = happyGoto action_224
action_176 _ = happyFail (happyExpListPerState 176)

action_177 (52) = happyShift action_141
action_177 (55) = happyShift action_142
action_177 (85) = happyShift action_77
action_177 (98) = happyShift action_143
action_177 (17) = happyGoto action_137
action_177 (20) = happyGoto action_138
action_177 (30) = happyGoto action_139
action_177 (35) = happyGoto action_223
action_177 _ = happyFail (happyExpListPerState 177)

action_178 (85) = happyShift action_77
action_178 (106) = happyShift action_222
action_178 (20) = happyGoto action_221
action_178 _ = happyFail (happyExpListPerState 178)

action_179 _ = happyReduce_52

action_180 _ = happyReduce_53

action_181 _ = happyReduce_54

action_182 _ = happyReduce_55

action_183 _ = happyReduce_56

action_184 _ = happyReduce_57

action_185 _ = happyReduce_27

action_186 (71) = happyShift action_220
action_186 _ = happyFail (happyExpListPerState 186)

action_187 _ = happyReduce_69

action_188 (85) = happyShift action_77
action_188 (20) = happyGoto action_130
action_188 (22) = happyGoto action_131
action_188 (33) = happyGoto action_219
action_188 _ = happyFail (happyExpListPerState 188)

action_189 (106) = happyShift action_218
action_189 _ = happyFail (happyExpListPerState 189)

action_190 _ = happyReduce_32

action_191 (41) = happyShift action_16
action_191 (44) = happyShift action_17
action_191 (46) = happyShift action_18
action_191 (50) = happyShift action_19
action_191 (56) = happyShift action_20
action_191 (59) = happyShift action_21
action_191 (61) = happyShift action_22
action_191 (62) = happyShift action_23
action_191 (63) = happyShift action_24
action_191 (69) = happyShift action_25
action_191 (72) = happyShift action_26
action_191 (77) = happyShift action_27
action_191 (78) = happyShift action_28
action_191 (79) = happyShift action_29
action_191 (80) = happyShift action_30
action_191 (81) = happyShift action_31
action_191 (98) = happyShift action_32
action_191 (107) = happyShift action_33
action_191 (7) = happyGoto action_217
action_191 (8) = happyGoto action_8
action_191 (9) = happyGoto action_9
action_191 (10) = happyGoto action_10
action_191 (11) = happyGoto action_11
action_191 (12) = happyGoto action_12
action_191 (13) = happyGoto action_13
action_191 (14) = happyGoto action_14
action_191 (15) = happyGoto action_15
action_191 _ = happyFail (happyExpListPerState 191)

action_192 (41) = happyShift action_16
action_192 (44) = happyShift action_17
action_192 (46) = happyShift action_18
action_192 (50) = happyShift action_19
action_192 (56) = happyShift action_20
action_192 (59) = happyShift action_21
action_192 (61) = happyShift action_22
action_192 (62) = happyShift action_23
action_192 (63) = happyShift action_24
action_192 (69) = happyShift action_25
action_192 (72) = happyShift action_26
action_192 (77) = happyShift action_27
action_192 (78) = happyShift action_28
action_192 (79) = happyShift action_29
action_192 (80) = happyShift action_30
action_192 (81) = happyShift action_31
action_192 (98) = happyShift action_32
action_192 (107) = happyShift action_33
action_192 (7) = happyGoto action_216
action_192 (8) = happyGoto action_8
action_192 (9) = happyGoto action_9
action_192 (10) = happyGoto action_10
action_192 (11) = happyGoto action_11
action_192 (12) = happyGoto action_12
action_192 (13) = happyGoto action_13
action_192 (14) = happyGoto action_14
action_192 (15) = happyGoto action_15
action_192 _ = happyFail (happyExpListPerState 192)

action_193 (41) = happyShift action_16
action_193 (44) = happyShift action_17
action_193 (46) = happyShift action_18
action_193 (50) = happyShift action_19
action_193 (56) = happyShift action_20
action_193 (59) = happyShift action_21
action_193 (61) = happyShift action_22
action_193 (62) = happyShift action_23
action_193 (63) = happyShift action_24
action_193 (69) = happyShift action_25
action_193 (72) = happyShift action_26
action_193 (77) = happyShift action_27
action_193 (78) = happyShift action_28
action_193 (79) = happyShift action_29
action_193 (80) = happyShift action_30
action_193 (81) = happyShift action_31
action_193 (98) = happyShift action_32
action_193 (107) = happyShift action_33
action_193 (7) = happyGoto action_215
action_193 (8) = happyGoto action_8
action_193 (9) = happyGoto action_9
action_193 (10) = happyGoto action_10
action_193 (11) = happyGoto action_11
action_193 (12) = happyGoto action_12
action_193 (13) = happyGoto action_13
action_193 (14) = happyGoto action_14
action_193 (15) = happyGoto action_15
action_193 _ = happyFail (happyExpListPerState 193)

action_194 (41) = happyShift action_16
action_194 (44) = happyShift action_17
action_194 (46) = happyShift action_18
action_194 (50) = happyShift action_19
action_194 (56) = happyShift action_20
action_194 (59) = happyShift action_21
action_194 (61) = happyShift action_22
action_194 (62) = happyShift action_23
action_194 (63) = happyShift action_24
action_194 (69) = happyShift action_25
action_194 (72) = happyShift action_26
action_194 (77) = happyShift action_27
action_194 (78) = happyShift action_28
action_194 (79) = happyShift action_29
action_194 (80) = happyShift action_30
action_194 (81) = happyShift action_31
action_194 (98) = happyShift action_32
action_194 (107) = happyShift action_33
action_194 (7) = happyGoto action_214
action_194 (8) = happyGoto action_8
action_194 (9) = happyGoto action_9
action_194 (10) = happyGoto action_10
action_194 (11) = happyGoto action_11
action_194 (12) = happyGoto action_12
action_194 (13) = happyGoto action_13
action_194 (14) = happyGoto action_14
action_194 (15) = happyGoto action_15
action_194 _ = happyFail (happyExpListPerState 194)

action_195 (41) = happyShift action_16
action_195 (44) = happyShift action_17
action_195 (46) = happyShift action_18
action_195 (50) = happyShift action_19
action_195 (56) = happyShift action_20
action_195 (59) = happyShift action_21
action_195 (61) = happyShift action_22
action_195 (62) = happyShift action_23
action_195 (63) = happyShift action_24
action_195 (69) = happyShift action_25
action_195 (72) = happyShift action_26
action_195 (77) = happyShift action_27
action_195 (78) = happyShift action_28
action_195 (79) = happyShift action_29
action_195 (80) = happyShift action_30
action_195 (81) = happyShift action_31
action_195 (98) = happyShift action_32
action_195 (107) = happyShift action_33
action_195 (7) = happyGoto action_213
action_195 (8) = happyGoto action_8
action_195 (9) = happyGoto action_9
action_195 (10) = happyGoto action_10
action_195 (11) = happyGoto action_11
action_195 (12) = happyGoto action_12
action_195 (13) = happyGoto action_13
action_195 (14) = happyGoto action_14
action_195 (15) = happyGoto action_15
action_195 _ = happyFail (happyExpListPerState 195)

action_196 (71) = happyShift action_212
action_196 _ = happyFail (happyExpListPerState 196)

action_197 (53) = happyShift action_201
action_197 (54) = happyShift action_202
action_197 (99) = happyShift action_211
action_197 _ = happyFail (happyExpListPerState 197)

action_198 (85) = happyShift action_77
action_198 (20) = happyGoto action_210
action_198 _ = happyFail (happyExpListPerState 198)

action_199 (53) = happyShift action_201
action_199 (54) = happyShift action_202
action_199 _ = happyReduce_83

action_200 _ = happyReduce_75

action_201 (52) = happyShift action_116
action_201 (65) = happyShift action_117
action_201 (98) = happyShift action_118
action_201 (18) = happyGoto action_113
action_201 (31) = happyGoto action_209
action_201 _ = happyFail (happyExpListPerState 201)

action_202 (52) = happyShift action_116
action_202 (65) = happyShift action_117
action_202 (98) = happyShift action_118
action_202 (18) = happyGoto action_113
action_202 (31) = happyGoto action_208
action_202 _ = happyFail (happyExpListPerState 202)

action_203 (52) = happyShift action_116
action_203 (65) = happyShift action_117
action_203 (98) = happyShift action_118
action_203 (18) = happyGoto action_113
action_203 (31) = happyGoto action_114
action_203 (36) = happyGoto action_207
action_203 _ = happyFail (happyExpListPerState 203)

action_204 (41) = happyShift action_16
action_204 (44) = happyShift action_17
action_204 (46) = happyShift action_18
action_204 (50) = happyShift action_19
action_204 (56) = happyShift action_20
action_204 (59) = happyShift action_21
action_204 (61) = happyShift action_22
action_204 (62) = happyShift action_23
action_204 (63) = happyShift action_24
action_204 (69) = happyShift action_25
action_204 (72) = happyShift action_26
action_204 (77) = happyShift action_27
action_204 (78) = happyShift action_28
action_204 (79) = happyShift action_29
action_204 (80) = happyShift action_30
action_204 (81) = happyShift action_31
action_204 (98) = happyShift action_32
action_204 (107) = happyShift action_33
action_204 (7) = happyGoto action_206
action_204 (8) = happyGoto action_8
action_204 (9) = happyGoto action_9
action_204 (10) = happyGoto action_10
action_204 (11) = happyGoto action_11
action_204 (12) = happyGoto action_12
action_204 (13) = happyGoto action_13
action_204 (14) = happyGoto action_14
action_204 (15) = happyGoto action_15
action_204 _ = happyFail (happyExpListPerState 204)

action_205 _ = happyReduce_5

action_206 _ = happyReduce_40

action_207 _ = happyReduce_97

action_208 (54) = happyFail []
action_208 _ = happyReduce_85

action_209 (53) = happyFail []
action_209 (54) = happyShift action_202
action_209 _ = happyReduce_84

action_210 (92) = happyShift action_179
action_210 (93) = happyShift action_180
action_210 (94) = happyShift action_181
action_210 (95) = happyShift action_182
action_210 (96) = happyShift action_183
action_210 (97) = happyShift action_184
action_210 (19) = happyGoto action_238
action_210 _ = happyFail (happyExpListPerState 210)

action_211 _ = happyReduce_87

action_212 (41) = happyShift action_16
action_212 (44) = happyShift action_17
action_212 (46) = happyShift action_18
action_212 (50) = happyShift action_19
action_212 (56) = happyShift action_20
action_212 (59) = happyShift action_21
action_212 (61) = happyShift action_22
action_212 (62) = happyShift action_23
action_212 (63) = happyShift action_24
action_212 (69) = happyShift action_25
action_212 (72) = happyShift action_26
action_212 (77) = happyShift action_27
action_212 (78) = happyShift action_28
action_212 (79) = happyShift action_29
action_212 (80) = happyShift action_30
action_212 (81) = happyShift action_31
action_212 (98) = happyShift action_32
action_212 (107) = happyShift action_33
action_212 (7) = happyGoto action_237
action_212 (8) = happyGoto action_8
action_212 (9) = happyGoto action_9
action_212 (10) = happyGoto action_10
action_212 (11) = happyGoto action_11
action_212 (12) = happyGoto action_12
action_212 (13) = happyGoto action_13
action_212 (14) = happyGoto action_14
action_212 (15) = happyGoto action_15
action_212 _ = happyFail (happyExpListPerState 212)

action_213 (53) = happyShift action_236
action_213 _ = happyFail (happyExpListPerState 213)

action_214 (53) = happyShift action_235
action_214 _ = happyFail (happyExpListPerState 214)

action_215 (53) = happyShift action_234
action_215 _ = happyFail (happyExpListPerState 215)

action_216 (53) = happyShift action_233
action_216 _ = happyFail (happyExpListPerState 216)

action_217 _ = happyReduce_37

action_218 _ = happyReduce_60

action_219 _ = happyReduce_91

action_220 (41) = happyShift action_16
action_220 (44) = happyShift action_17
action_220 (46) = happyShift action_18
action_220 (50) = happyShift action_19
action_220 (56) = happyShift action_20
action_220 (59) = happyShift action_21
action_220 (61) = happyShift action_22
action_220 (62) = happyShift action_23
action_220 (63) = happyShift action_24
action_220 (69) = happyShift action_25
action_220 (72) = happyShift action_26
action_220 (77) = happyShift action_27
action_220 (78) = happyShift action_28
action_220 (79) = happyShift action_29
action_220 (80) = happyShift action_30
action_220 (81) = happyShift action_31
action_220 (98) = happyShift action_32
action_220 (107) = happyShift action_33
action_220 (7) = happyGoto action_232
action_220 (8) = happyGoto action_8
action_220 (9) = happyGoto action_9
action_220 (10) = happyGoto action_10
action_220 (11) = happyGoto action_11
action_220 (12) = happyGoto action_12
action_220 (13) = happyGoto action_13
action_220 (14) = happyGoto action_14
action_220 (15) = happyGoto action_15
action_220 _ = happyFail (happyExpListPerState 220)

action_221 _ = happyReduce_49

action_222 _ = happyReduce_48

action_223 _ = happyReduce_95

action_224 (54) = happyFail []
action_224 _ = happyReduce_80

action_225 (53) = happyFail []
action_225 (54) = happyShift action_176
action_225 _ = happyReduce_79

action_226 (92) = happyShift action_179
action_226 (93) = happyShift action_180
action_226 (94) = happyShift action_181
action_226 (95) = happyShift action_182
action_226 (96) = happyShift action_183
action_226 (97) = happyShift action_184
action_226 (19) = happyGoto action_231
action_226 _ = happyFail (happyExpListPerState 226)

action_227 _ = happyReduce_82

action_228 _ = happyReduce_99

action_229 _ = happyReduce_21

action_230 _ = happyReduce_20

action_231 (104) = happyShift action_245
action_231 _ = happyFail (happyExpListPerState 231)

action_232 _ = happyReduce_28

action_233 (41) = happyShift action_16
action_233 (44) = happyShift action_17
action_233 (46) = happyShift action_18
action_233 (50) = happyShift action_19
action_233 (56) = happyShift action_20
action_233 (59) = happyShift action_21
action_233 (61) = happyShift action_22
action_233 (62) = happyShift action_23
action_233 (63) = happyShift action_24
action_233 (69) = happyShift action_25
action_233 (72) = happyShift action_26
action_233 (77) = happyShift action_27
action_233 (78) = happyShift action_28
action_233 (79) = happyShift action_29
action_233 (80) = happyShift action_30
action_233 (81) = happyShift action_31
action_233 (98) = happyShift action_32
action_233 (107) = happyShift action_33
action_233 (7) = happyGoto action_244
action_233 (8) = happyGoto action_8
action_233 (9) = happyGoto action_9
action_233 (10) = happyGoto action_10
action_233 (11) = happyGoto action_11
action_233 (12) = happyGoto action_12
action_233 (13) = happyGoto action_13
action_233 (14) = happyGoto action_14
action_233 (15) = happyGoto action_15
action_233 _ = happyFail (happyExpListPerState 233)

action_234 (41) = happyShift action_16
action_234 (44) = happyShift action_17
action_234 (46) = happyShift action_18
action_234 (50) = happyShift action_19
action_234 (56) = happyShift action_20
action_234 (59) = happyShift action_21
action_234 (61) = happyShift action_22
action_234 (62) = happyShift action_23
action_234 (63) = happyShift action_24
action_234 (69) = happyShift action_25
action_234 (72) = happyShift action_26
action_234 (77) = happyShift action_27
action_234 (78) = happyShift action_28
action_234 (79) = happyShift action_29
action_234 (80) = happyShift action_30
action_234 (81) = happyShift action_31
action_234 (98) = happyShift action_32
action_234 (107) = happyShift action_33
action_234 (7) = happyGoto action_243
action_234 (8) = happyGoto action_8
action_234 (9) = happyGoto action_9
action_234 (10) = happyGoto action_10
action_234 (11) = happyGoto action_11
action_234 (12) = happyGoto action_12
action_234 (13) = happyGoto action_13
action_234 (14) = happyGoto action_14
action_234 (15) = happyGoto action_15
action_234 _ = happyFail (happyExpListPerState 234)

action_235 (41) = happyShift action_16
action_235 (44) = happyShift action_17
action_235 (46) = happyShift action_18
action_235 (50) = happyShift action_19
action_235 (56) = happyShift action_20
action_235 (59) = happyShift action_21
action_235 (61) = happyShift action_22
action_235 (62) = happyShift action_23
action_235 (63) = happyShift action_24
action_235 (69) = happyShift action_25
action_235 (72) = happyShift action_26
action_235 (77) = happyShift action_27
action_235 (78) = happyShift action_28
action_235 (79) = happyShift action_29
action_235 (80) = happyShift action_30
action_235 (81) = happyShift action_31
action_235 (98) = happyShift action_32
action_235 (107) = happyShift action_33
action_235 (7) = happyGoto action_242
action_235 (8) = happyGoto action_8
action_235 (9) = happyGoto action_9
action_235 (10) = happyGoto action_10
action_235 (11) = happyGoto action_11
action_235 (12) = happyGoto action_12
action_235 (13) = happyGoto action_13
action_235 (14) = happyGoto action_14
action_235 (15) = happyGoto action_15
action_235 _ = happyFail (happyExpListPerState 235)

action_236 (41) = happyShift action_16
action_236 (44) = happyShift action_17
action_236 (46) = happyShift action_18
action_236 (50) = happyShift action_19
action_236 (56) = happyShift action_20
action_236 (59) = happyShift action_21
action_236 (61) = happyShift action_22
action_236 (62) = happyShift action_23
action_236 (63) = happyShift action_24
action_236 (69) = happyShift action_25
action_236 (72) = happyShift action_26
action_236 (77) = happyShift action_27
action_236 (78) = happyShift action_28
action_236 (79) = happyShift action_29
action_236 (80) = happyShift action_30
action_236 (81) = happyShift action_31
action_236 (98) = happyShift action_32
action_236 (107) = happyShift action_33
action_236 (7) = happyGoto action_241
action_236 (8) = happyGoto action_8
action_236 (9) = happyGoto action_9
action_236 (10) = happyGoto action_10
action_236 (11) = happyGoto action_11
action_236 (12) = happyGoto action_12
action_236 (13) = happyGoto action_13
action_236 (14) = happyGoto action_14
action_236 (15) = happyGoto action_15
action_236 _ = happyFail (happyExpListPerState 236)

action_237 (53) = happyShift action_240
action_237 _ = happyFail (happyExpListPerState 237)

action_238 (66) = happyShift action_239
action_238 _ = happyFail (happyExpListPerState 238)

action_239 (84) = happyShift action_247
action_239 _ = happyFail (happyExpListPerState 239)

action_240 (41) = happyShift action_16
action_240 (44) = happyShift action_17
action_240 (46) = happyShift action_18
action_240 (50) = happyShift action_19
action_240 (56) = happyShift action_20
action_240 (59) = happyShift action_21
action_240 (61) = happyShift action_22
action_240 (62) = happyShift action_23
action_240 (63) = happyShift action_24
action_240 (69) = happyShift action_25
action_240 (72) = happyShift action_26
action_240 (77) = happyShift action_27
action_240 (78) = happyShift action_28
action_240 (79) = happyShift action_29
action_240 (80) = happyShift action_30
action_240 (81) = happyShift action_31
action_240 (98) = happyShift action_32
action_240 (107) = happyShift action_33
action_240 (7) = happyGoto action_246
action_240 (8) = happyGoto action_8
action_240 (9) = happyGoto action_9
action_240 (10) = happyGoto action_10
action_240 (11) = happyGoto action_11
action_240 (12) = happyGoto action_12
action_240 (13) = happyGoto action_13
action_240 (14) = happyGoto action_14
action_240 (15) = happyGoto action_15
action_240 _ = happyFail (happyExpListPerState 240)

action_241 _ = happyReduce_33

action_242 _ = happyReduce_34

action_243 _ = happyReduce_35

action_244 _ = happyReduce_36

action_245 _ = happyReduce_50

action_246 _ = happyReduce_38

action_247 (85) = happyShift action_77
action_247 (20) = happyGoto action_248
action_247 _ = happyFail (happyExpListPerState 247)

action_248 _ = happyReduce_51

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn24  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (SetupProgram happy_var_2 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (Program happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn5
		 (PrettyPrint
	)

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn5
		 (LoadFromTsv
	)

happyReduce_5 = happyReduce 6 6 happyReduction_5
happyReduction_5 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Return happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  7 happyReduction_7
happyReduction_7 (HappyTerminal (TokenFilename _ happy_var_2))
	_
	 =  HappyAbsSyn7
		 (Read happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Function happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Select happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (Insert happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (Delete happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn8
		 (Update happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn8
		 (Set happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  8 happyReduction_16
happyReduction_16 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn8
		 (Join happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  8 happyReduction_17
happyReduction_17 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn8
		 (Format happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 9 happyReduction_18
happyReduction_18 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectAll happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 9 happyReduction_19
happyReduction_19 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectCol happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 6 9 happyReduction_20
happyReduction_20 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectAllWhere happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 9 happyReduction_21
happyReduction_21 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectColWhere happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 5 10 happyReduction_22
happyReduction_22 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn29  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (InsertValues happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 5 10 happyReduction_23
happyReduction_23 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (InsertColumn happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_2  11 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (DeleteAll happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 11 happyReduction_25
happyReduction_25 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (DeleteCol happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 5 11 happyReduction_26
happyReduction_26 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (DeleteAllWhere happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 5 12 happyReduction_27
happyReduction_27 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn25  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (UpdateAll happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 7 12 happyReduction_28
happyReduction_28 ((HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn25  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (UpdateWhere happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 4 13 happyReduction_29
happyReduction_29 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Union happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 13 happyReduction_30
happyReduction_30 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Intersection happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 13 happyReduction_31
happyReduction_31 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Difference happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 5 14 happyReduction_32
happyReduction_32 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinStandard happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 8 14 happyReduction_33
happyReduction_33 ((HappyAbsSyn7  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinInner happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 8 14 happyReduction_34
happyReduction_34 ((HappyAbsSyn7  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinLeft happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 8 14 happyReduction_35
happyReduction_35 ((HappyAbsSyn7  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinRight happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 8 14 happyReduction_36
happyReduction_36 ((HappyAbsSyn7  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinOuter happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 6 14 happyReduction_37
happyReduction_37 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinFull happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 9 14 happyReduction_38
happyReduction_38 ((HappyAbsSyn7  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinMerge happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 15 happyReduction_39
happyReduction_39 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 6 15 happyReduction_40
happyReduction_40 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	(HappyAbsSyn26  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (OrderByCol happy_var_3 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_3  15 happyReduction_41
happyReduction_41 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  15 happyReduction_42
happyReduction_42 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  15 happyReduction_43
happyReduction_43 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Last happy_var_2 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  15 happyReduction_44
happyReduction_44 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (Unique happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  15 happyReduction_45
happyReduction_45 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (Transpose happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  16 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn16
		 (Asc
	)

happyReduce_47 = happySpecReduce_1  16 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn16
		 (Desc
	)

happyReduce_48 = happySpecReduce_3  17 happyReduction_48
happyReduction_48 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn17
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  17 happyReduction_49
happyReduction_49 (HappyAbsSyn20  happy_var_3)
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn17
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happyReduce 5 17 happyReduction_50
happyReduction_50 ((HappyTerminal (TokenInt  _ happy_var_5)) `HappyStk`
	(HappyAbsSyn19  happy_var_4) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_3)) `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (IndexVal happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_51 = happyReduce 7 18 happyReduction_51
happyReduction_51 ((HappyAbsSyn20  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_4) `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (TableComparison happy_var_3 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_52 = happySpecReduce_1  19 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn19
		 (Eq
	)

happyReduce_53 = happySpecReduce_1  19 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn19
		 (LessThan
	)

happyReduce_54 = happySpecReduce_1  19 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn19
		 (GreaterThan
	)

happyReduce_55 = happySpecReduce_1  19 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn19
		 (LessThanEq
	)

happyReduce_56 = happySpecReduce_1  19 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn19
		 (GreaterThanEq
	)

happyReduce_57 = happySpecReduce_1  19 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn19
		 (NotEq
	)

happyReduce_58 = happySpecReduce_2  20 happyReduction_58
happyReduction_58 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_58 _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  21 happyReduction_59
happyReduction_59 (HappyAbsSyn20  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn21
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  22 happyReduction_60
happyReduction_60 (HappyTerminal (TokenStr _ happy_var_3))
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn22
		 (Assignment happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  23 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn23
		 (Add
	)

happyReduce_62 = happySpecReduce_1  23 happyReduction_62
happyReduction_62 _
	 =  HappyAbsSyn23
		 (Subtract
	)

happyReduce_63 = happySpecReduce_1  23 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn23
		 (Divide
	)

happyReduce_64 = happySpecReduce_1  23 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn23
		 (Multiply
	)

happyReduce_65 = happySpecReduce_1  23 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn23
		 (Modulo
	)

happyReduce_66 = happySpecReduce_2  24 happyReduction_66
happyReduction_66 _
	_
	 =  HappyAbsSyn24
		 ([]
	)

happyReduce_67 = happySpecReduce_3  24 happyReduction_67
happyReduction_67 _
	(HappyAbsSyn32  happy_var_2)
	_
	 =  HappyAbsSyn24
		 (happy_var_2
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_2  25 happyReduction_68
happyReduction_68 _
	_
	 =  HappyAbsSyn25
		 ([]
	)

happyReduce_69 = happySpecReduce_3  25 happyReduction_69
happyReduction_69 _
	(HappyAbsSyn33  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (happy_var_2
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_2  26 happyReduction_70
happyReduction_70 _
	_
	 =  HappyAbsSyn26
		 ([]
	)

happyReduce_71 = happySpecReduce_3  26 happyReduction_71
happyReduction_71 _
	(HappyAbsSyn34  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (happy_var_2
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_2  27 happyReduction_72
happyReduction_72 _
	_
	 =  HappyAbsSyn27
		 ([]
	)

happyReduce_73 = happySpecReduce_3  27 happyReduction_73
happyReduction_73 _
	(HappyAbsSyn35  happy_var_2)
	_
	 =  HappyAbsSyn27
		 (happy_var_2
	)
happyReduction_73 _ _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_2  28 happyReduction_74
happyReduction_74 _
	_
	 =  HappyAbsSyn28
		 ([]
	)

happyReduce_75 = happySpecReduce_3  28 happyReduction_75
happyReduction_75 _
	(HappyAbsSyn36  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (happy_var_2
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_2  29 happyReduction_76
happyReduction_76 _
	_
	 =  HappyAbsSyn29
		 ([]
	)

happyReduce_77 = happySpecReduce_3  29 happyReduction_77
happyReduction_77 _
	(HappyAbsSyn37  happy_var_2)
	_
	 =  HappyAbsSyn29
		 (happy_var_2
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_2  30 happyReduction_78
happyReduction_78 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (Not happy_var_2
	)
happyReduction_78 _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_3  30 happyReduction_79
happyReduction_79 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (And happy_var_1 happy_var_3
	)
happyReduction_79 _ _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  30 happyReduction_80
happyReduction_80 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Or happy_var_1 happy_var_3
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  30 happyReduction_81
happyReduction_81 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn30
		 (Comparison happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  30 happyReduction_82
happyReduction_82 _
	(HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (happy_var_2
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_2  31 happyReduction_83
happyReduction_83 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (Not happy_var_2
	)
happyReduction_83 _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  31 happyReduction_84
happyReduction_84 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (And happy_var_1 happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  31 happyReduction_85
happyReduction_85 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (Or happy_var_1 happy_var_3
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_1  31 happyReduction_86
happyReduction_86 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn31
		 (Comparison happy_var_1
	)
happyReduction_86 _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  31 happyReduction_87
happyReduction_87 _
	(HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (happy_var_2
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_1  32 happyReduction_88
happyReduction_88 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1]
	)
happyReduction_88 _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_3  32 happyReduction_89
happyReduction_89 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_89 _ _ _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_1  33 happyReduction_90
happyReduction_90 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 ([happy_var_1]
	)
happyReduction_90 _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  33 happyReduction_91
happyReduction_91 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_1  34 happyReduction_92
happyReduction_92 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1]
	)
happyReduction_92 _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_3  34 happyReduction_93
happyReduction_93 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_93 _ _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_1  35 happyReduction_94
happyReduction_94 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1]
	)
happyReduction_94 _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_3  35 happyReduction_95
happyReduction_95 (HappyAbsSyn35  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_95 _ _ _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_1  36 happyReduction_96
happyReduction_96 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1]
	)
happyReduction_96 _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_3  36 happyReduction_97
happyReduction_97 (HappyAbsSyn36  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_97 _ _ _  = notHappyAtAll 

happyReduce_98 = happySpecReduce_1  37 happyReduction_98
happyReduction_98 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn37
		 ([happy_var_1]
	)
happyReduction_98 _  = notHappyAtAll 

happyReduce_99 = happySpecReduce_3  37 happyReduction_99
happyReduction_99 (HappyAbsSyn37  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn37
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_99 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 108 108 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenSetup _ -> cont 38;
	TokenPrettyPrint _ -> cont 39;
	TokenLoadFromTsv _ -> cont 40;
	TokenRead _ -> cont 41;
	TokenLet _ -> cont 42;
	TokenReturn _ -> cont 43;
	TokenSelect _ -> cont 44;
	TokenFrom _ -> cont 45;
	TokenInsert _ -> cont 46;
	TokenInto _ -> cont 47;
	TokenValues _ -> cont 48;
	TokenColumn _ -> cont 49;
	TokenDelete _ -> cont 50;
	TokenWhere _ -> cont 51;
	TokenNot _ -> cont 52;
	TokenAnd _ -> cont 53;
	TokenOr _ -> cont 54;
	TokenIndex _ -> cont 55;
	TokenUpdate _ -> cont 56;
	TokenTo _ -> cont 57;
	TokenSet _ -> cont 58;
	TokenUnion _ -> cont 59;
	TokenAll _ -> cont 60;
	TokenIntersection _ -> cont 61;
	TokenDifference _ -> cont 62;
	TokenJoin _ -> cont 63;
	TokenInner _ -> cont 64;
	TokenLeft _ -> cont 65;
	TokenRight _ -> cont 66;
	TokenOuter _ -> cont 67;
	TokenFull _ -> cont 68;
	TokenMerge _ -> cont 69;
	TokenKeeping _ -> cont 70;
	TokenOn _ -> cont 71;
	TokenOrder _ -> cont 72;
	TokenIn _ -> cont 73;
	TokenBy _ -> cont 74;
	TokenAsc _ -> cont 75;
	TokenDesc _ -> cont 76;
	TokenLimit _ -> cont 77;
	TokenOffset _ -> cont 78;
	TokenLast _ -> cont 79;
	TokenUnique _ -> cont 80;
	TokenTranspose _ -> cont 81;
	TokenSep _ -> cont 82;
	TokenComma _ -> cont 83;
	TokenDot _ -> cont 84;
	TokenAt _ -> cont 85;
	TokenAssign _ -> cont 86;
	TokenAdd _ -> cont 87;
	TokenSubtract _ -> cont 88;
	TokenAst _ -> cont 89;
	TokenDivide _ -> cont 90;
	TokenModulo _ -> cont 91;
	TokenEq _ -> cont 92;
	TokenLessThan _ -> cont 93;
	TokenGreaterThan _ -> cont 94;
	TokenLessThanEq _ -> cont 95;
	TokenGreaterThanEq _ -> cont 96;
	TokenNotEq _ -> cont 97;
	TokenLParen _ -> cont 98;
	TokenRParen _ -> cont 99;
	TokenLParenSquare _ -> cont 100;
	TokenRParenSquare _ -> cont 101;
	TokenLParenCurly _ -> cont 102;
	TokenRParenCurly _ -> cont 103;
	TokenInt  _ happy_dollar_dollar -> cont 104;
	TokenFilename _ happy_dollar_dollar -> cont 105;
	TokenStr _ happy_dollar_dollar -> cont 106;
	TokenVar _ happy_dollar_dollar -> cont 107;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 108 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown parse error in program.@" -- need '@' in order to remove stacktrace from error call.
parseError (t:ts) = error ("Parse error in program at line:column  " ++ (tokenPosn t) ++ ".@")

data Program = SetupProgram [Configuration] Exp
             | Program Exp
               deriving (Show, Eq)

data Configuration = PrettyPrint
                   | LoadFromTsv
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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

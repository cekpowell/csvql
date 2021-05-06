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
happyExpList = Happy_Data_Array.listArray (0,725) ([0,0,800,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,20992,59652,57632,3,2052,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,8196,0,0,0,48,0,0,0,0,0,10496,29830,61584,1,1034,0,0,0,8,0,0,0,0,16384,8330,9245,124,128,1,0,20992,59652,57632,3,2052,0,0,8848,1864,7945,8192,64,0,0,0,10176,0,0,0,0,0,16,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,1024,0,0,0,0,0,0,32,0,0,1106,8425,993,1024,8,0,36864,18466,2311,31,16416,0,0,5248,14913,63560,0,513,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,1536,0,0,0,0,0,0,4,0,0,0,2,0,0,0,0,256,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,17696,3728,15890,16384,128,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1106,8425,993,1024,8,0,36864,18466,2311,31,16416,0,0,5248,14913,63560,0,513,0,0,0,0,48,0,0,0,0,0,0,0,256,0,0,0,4,0,0,0,0,0,8192,0,0,0,0,0,0,256,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4,0,0,0,32768,16660,18490,248,256,2,0,0,64,0,0,0,0,0,0,2,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,8,8,0,0,0,0,0,8192,0,0,0,0,0,512,0,0,0,4096,4,0,0,0,0,0,8320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8848,1864,7945,8192,64,0,0,0,0,0,1024,0,0,41984,53768,49729,7,4104,0,0,0,0,0,0,1,0,0,64,0,0,0,0,0,0,0,0,0,1024,0,0,4096,0,0,0,0,0,0,0,0,0,8192,4,0,0,0,0,64,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,72,0,16,18,0,0,4424,33700,3972,4096,32,0,0,256,4096,0,0,0,0,0,0,0,32,32,0,0,8848,1864,7945,8192,64,0,32768,16660,18490,248,256,2,0,41984,53768,49729,7,4104,0,0,0,2,0,0,0,0,0,33321,36980,496,512,4,0,0,0,0,0,64,0,0,0,0,0,0,2,0,0,0,0,0,4096,0,0,0,0,0,0,128,0,0,0,0,16,0,0,0,0,8192,1024,0,18432,0,0,8192,36933,21006,62,32832,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,49152,0,4096,0,0,0,0,0,0,0,512,0,0,0,8,1,0,2,0,0,0,0,16384,0,0,0,0,512,64,0,128,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,8192,0,0,0,0,0,0,256,0,0,0,0,0,0,8,0,0,0,0,0,16384,0,0,0,0,0,128,0,0,0,0,0,35392,7456,31780,32768,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,128,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,20992,59652,57632,3,2052,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57344,7,0,0,0,6,32768,0,0,0,0,0,0,0,4096,0,0,0,576,0,128,16,0,0,0,0,0,496,0,0,0,36864,0,8192,1024,0,0,0,0,0,0,0,0,0,5248,14913,63560,0,513,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,20992,59652,57632,3,2052,0,0,0,0,0,0,0,0,32768,16660,18490,248,256,2,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,35392,7456,31780,32768,256,0,0,1106,8425,993,1024,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3072,0,0,256,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,384,0,0,0,0,0,0,0,0,0,0,0,0,36864,0,8192,1024,0,0,0,1152,0,256,32,0,0,0,36,0,8,1,0,0,0,0,16384,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,1106,8425,993,1024,8,0,36864,18466,2311,31,16416,0,0,5248,14913,63560,0,513,0,0,2212,16850,1986,2048,16,0,8192,36933,4622,62,32832,0,0,0,0,64,0,0,0,0,32768,1,0,8192,0,0,0,0,0,1024,0,0,0,0,96,0,0,0,0,0,0,0,0,0,0,0,0,1024,128,0,256,0,0,0,32,4,0,8,0,0,0,8193,0,16384,0,0,0,33321,36980,496,512,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,2016,0,0,0,0,0,0,0,0,0,10496,29826,61584,1,1026,0,0,32768,0,0,0,0,0,0,1024,0,0,0,0,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33321,36980,496,512,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,2016,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,32768,16660,18490,248,256,2,0,41984,53768,49729,7,4104,0,0,17696,3728,15890,16384,128,0,0,33321,36980,496,512,4,0,0,128,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,4096,0,0,0,36864,18466,2311,31,16416,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Configuration","Exp","TableType","FunctionTable","SelectFunction","InsertFunction","DeleteFunction","UpdateFunction","SetFunction","JoinFunction","FormatFunction","Direction","ColumnComparison","TableComparison","ComparisonOperator","ColumnRef","TableColumnRef","Assignment","Operator","CurlyList__Configuration__","List__Assignment__","List__ColumnRef__","List__Predicate__ColumnComparison____","List__Predicate__TableComparison____","List__Str__","Predicate__ColumnComparison__","Predicate__TableComparison__","CurlyListCont__Configuration__","ListCont__Assignment__","ListCont__ColumnRef__","ListCont__Predicate__ColumnComparison____","ListCont__Predicate__TableComparison____","ListCont__Str__","Setup","PrettyPrint","Read","Let","Return","Select","From","Insert","Into","Values","Column","Delete","Where","Not","And","Or","Index","Update","To","Set","Union","All","Intersection","Difference","Join","Inner","Left","Right","Outer","Full","Merge","Keeping","On","Order","In","By","Asc","Desc","Limit","Offset","Last","Unique","Transpose","';'","','","'.'","\"@\"","'='","'+'","'-'","'*'","\"/\"","'%'","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","'('","')'","'['","']'","'{'","'}'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 107
        bit_end = (st Prelude.+ 1) Prelude.* 107
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..106]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (38) = happyShift action_2
action_0 (41) = happyShift action_5
action_0 (42) = happyShift action_6
action_0 (4) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (38) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (101) = happyShift action_36
action_2 (24) = happyGoto action_35
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (107) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (106) = happyShift action_34
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (40) = happyShift action_16
action_6 (43) = happyShift action_17
action_6 (45) = happyShift action_18
action_6 (49) = happyShift action_19
action_6 (55) = happyShift action_20
action_6 (58) = happyShift action_21
action_6 (60) = happyShift action_22
action_6 (61) = happyShift action_23
action_6 (62) = happyShift action_24
action_6 (68) = happyShift action_25
action_6 (71) = happyShift action_26
action_6 (76) = happyShift action_27
action_6 (77) = happyShift action_28
action_6 (78) = happyShift action_29
action_6 (79) = happyShift action_30
action_6 (80) = happyShift action_31
action_6 (97) = happyShift action_32
action_6 (106) = happyShift action_33
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

action_7 (81) = happyShift action_70
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_8

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 _ = happyReduce_13

action_13 _ = happyReduce_14

action_14 _ = happyReduce_15

action_15 _ = happyReduce_16

action_16 (104) = happyShift action_69
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (88) = happyShift action_68
action_17 (99) = happyShift action_64
action_17 (26) = happyGoto action_67
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (47) = happyShift action_65
action_18 (48) = happyShift action_66
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (40) = happyShift action_16
action_19 (43) = happyShift action_17
action_19 (45) = happyShift action_18
action_19 (49) = happyShift action_19
action_19 (50) = happyShift action_63
action_19 (55) = happyShift action_20
action_19 (58) = happyShift action_21
action_19 (60) = happyShift action_22
action_19 (61) = happyShift action_23
action_19 (62) = happyShift action_24
action_19 (68) = happyShift action_25
action_19 (71) = happyShift action_26
action_19 (76) = happyShift action_27
action_19 (77) = happyShift action_28
action_19 (78) = happyShift action_29
action_19 (79) = happyShift action_30
action_19 (80) = happyShift action_31
action_19 (97) = happyShift action_32
action_19 (99) = happyShift action_64
action_19 (106) = happyShift action_33
action_19 (7) = happyGoto action_61
action_19 (8) = happyGoto action_8
action_19 (9) = happyGoto action_9
action_19 (10) = happyGoto action_10
action_19 (11) = happyGoto action_11
action_19 (12) = happyGoto action_12
action_19 (13) = happyGoto action_13
action_19 (14) = happyGoto action_14
action_19 (15) = happyGoto action_15
action_19 (26) = happyGoto action_62
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (56) = happyShift action_60
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (40) = happyShift action_16
action_21 (43) = happyShift action_17
action_21 (45) = happyShift action_18
action_21 (49) = happyShift action_19
action_21 (55) = happyShift action_20
action_21 (58) = happyShift action_21
action_21 (60) = happyShift action_22
action_21 (61) = happyShift action_23
action_21 (62) = happyShift action_24
action_21 (68) = happyShift action_25
action_21 (71) = happyShift action_26
action_21 (76) = happyShift action_27
action_21 (77) = happyShift action_28
action_21 (78) = happyShift action_29
action_21 (79) = happyShift action_30
action_21 (80) = happyShift action_31
action_21 (97) = happyShift action_32
action_21 (106) = happyShift action_33
action_21 (7) = happyGoto action_59
action_21 (8) = happyGoto action_8
action_21 (9) = happyGoto action_9
action_21 (10) = happyGoto action_10
action_21 (11) = happyGoto action_11
action_21 (12) = happyGoto action_12
action_21 (13) = happyGoto action_13
action_21 (14) = happyGoto action_14
action_21 (15) = happyGoto action_15
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (40) = happyShift action_16
action_22 (43) = happyShift action_17
action_22 (45) = happyShift action_18
action_22 (49) = happyShift action_19
action_22 (55) = happyShift action_20
action_22 (58) = happyShift action_21
action_22 (60) = happyShift action_22
action_22 (61) = happyShift action_23
action_22 (62) = happyShift action_24
action_22 (68) = happyShift action_25
action_22 (71) = happyShift action_26
action_22 (76) = happyShift action_27
action_22 (77) = happyShift action_28
action_22 (78) = happyShift action_29
action_22 (79) = happyShift action_30
action_22 (80) = happyShift action_31
action_22 (97) = happyShift action_32
action_22 (106) = happyShift action_33
action_22 (7) = happyGoto action_58
action_22 (8) = happyGoto action_8
action_22 (9) = happyGoto action_9
action_22 (10) = happyGoto action_10
action_22 (11) = happyGoto action_11
action_22 (12) = happyGoto action_12
action_22 (13) = happyGoto action_13
action_22 (14) = happyGoto action_14
action_22 (15) = happyGoto action_15
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (40) = happyShift action_16
action_23 (43) = happyShift action_17
action_23 (45) = happyShift action_18
action_23 (49) = happyShift action_19
action_23 (55) = happyShift action_20
action_23 (58) = happyShift action_21
action_23 (60) = happyShift action_22
action_23 (61) = happyShift action_23
action_23 (62) = happyShift action_24
action_23 (68) = happyShift action_25
action_23 (71) = happyShift action_26
action_23 (76) = happyShift action_27
action_23 (77) = happyShift action_28
action_23 (78) = happyShift action_29
action_23 (79) = happyShift action_30
action_23 (80) = happyShift action_31
action_23 (97) = happyShift action_32
action_23 (106) = happyShift action_33
action_23 (7) = happyGoto action_57
action_23 (8) = happyGoto action_8
action_23 (9) = happyGoto action_9
action_23 (10) = happyGoto action_10
action_23 (11) = happyGoto action_11
action_23 (12) = happyGoto action_12
action_23 (13) = happyGoto action_13
action_23 (14) = happyGoto action_14
action_23 (15) = happyGoto action_15
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (63) = happyShift action_51
action_24 (64) = happyShift action_52
action_24 (65) = happyShift action_53
action_24 (66) = happyShift action_54
action_24 (67) = happyShift action_55
action_24 (70) = happyShift action_56
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (50) = happyShift action_50
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (72) = happyShift action_49
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (103) = happyShift action_48
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (103) = happyShift action_47
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (103) = happyShift action_46
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (40) = happyShift action_16
action_30 (43) = happyShift action_17
action_30 (45) = happyShift action_18
action_30 (49) = happyShift action_19
action_30 (55) = happyShift action_20
action_30 (58) = happyShift action_21
action_30 (60) = happyShift action_22
action_30 (61) = happyShift action_23
action_30 (62) = happyShift action_24
action_30 (68) = happyShift action_25
action_30 (71) = happyShift action_26
action_30 (76) = happyShift action_27
action_30 (77) = happyShift action_28
action_30 (78) = happyShift action_29
action_30 (79) = happyShift action_30
action_30 (80) = happyShift action_31
action_30 (97) = happyShift action_32
action_30 (106) = happyShift action_33
action_30 (7) = happyGoto action_45
action_30 (8) = happyGoto action_8
action_30 (9) = happyGoto action_9
action_30 (10) = happyGoto action_10
action_30 (11) = happyGoto action_11
action_30 (12) = happyGoto action_12
action_30 (13) = happyGoto action_13
action_30 (14) = happyGoto action_14
action_30 (15) = happyGoto action_15
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (40) = happyShift action_16
action_31 (43) = happyShift action_17
action_31 (45) = happyShift action_18
action_31 (49) = happyShift action_19
action_31 (55) = happyShift action_20
action_31 (58) = happyShift action_21
action_31 (60) = happyShift action_22
action_31 (61) = happyShift action_23
action_31 (62) = happyShift action_24
action_31 (68) = happyShift action_25
action_31 (71) = happyShift action_26
action_31 (76) = happyShift action_27
action_31 (77) = happyShift action_28
action_31 (78) = happyShift action_29
action_31 (79) = happyShift action_30
action_31 (80) = happyShift action_31
action_31 (97) = happyShift action_32
action_31 (106) = happyShift action_33
action_31 (7) = happyGoto action_44
action_31 (8) = happyGoto action_8
action_31 (9) = happyGoto action_9
action_31 (10) = happyGoto action_10
action_31 (11) = happyGoto action_11
action_31 (12) = happyGoto action_12
action_31 (13) = happyGoto action_13
action_31 (14) = happyGoto action_14
action_31 (15) = happyGoto action_15
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (40) = happyShift action_16
action_32 (43) = happyShift action_17
action_32 (45) = happyShift action_18
action_32 (49) = happyShift action_19
action_32 (55) = happyShift action_20
action_32 (58) = happyShift action_21
action_32 (60) = happyShift action_22
action_32 (61) = happyShift action_23
action_32 (62) = happyShift action_24
action_32 (68) = happyShift action_25
action_32 (71) = happyShift action_26
action_32 (76) = happyShift action_27
action_32 (77) = happyShift action_28
action_32 (78) = happyShift action_29
action_32 (79) = happyShift action_30
action_32 (80) = happyShift action_31
action_32 (97) = happyShift action_32
action_32 (106) = happyShift action_33
action_32 (7) = happyGoto action_43
action_32 (8) = happyGoto action_8
action_32 (9) = happyGoto action_9
action_32 (10) = happyGoto action_10
action_32 (11) = happyGoto action_11
action_32 (12) = happyGoto action_12
action_32 (13) = happyGoto action_13
action_32 (14) = happyGoto action_14
action_32 (15) = happyGoto action_15
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_7

action_34 (85) = happyShift action_42
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (41) = happyShift action_5
action_35 (42) = happyShift action_6
action_35 (6) = happyGoto action_41
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (39) = happyShift action_39
action_36 (102) = happyShift action_40
action_36 (5) = happyGoto action_37
action_36 (32) = happyGoto action_38
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (82) = happyShift action_107
action_37 _ = happyReduce_87

action_38 (102) = happyShift action_106
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_3

action_40 _ = happyReduce_65

action_41 _ = happyReduce_1

action_42 (40) = happyShift action_16
action_42 (43) = happyShift action_17
action_42 (45) = happyShift action_18
action_42 (49) = happyShift action_19
action_42 (55) = happyShift action_20
action_42 (58) = happyShift action_21
action_42 (60) = happyShift action_22
action_42 (61) = happyShift action_23
action_42 (62) = happyShift action_24
action_42 (68) = happyShift action_25
action_42 (71) = happyShift action_26
action_42 (76) = happyShift action_27
action_42 (77) = happyShift action_28
action_42 (78) = happyShift action_29
action_42 (79) = happyShift action_30
action_42 (80) = happyShift action_31
action_42 (97) = happyShift action_32
action_42 (106) = happyShift action_33
action_42 (7) = happyGoto action_105
action_42 (8) = happyGoto action_8
action_42 (9) = happyGoto action_9
action_42 (10) = happyGoto action_10
action_42 (11) = happyGoto action_11
action_42 (12) = happyGoto action_12
action_42 (13) = happyGoto action_13
action_42 (14) = happyGoto action_14
action_42 (15) = happyGoto action_15
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (98) = happyShift action_104
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_44

action_45 _ = happyReduce_43

action_46 (40) = happyShift action_16
action_46 (43) = happyShift action_17
action_46 (45) = happyShift action_18
action_46 (49) = happyShift action_19
action_46 (55) = happyShift action_20
action_46 (58) = happyShift action_21
action_46 (60) = happyShift action_22
action_46 (61) = happyShift action_23
action_46 (62) = happyShift action_24
action_46 (68) = happyShift action_25
action_46 (71) = happyShift action_26
action_46 (76) = happyShift action_27
action_46 (77) = happyShift action_28
action_46 (78) = happyShift action_29
action_46 (79) = happyShift action_30
action_46 (80) = happyShift action_31
action_46 (97) = happyShift action_32
action_46 (106) = happyShift action_33
action_46 (7) = happyGoto action_103
action_46 (8) = happyGoto action_8
action_46 (9) = happyGoto action_9
action_46 (10) = happyGoto action_10
action_46 (11) = happyGoto action_11
action_46 (12) = happyGoto action_12
action_46 (13) = happyGoto action_13
action_46 (14) = happyGoto action_14
action_46 (15) = happyGoto action_15
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (40) = happyShift action_16
action_47 (43) = happyShift action_17
action_47 (45) = happyShift action_18
action_47 (49) = happyShift action_19
action_47 (55) = happyShift action_20
action_47 (58) = happyShift action_21
action_47 (60) = happyShift action_22
action_47 (61) = happyShift action_23
action_47 (62) = happyShift action_24
action_47 (68) = happyShift action_25
action_47 (71) = happyShift action_26
action_47 (76) = happyShift action_27
action_47 (77) = happyShift action_28
action_47 (78) = happyShift action_29
action_47 (79) = happyShift action_30
action_47 (80) = happyShift action_31
action_47 (97) = happyShift action_32
action_47 (106) = happyShift action_33
action_47 (7) = happyGoto action_102
action_47 (8) = happyGoto action_8
action_47 (9) = happyGoto action_9
action_47 (10) = happyGoto action_10
action_47 (11) = happyGoto action_11
action_47 (12) = happyGoto action_12
action_47 (13) = happyGoto action_13
action_47 (14) = happyGoto action_14
action_47 (15) = happyGoto action_15
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (40) = happyShift action_16
action_48 (43) = happyShift action_17
action_48 (45) = happyShift action_18
action_48 (49) = happyShift action_19
action_48 (55) = happyShift action_20
action_48 (58) = happyShift action_21
action_48 (60) = happyShift action_22
action_48 (61) = happyShift action_23
action_48 (62) = happyShift action_24
action_48 (68) = happyShift action_25
action_48 (71) = happyShift action_26
action_48 (76) = happyShift action_27
action_48 (77) = happyShift action_28
action_48 (78) = happyShift action_29
action_48 (79) = happyShift action_30
action_48 (80) = happyShift action_31
action_48 (97) = happyShift action_32
action_48 (106) = happyShift action_33
action_48 (7) = happyGoto action_101
action_48 (8) = happyGoto action_8
action_48 (9) = happyGoto action_9
action_48 (10) = happyGoto action_10
action_48 (11) = happyGoto action_11
action_48 (12) = happyGoto action_12
action_48 (13) = happyGoto action_13
action_48 (14) = happyGoto action_14
action_48 (15) = happyGoto action_15
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (74) = happyShift action_99
action_49 (75) = happyShift action_100
action_49 (16) = happyGoto action_98
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (99) = happyShift action_97
action_50 (28) = happyGoto action_96
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (50) = happyShift action_95
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (50) = happyShift action_94
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (50) = happyShift action_93
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (50) = happyShift action_92
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (70) = happyShift action_91
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (40) = happyShift action_16
action_56 (43) = happyShift action_17
action_56 (45) = happyShift action_18
action_56 (49) = happyShift action_19
action_56 (55) = happyShift action_20
action_56 (58) = happyShift action_21
action_56 (60) = happyShift action_22
action_56 (61) = happyShift action_23
action_56 (62) = happyShift action_24
action_56 (68) = happyShift action_25
action_56 (71) = happyShift action_26
action_56 (76) = happyShift action_27
action_56 (77) = happyShift action_28
action_56 (78) = happyShift action_29
action_56 (79) = happyShift action_30
action_56 (80) = happyShift action_31
action_56 (97) = happyShift action_32
action_56 (106) = happyShift action_33
action_56 (7) = happyGoto action_90
action_56 (8) = happyGoto action_8
action_56 (9) = happyGoto action_9
action_56 (10) = happyGoto action_10
action_56 (11) = happyGoto action_11
action_56 (12) = happyGoto action_12
action_56 (13) = happyGoto action_13
action_56 (14) = happyGoto action_14
action_56 (15) = happyGoto action_15
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (52) = happyShift action_89
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (52) = happyShift action_88
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (52) = happyShift action_87
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (99) = happyShift action_86
action_60 (25) = happyGoto action_85
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_23

action_62 (44) = happyShift action_84
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (99) = happyShift action_83
action_63 (27) = happyGoto action_82
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (84) = happyShift action_76
action_64 (100) = happyShift action_81
action_64 (20) = happyGoto action_79
action_64 (34) = happyGoto action_80
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (99) = happyShift action_78
action_65 (29) = happyGoto action_77
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (84) = happyShift action_76
action_66 (20) = happyGoto action_75
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (44) = happyShift action_73
action_67 (50) = happyShift action_74
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (44) = happyShift action_71
action_68 (50) = happyShift action_72
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_6

action_70 _ = happyReduce_5

action_71 (40) = happyShift action_16
action_71 (43) = happyShift action_17
action_71 (45) = happyShift action_18
action_71 (49) = happyShift action_19
action_71 (55) = happyShift action_20
action_71 (58) = happyShift action_21
action_71 (60) = happyShift action_22
action_71 (61) = happyShift action_23
action_71 (62) = happyShift action_24
action_71 (68) = happyShift action_25
action_71 (71) = happyShift action_26
action_71 (76) = happyShift action_27
action_71 (77) = happyShift action_28
action_71 (78) = happyShift action_29
action_71 (79) = happyShift action_30
action_71 (80) = happyShift action_31
action_71 (97) = happyShift action_32
action_71 (106) = happyShift action_33
action_71 (7) = happyGoto action_156
action_71 (8) = happyGoto action_8
action_71 (9) = happyGoto action_9
action_71 (10) = happyGoto action_10
action_71 (11) = happyGoto action_11
action_71 (12) = happyGoto action_12
action_71 (13) = happyGoto action_13
action_71 (14) = happyGoto action_14
action_71 (15) = happyGoto action_15
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (99) = happyShift action_83
action_72 (27) = happyGoto action_155
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (40) = happyShift action_16
action_73 (43) = happyShift action_17
action_73 (45) = happyShift action_18
action_73 (49) = happyShift action_19
action_73 (55) = happyShift action_20
action_73 (58) = happyShift action_21
action_73 (60) = happyShift action_22
action_73 (61) = happyShift action_23
action_73 (62) = happyShift action_24
action_73 (68) = happyShift action_25
action_73 (71) = happyShift action_26
action_73 (76) = happyShift action_27
action_73 (77) = happyShift action_28
action_73 (78) = happyShift action_29
action_73 (79) = happyShift action_30
action_73 (80) = happyShift action_31
action_73 (97) = happyShift action_32
action_73 (106) = happyShift action_33
action_73 (7) = happyGoto action_154
action_73 (8) = happyGoto action_8
action_73 (9) = happyGoto action_9
action_73 (10) = happyGoto action_10
action_73 (11) = happyGoto action_11
action_73 (12) = happyGoto action_12
action_73 (13) = happyGoto action_13
action_73 (14) = happyGoto action_14
action_73 (15) = happyGoto action_15
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (99) = happyShift action_83
action_74 (27) = happyGoto action_153
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (46) = happyShift action_152
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (103) = happyShift action_151
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (46) = happyShift action_150
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (100) = happyShift action_148
action_78 (105) = happyShift action_149
action_78 (37) = happyGoto action_147
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (82) = happyShift action_146
action_79 _ = happyReduce_91

action_80 (100) = happyShift action_145
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_69

action_82 (44) = happyShift action_144
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (51) = happyShift action_140
action_83 (54) = happyShift action_141
action_83 (84) = happyShift action_76
action_83 (97) = happyShift action_142
action_83 (100) = happyShift action_143
action_83 (17) = happyGoto action_136
action_83 (20) = happyGoto action_137
action_83 (30) = happyGoto action_138
action_83 (35) = happyGoto action_139
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (40) = happyShift action_16
action_84 (43) = happyShift action_17
action_84 (45) = happyShift action_18
action_84 (49) = happyShift action_19
action_84 (55) = happyShift action_20
action_84 (58) = happyShift action_21
action_84 (60) = happyShift action_22
action_84 (61) = happyShift action_23
action_84 (62) = happyShift action_24
action_84 (68) = happyShift action_25
action_84 (71) = happyShift action_26
action_84 (76) = happyShift action_27
action_84 (77) = happyShift action_28
action_84 (78) = happyShift action_29
action_84 (79) = happyShift action_30
action_84 (80) = happyShift action_31
action_84 (97) = happyShift action_32
action_84 (106) = happyShift action_33
action_84 (7) = happyGoto action_135
action_84 (8) = happyGoto action_8
action_84 (9) = happyGoto action_9
action_84 (10) = happyGoto action_10
action_84 (11) = happyGoto action_11
action_84 (12) = happyGoto action_12
action_84 (13) = happyGoto action_13
action_84 (14) = happyGoto action_14
action_84 (15) = happyGoto action_15
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (50) = happyShift action_133
action_85 (70) = happyShift action_134
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (84) = happyShift action_76
action_86 (100) = happyShift action_132
action_86 (20) = happyGoto action_129
action_86 (22) = happyGoto action_130
action_86 (33) = happyGoto action_131
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (40) = happyShift action_16
action_87 (43) = happyShift action_17
action_87 (45) = happyShift action_18
action_87 (49) = happyShift action_19
action_87 (55) = happyShift action_20
action_87 (58) = happyShift action_21
action_87 (60) = happyShift action_22
action_87 (61) = happyShift action_23
action_87 (62) = happyShift action_24
action_87 (68) = happyShift action_25
action_87 (71) = happyShift action_26
action_87 (76) = happyShift action_27
action_87 (77) = happyShift action_28
action_87 (78) = happyShift action_29
action_87 (79) = happyShift action_30
action_87 (80) = happyShift action_31
action_87 (97) = happyShift action_32
action_87 (106) = happyShift action_33
action_87 (7) = happyGoto action_128
action_87 (8) = happyGoto action_8
action_87 (9) = happyGoto action_9
action_87 (10) = happyGoto action_10
action_87 (11) = happyGoto action_11
action_87 (12) = happyGoto action_12
action_87 (13) = happyGoto action_13
action_87 (14) = happyGoto action_14
action_87 (15) = happyGoto action_15
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (40) = happyShift action_16
action_88 (43) = happyShift action_17
action_88 (45) = happyShift action_18
action_88 (49) = happyShift action_19
action_88 (55) = happyShift action_20
action_88 (58) = happyShift action_21
action_88 (60) = happyShift action_22
action_88 (61) = happyShift action_23
action_88 (62) = happyShift action_24
action_88 (68) = happyShift action_25
action_88 (71) = happyShift action_26
action_88 (76) = happyShift action_27
action_88 (77) = happyShift action_28
action_88 (78) = happyShift action_29
action_88 (79) = happyShift action_30
action_88 (80) = happyShift action_31
action_88 (97) = happyShift action_32
action_88 (106) = happyShift action_33
action_88 (7) = happyGoto action_127
action_88 (8) = happyGoto action_8
action_88 (9) = happyGoto action_9
action_88 (10) = happyGoto action_10
action_88 (11) = happyGoto action_11
action_88 (12) = happyGoto action_12
action_88 (13) = happyGoto action_13
action_88 (14) = happyGoto action_14
action_88 (15) = happyGoto action_15
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (40) = happyShift action_16
action_89 (43) = happyShift action_17
action_89 (45) = happyShift action_18
action_89 (49) = happyShift action_19
action_89 (55) = happyShift action_20
action_89 (58) = happyShift action_21
action_89 (60) = happyShift action_22
action_89 (61) = happyShift action_23
action_89 (62) = happyShift action_24
action_89 (68) = happyShift action_25
action_89 (71) = happyShift action_26
action_89 (76) = happyShift action_27
action_89 (77) = happyShift action_28
action_89 (78) = happyShift action_29
action_89 (79) = happyShift action_30
action_89 (80) = happyShift action_31
action_89 (97) = happyShift action_32
action_89 (106) = happyShift action_33
action_89 (7) = happyGoto action_126
action_89 (8) = happyGoto action_8
action_89 (9) = happyGoto action_9
action_89 (10) = happyGoto action_10
action_89 (11) = happyGoto action_11
action_89 (12) = happyGoto action_12
action_89 (13) = happyGoto action_13
action_89 (14) = happyGoto action_14
action_89 (15) = happyGoto action_15
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (52) = happyShift action_125
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (40) = happyShift action_16
action_91 (43) = happyShift action_17
action_91 (45) = happyShift action_18
action_91 (49) = happyShift action_19
action_91 (55) = happyShift action_20
action_91 (58) = happyShift action_21
action_91 (60) = happyShift action_22
action_91 (61) = happyShift action_23
action_91 (62) = happyShift action_24
action_91 (68) = happyShift action_25
action_91 (71) = happyShift action_26
action_91 (76) = happyShift action_27
action_91 (77) = happyShift action_28
action_91 (78) = happyShift action_29
action_91 (79) = happyShift action_30
action_91 (80) = happyShift action_31
action_91 (97) = happyShift action_32
action_91 (106) = happyShift action_33
action_91 (7) = happyGoto action_124
action_91 (8) = happyGoto action_8
action_91 (9) = happyGoto action_9
action_91 (10) = happyGoto action_10
action_91 (11) = happyGoto action_11
action_91 (12) = happyGoto action_12
action_91 (13) = happyGoto action_13
action_91 (14) = happyGoto action_14
action_91 (15) = happyGoto action_15
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (99) = happyShift action_97
action_92 (28) = happyGoto action_123
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (99) = happyShift action_97
action_93 (28) = happyGoto action_122
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (99) = happyShift action_97
action_94 (28) = happyGoto action_121
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (99) = happyShift action_97
action_95 (28) = happyGoto action_120
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (69) = happyShift action_119
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (51) = happyShift action_115
action_97 (64) = happyShift action_116
action_97 (97) = happyShift action_117
action_97 (100) = happyShift action_118
action_97 (18) = happyGoto action_112
action_97 (31) = happyGoto action_113
action_97 (36) = happyGoto action_114
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (40) = happyShift action_16
action_98 (43) = happyShift action_17
action_98 (45) = happyShift action_18
action_98 (49) = happyShift action_19
action_98 (55) = happyShift action_20
action_98 (58) = happyShift action_21
action_98 (60) = happyShift action_22
action_98 (61) = happyShift action_23
action_98 (62) = happyShift action_24
action_98 (68) = happyShift action_25
action_98 (71) = happyShift action_26
action_98 (73) = happyShift action_111
action_98 (76) = happyShift action_27
action_98 (77) = happyShift action_28
action_98 (78) = happyShift action_29
action_98 (79) = happyShift action_30
action_98 (80) = happyShift action_31
action_98 (97) = happyShift action_32
action_98 (106) = happyShift action_33
action_98 (7) = happyGoto action_110
action_98 (8) = happyGoto action_8
action_98 (9) = happyGoto action_9
action_98 (10) = happyGoto action_10
action_98 (11) = happyGoto action_11
action_98 (12) = happyGoto action_12
action_98 (13) = happyGoto action_13
action_98 (14) = happyGoto action_14
action_98 (15) = happyGoto action_15
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_45

action_100 _ = happyReduce_46

action_101 _ = happyReduce_40

action_102 _ = happyReduce_41

action_103 _ = happyReduce_42

action_104 _ = happyReduce_9

action_105 (81) = happyShift action_109
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_66

action_107 (39) = happyShift action_39
action_107 (5) = happyGoto action_37
action_107 (32) = happyGoto action_108
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_88

action_109 (41) = happyShift action_5
action_109 (42) = happyShift action_6
action_109 (6) = happyGoto action_204
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_38

action_111 (99) = happyShift action_64
action_111 (26) = happyGoto action_203
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_85

action_113 (52) = happyShift action_200
action_113 (53) = happyShift action_201
action_113 (82) = happyShift action_202
action_113 _ = happyReduce_95

action_114 (100) = happyShift action_199
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (51) = happyShift action_115
action_115 (64) = happyShift action_116
action_115 (97) = happyShift action_117
action_115 (18) = happyGoto action_112
action_115 (31) = happyGoto action_198
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (83) = happyShift action_197
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (51) = happyShift action_115
action_117 (64) = happyShift action_116
action_117 (97) = happyShift action_117
action_117 (18) = happyGoto action_112
action_117 (31) = happyGoto action_196
action_117 _ = happyFail (happyExpListPerState 117)

action_118 _ = happyReduce_73

action_119 (99) = happyShift action_64
action_119 (26) = happyGoto action_195
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (70) = happyShift action_194
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (70) = happyShift action_193
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (70) = happyShift action_192
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (70) = happyShift action_191
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (52) = happyShift action_190
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (40) = happyShift action_16
action_125 (43) = happyShift action_17
action_125 (45) = happyShift action_18
action_125 (49) = happyShift action_19
action_125 (55) = happyShift action_20
action_125 (58) = happyShift action_21
action_125 (60) = happyShift action_22
action_125 (61) = happyShift action_23
action_125 (62) = happyShift action_24
action_125 (68) = happyShift action_25
action_125 (71) = happyShift action_26
action_125 (76) = happyShift action_27
action_125 (77) = happyShift action_28
action_125 (78) = happyShift action_29
action_125 (79) = happyShift action_30
action_125 (80) = happyShift action_31
action_125 (97) = happyShift action_32
action_125 (106) = happyShift action_33
action_125 (7) = happyGoto action_189
action_125 (8) = happyGoto action_8
action_125 (9) = happyGoto action_9
action_125 (10) = happyGoto action_10
action_125 (11) = happyGoto action_11
action_125 (12) = happyGoto action_12
action_125 (13) = happyGoto action_13
action_125 (14) = happyGoto action_14
action_125 (15) = happyGoto action_15
action_125 _ = happyFail (happyExpListPerState 125)

action_126 _ = happyReduce_30

action_127 _ = happyReduce_29

action_128 _ = happyReduce_28

action_129 (85) = happyShift action_188
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (82) = happyShift action_187
action_130 _ = happyReduce_89

action_131 (100) = happyShift action_186
action_131 _ = happyFail (happyExpListPerState 131)

action_132 _ = happyReduce_67

action_133 (99) = happyShift action_83
action_133 (27) = happyGoto action_185
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (40) = happyShift action_16
action_134 (43) = happyShift action_17
action_134 (45) = happyShift action_18
action_134 (49) = happyShift action_19
action_134 (55) = happyShift action_20
action_134 (58) = happyShift action_21
action_134 (60) = happyShift action_22
action_134 (61) = happyShift action_23
action_134 (62) = happyShift action_24
action_134 (68) = happyShift action_25
action_134 (71) = happyShift action_26
action_134 (76) = happyShift action_27
action_134 (77) = happyShift action_28
action_134 (78) = happyShift action_29
action_134 (79) = happyShift action_30
action_134 (80) = happyShift action_31
action_134 (97) = happyShift action_32
action_134 (106) = happyShift action_33
action_134 (7) = happyGoto action_184
action_134 (8) = happyGoto action_8
action_134 (9) = happyGoto action_9
action_134 (10) = happyGoto action_10
action_134 (11) = happyGoto action_11
action_134 (12) = happyGoto action_12
action_134 (13) = happyGoto action_13
action_134 (14) = happyGoto action_14
action_134 (15) = happyGoto action_15
action_134 _ = happyFail (happyExpListPerState 134)

action_135 _ = happyReduce_24

action_136 _ = happyReduce_80

action_137 (91) = happyShift action_178
action_137 (92) = happyShift action_179
action_137 (93) = happyShift action_180
action_137 (94) = happyShift action_181
action_137 (95) = happyShift action_182
action_137 (96) = happyShift action_183
action_137 (19) = happyGoto action_177
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (52) = happyShift action_174
action_138 (53) = happyShift action_175
action_138 (82) = happyShift action_176
action_138 _ = happyReduce_93

action_139 (100) = happyShift action_173
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (51) = happyShift action_140
action_140 (54) = happyShift action_141
action_140 (84) = happyShift action_76
action_140 (97) = happyShift action_142
action_140 (17) = happyGoto action_136
action_140 (20) = happyGoto action_137
action_140 (30) = happyGoto action_172
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (86) = happyShift action_167
action_141 (87) = happyShift action_168
action_141 (88) = happyShift action_169
action_141 (89) = happyShift action_170
action_141 (90) = happyShift action_171
action_141 (23) = happyGoto action_166
action_141 _ = happyFail (happyExpListPerState 141)

action_142 (51) = happyShift action_140
action_142 (54) = happyShift action_141
action_142 (84) = happyShift action_76
action_142 (97) = happyShift action_142
action_142 (17) = happyGoto action_136
action_142 (20) = happyGoto action_137
action_142 (30) = happyGoto action_165
action_142 _ = happyFail (happyExpListPerState 142)

action_143 _ = happyReduce_71

action_144 (40) = happyShift action_16
action_144 (43) = happyShift action_17
action_144 (45) = happyShift action_18
action_144 (49) = happyShift action_19
action_144 (55) = happyShift action_20
action_144 (58) = happyShift action_21
action_144 (60) = happyShift action_22
action_144 (61) = happyShift action_23
action_144 (62) = happyShift action_24
action_144 (68) = happyShift action_25
action_144 (71) = happyShift action_26
action_144 (76) = happyShift action_27
action_144 (77) = happyShift action_28
action_144 (78) = happyShift action_29
action_144 (79) = happyShift action_30
action_144 (80) = happyShift action_31
action_144 (97) = happyShift action_32
action_144 (106) = happyShift action_33
action_144 (7) = happyGoto action_164
action_144 (8) = happyGoto action_8
action_144 (9) = happyGoto action_9
action_144 (10) = happyGoto action_10
action_144 (11) = happyGoto action_11
action_144 (12) = happyGoto action_12
action_144 (13) = happyGoto action_13
action_144 (14) = happyGoto action_14
action_144 (15) = happyGoto action_15
action_144 _ = happyFail (happyExpListPerState 144)

action_145 _ = happyReduce_70

action_146 (84) = happyShift action_76
action_146 (20) = happyGoto action_79
action_146 (34) = happyGoto action_163
action_146 _ = happyFail (happyExpListPerState 146)

action_147 (100) = happyShift action_162
action_147 _ = happyFail (happyExpListPerState 147)

action_148 _ = happyReduce_75

action_149 (82) = happyShift action_161
action_149 _ = happyReduce_97

action_150 (40) = happyShift action_16
action_150 (43) = happyShift action_17
action_150 (45) = happyShift action_18
action_150 (49) = happyShift action_19
action_150 (55) = happyShift action_20
action_150 (58) = happyShift action_21
action_150 (60) = happyShift action_22
action_150 (61) = happyShift action_23
action_150 (62) = happyShift action_24
action_150 (68) = happyShift action_25
action_150 (71) = happyShift action_26
action_150 (76) = happyShift action_27
action_150 (77) = happyShift action_28
action_150 (78) = happyShift action_29
action_150 (79) = happyShift action_30
action_150 (80) = happyShift action_31
action_150 (97) = happyShift action_32
action_150 (106) = happyShift action_33
action_150 (7) = happyGoto action_160
action_150 (8) = happyGoto action_8
action_150 (9) = happyGoto action_9
action_150 (10) = happyGoto action_10
action_150 (11) = happyGoto action_11
action_150 (12) = happyGoto action_12
action_150 (13) = happyGoto action_13
action_150 (14) = happyGoto action_14
action_150 (15) = happyGoto action_15
action_150 _ = happyFail (happyExpListPerState 150)

action_151 _ = happyReduce_57

action_152 (40) = happyShift action_16
action_152 (43) = happyShift action_17
action_152 (45) = happyShift action_18
action_152 (49) = happyShift action_19
action_152 (55) = happyShift action_20
action_152 (58) = happyShift action_21
action_152 (60) = happyShift action_22
action_152 (61) = happyShift action_23
action_152 (62) = happyShift action_24
action_152 (68) = happyShift action_25
action_152 (71) = happyShift action_26
action_152 (76) = happyShift action_27
action_152 (77) = happyShift action_28
action_152 (78) = happyShift action_29
action_152 (79) = happyShift action_30
action_152 (80) = happyShift action_31
action_152 (97) = happyShift action_32
action_152 (106) = happyShift action_33
action_152 (7) = happyGoto action_159
action_152 (8) = happyGoto action_8
action_152 (9) = happyGoto action_9
action_152 (10) = happyGoto action_10
action_152 (11) = happyGoto action_11
action_152 (12) = happyGoto action_12
action_152 (13) = happyGoto action_13
action_152 (14) = happyGoto action_14
action_152 (15) = happyGoto action_15
action_152 _ = happyFail (happyExpListPerState 152)

action_153 (44) = happyShift action_158
action_153 _ = happyFail (happyExpListPerState 153)

action_154 _ = happyReduce_18

action_155 (44) = happyShift action_157
action_155 _ = happyFail (happyExpListPerState 155)

action_156 _ = happyReduce_17

action_157 (40) = happyShift action_16
action_157 (43) = happyShift action_17
action_157 (45) = happyShift action_18
action_157 (49) = happyShift action_19
action_157 (55) = happyShift action_20
action_157 (58) = happyShift action_21
action_157 (60) = happyShift action_22
action_157 (61) = happyShift action_23
action_157 (62) = happyShift action_24
action_157 (68) = happyShift action_25
action_157 (71) = happyShift action_26
action_157 (76) = happyShift action_27
action_157 (77) = happyShift action_28
action_157 (78) = happyShift action_29
action_157 (79) = happyShift action_30
action_157 (80) = happyShift action_31
action_157 (97) = happyShift action_32
action_157 (106) = happyShift action_33
action_157 (7) = happyGoto action_229
action_157 (8) = happyGoto action_8
action_157 (9) = happyGoto action_9
action_157 (10) = happyGoto action_10
action_157 (11) = happyGoto action_11
action_157 (12) = happyGoto action_12
action_157 (13) = happyGoto action_13
action_157 (14) = happyGoto action_14
action_157 (15) = happyGoto action_15
action_157 _ = happyFail (happyExpListPerState 157)

action_158 (40) = happyShift action_16
action_158 (43) = happyShift action_17
action_158 (45) = happyShift action_18
action_158 (49) = happyShift action_19
action_158 (55) = happyShift action_20
action_158 (58) = happyShift action_21
action_158 (60) = happyShift action_22
action_158 (61) = happyShift action_23
action_158 (62) = happyShift action_24
action_158 (68) = happyShift action_25
action_158 (71) = happyShift action_26
action_158 (76) = happyShift action_27
action_158 (77) = happyShift action_28
action_158 (78) = happyShift action_29
action_158 (79) = happyShift action_30
action_158 (80) = happyShift action_31
action_158 (97) = happyShift action_32
action_158 (106) = happyShift action_33
action_158 (7) = happyGoto action_228
action_158 (8) = happyGoto action_8
action_158 (9) = happyGoto action_9
action_158 (10) = happyGoto action_10
action_158 (11) = happyGoto action_11
action_158 (12) = happyGoto action_12
action_158 (13) = happyGoto action_13
action_158 (14) = happyGoto action_14
action_158 (15) = happyGoto action_15
action_158 _ = happyFail (happyExpListPerState 158)

action_159 _ = happyReduce_22

action_160 _ = happyReduce_21

action_161 (105) = happyShift action_149
action_161 (37) = happyGoto action_227
action_161 _ = happyFail (happyExpListPerState 161)

action_162 _ = happyReduce_76

action_163 _ = happyReduce_92

action_164 _ = happyReduce_25

action_165 (52) = happyShift action_174
action_165 (53) = happyShift action_175
action_165 (98) = happyShift action_226
action_165 _ = happyFail (happyExpListPerState 165)

action_166 (103) = happyShift action_225
action_166 _ = happyFail (happyExpListPerState 166)

action_167 _ = happyReduce_60

action_168 _ = happyReduce_61

action_169 _ = happyReduce_63

action_170 _ = happyReduce_62

action_171 _ = happyReduce_64

action_172 (52) = happyShift action_174
action_172 (53) = happyShift action_175
action_172 _ = happyReduce_77

action_173 _ = happyReduce_72

action_174 (51) = happyShift action_140
action_174 (54) = happyShift action_141
action_174 (84) = happyShift action_76
action_174 (97) = happyShift action_142
action_174 (17) = happyGoto action_136
action_174 (20) = happyGoto action_137
action_174 (30) = happyGoto action_224
action_174 _ = happyFail (happyExpListPerState 174)

action_175 (51) = happyShift action_140
action_175 (54) = happyShift action_141
action_175 (84) = happyShift action_76
action_175 (97) = happyShift action_142
action_175 (17) = happyGoto action_136
action_175 (20) = happyGoto action_137
action_175 (30) = happyGoto action_223
action_175 _ = happyFail (happyExpListPerState 175)

action_176 (51) = happyShift action_140
action_176 (54) = happyShift action_141
action_176 (84) = happyShift action_76
action_176 (97) = happyShift action_142
action_176 (17) = happyGoto action_136
action_176 (20) = happyGoto action_137
action_176 (30) = happyGoto action_138
action_176 (35) = happyGoto action_222
action_176 _ = happyFail (happyExpListPerState 176)

action_177 (84) = happyShift action_76
action_177 (105) = happyShift action_221
action_177 (20) = happyGoto action_220
action_177 _ = happyFail (happyExpListPerState 177)

action_178 _ = happyReduce_51

action_179 _ = happyReduce_52

action_180 _ = happyReduce_53

action_181 _ = happyReduce_54

action_182 _ = happyReduce_55

action_183 _ = happyReduce_56

action_184 _ = happyReduce_26

action_185 (70) = happyShift action_219
action_185 _ = happyFail (happyExpListPerState 185)

action_186 _ = happyReduce_68

action_187 (84) = happyShift action_76
action_187 (20) = happyGoto action_129
action_187 (22) = happyGoto action_130
action_187 (33) = happyGoto action_218
action_187 _ = happyFail (happyExpListPerState 187)

action_188 (105) = happyShift action_217
action_188 _ = happyFail (happyExpListPerState 188)

action_189 _ = happyReduce_31

action_190 (40) = happyShift action_16
action_190 (43) = happyShift action_17
action_190 (45) = happyShift action_18
action_190 (49) = happyShift action_19
action_190 (55) = happyShift action_20
action_190 (58) = happyShift action_21
action_190 (60) = happyShift action_22
action_190 (61) = happyShift action_23
action_190 (62) = happyShift action_24
action_190 (68) = happyShift action_25
action_190 (71) = happyShift action_26
action_190 (76) = happyShift action_27
action_190 (77) = happyShift action_28
action_190 (78) = happyShift action_29
action_190 (79) = happyShift action_30
action_190 (80) = happyShift action_31
action_190 (97) = happyShift action_32
action_190 (106) = happyShift action_33
action_190 (7) = happyGoto action_216
action_190 (8) = happyGoto action_8
action_190 (9) = happyGoto action_9
action_190 (10) = happyGoto action_10
action_190 (11) = happyGoto action_11
action_190 (12) = happyGoto action_12
action_190 (13) = happyGoto action_13
action_190 (14) = happyGoto action_14
action_190 (15) = happyGoto action_15
action_190 _ = happyFail (happyExpListPerState 190)

action_191 (40) = happyShift action_16
action_191 (43) = happyShift action_17
action_191 (45) = happyShift action_18
action_191 (49) = happyShift action_19
action_191 (55) = happyShift action_20
action_191 (58) = happyShift action_21
action_191 (60) = happyShift action_22
action_191 (61) = happyShift action_23
action_191 (62) = happyShift action_24
action_191 (68) = happyShift action_25
action_191 (71) = happyShift action_26
action_191 (76) = happyShift action_27
action_191 (77) = happyShift action_28
action_191 (78) = happyShift action_29
action_191 (79) = happyShift action_30
action_191 (80) = happyShift action_31
action_191 (97) = happyShift action_32
action_191 (106) = happyShift action_33
action_191 (7) = happyGoto action_215
action_191 (8) = happyGoto action_8
action_191 (9) = happyGoto action_9
action_191 (10) = happyGoto action_10
action_191 (11) = happyGoto action_11
action_191 (12) = happyGoto action_12
action_191 (13) = happyGoto action_13
action_191 (14) = happyGoto action_14
action_191 (15) = happyGoto action_15
action_191 _ = happyFail (happyExpListPerState 191)

action_192 (40) = happyShift action_16
action_192 (43) = happyShift action_17
action_192 (45) = happyShift action_18
action_192 (49) = happyShift action_19
action_192 (55) = happyShift action_20
action_192 (58) = happyShift action_21
action_192 (60) = happyShift action_22
action_192 (61) = happyShift action_23
action_192 (62) = happyShift action_24
action_192 (68) = happyShift action_25
action_192 (71) = happyShift action_26
action_192 (76) = happyShift action_27
action_192 (77) = happyShift action_28
action_192 (78) = happyShift action_29
action_192 (79) = happyShift action_30
action_192 (80) = happyShift action_31
action_192 (97) = happyShift action_32
action_192 (106) = happyShift action_33
action_192 (7) = happyGoto action_214
action_192 (8) = happyGoto action_8
action_192 (9) = happyGoto action_9
action_192 (10) = happyGoto action_10
action_192 (11) = happyGoto action_11
action_192 (12) = happyGoto action_12
action_192 (13) = happyGoto action_13
action_192 (14) = happyGoto action_14
action_192 (15) = happyGoto action_15
action_192 _ = happyFail (happyExpListPerState 192)

action_193 (40) = happyShift action_16
action_193 (43) = happyShift action_17
action_193 (45) = happyShift action_18
action_193 (49) = happyShift action_19
action_193 (55) = happyShift action_20
action_193 (58) = happyShift action_21
action_193 (60) = happyShift action_22
action_193 (61) = happyShift action_23
action_193 (62) = happyShift action_24
action_193 (68) = happyShift action_25
action_193 (71) = happyShift action_26
action_193 (76) = happyShift action_27
action_193 (77) = happyShift action_28
action_193 (78) = happyShift action_29
action_193 (79) = happyShift action_30
action_193 (80) = happyShift action_31
action_193 (97) = happyShift action_32
action_193 (106) = happyShift action_33
action_193 (7) = happyGoto action_213
action_193 (8) = happyGoto action_8
action_193 (9) = happyGoto action_9
action_193 (10) = happyGoto action_10
action_193 (11) = happyGoto action_11
action_193 (12) = happyGoto action_12
action_193 (13) = happyGoto action_13
action_193 (14) = happyGoto action_14
action_193 (15) = happyGoto action_15
action_193 _ = happyFail (happyExpListPerState 193)

action_194 (40) = happyShift action_16
action_194 (43) = happyShift action_17
action_194 (45) = happyShift action_18
action_194 (49) = happyShift action_19
action_194 (55) = happyShift action_20
action_194 (58) = happyShift action_21
action_194 (60) = happyShift action_22
action_194 (61) = happyShift action_23
action_194 (62) = happyShift action_24
action_194 (68) = happyShift action_25
action_194 (71) = happyShift action_26
action_194 (76) = happyShift action_27
action_194 (77) = happyShift action_28
action_194 (78) = happyShift action_29
action_194 (79) = happyShift action_30
action_194 (80) = happyShift action_31
action_194 (97) = happyShift action_32
action_194 (106) = happyShift action_33
action_194 (7) = happyGoto action_212
action_194 (8) = happyGoto action_8
action_194 (9) = happyGoto action_9
action_194 (10) = happyGoto action_10
action_194 (11) = happyGoto action_11
action_194 (12) = happyGoto action_12
action_194 (13) = happyGoto action_13
action_194 (14) = happyGoto action_14
action_194 (15) = happyGoto action_15
action_194 _ = happyFail (happyExpListPerState 194)

action_195 (70) = happyShift action_211
action_195 _ = happyFail (happyExpListPerState 195)

action_196 (52) = happyShift action_200
action_196 (53) = happyShift action_201
action_196 (98) = happyShift action_210
action_196 _ = happyFail (happyExpListPerState 196)

action_197 (84) = happyShift action_76
action_197 (20) = happyGoto action_209
action_197 _ = happyFail (happyExpListPerState 197)

action_198 (52) = happyShift action_200
action_198 (53) = happyShift action_201
action_198 _ = happyReduce_82

action_199 _ = happyReduce_74

action_200 (51) = happyShift action_115
action_200 (64) = happyShift action_116
action_200 (97) = happyShift action_117
action_200 (18) = happyGoto action_112
action_200 (31) = happyGoto action_208
action_200 _ = happyFail (happyExpListPerState 200)

action_201 (51) = happyShift action_115
action_201 (64) = happyShift action_116
action_201 (97) = happyShift action_117
action_201 (18) = happyGoto action_112
action_201 (31) = happyGoto action_207
action_201 _ = happyFail (happyExpListPerState 201)

action_202 (51) = happyShift action_115
action_202 (64) = happyShift action_116
action_202 (97) = happyShift action_117
action_202 (18) = happyGoto action_112
action_202 (31) = happyGoto action_113
action_202 (36) = happyGoto action_206
action_202 _ = happyFail (happyExpListPerState 202)

action_203 (40) = happyShift action_16
action_203 (43) = happyShift action_17
action_203 (45) = happyShift action_18
action_203 (49) = happyShift action_19
action_203 (55) = happyShift action_20
action_203 (58) = happyShift action_21
action_203 (60) = happyShift action_22
action_203 (61) = happyShift action_23
action_203 (62) = happyShift action_24
action_203 (68) = happyShift action_25
action_203 (71) = happyShift action_26
action_203 (76) = happyShift action_27
action_203 (77) = happyShift action_28
action_203 (78) = happyShift action_29
action_203 (79) = happyShift action_30
action_203 (80) = happyShift action_31
action_203 (97) = happyShift action_32
action_203 (106) = happyShift action_33
action_203 (7) = happyGoto action_205
action_203 (8) = happyGoto action_8
action_203 (9) = happyGoto action_9
action_203 (10) = happyGoto action_10
action_203 (11) = happyGoto action_11
action_203 (12) = happyGoto action_12
action_203 (13) = happyGoto action_13
action_203 (14) = happyGoto action_14
action_203 (15) = happyGoto action_15
action_203 _ = happyFail (happyExpListPerState 203)

action_204 _ = happyReduce_4

action_205 _ = happyReduce_39

action_206 _ = happyReduce_96

action_207 (53) = happyFail []
action_207 _ = happyReduce_84

action_208 (52) = happyFail []
action_208 (53) = happyShift action_201
action_208 _ = happyReduce_83

action_209 (91) = happyShift action_178
action_209 (92) = happyShift action_179
action_209 (93) = happyShift action_180
action_209 (94) = happyShift action_181
action_209 (95) = happyShift action_182
action_209 (96) = happyShift action_183
action_209 (19) = happyGoto action_237
action_209 _ = happyFail (happyExpListPerState 209)

action_210 _ = happyReduce_86

action_211 (40) = happyShift action_16
action_211 (43) = happyShift action_17
action_211 (45) = happyShift action_18
action_211 (49) = happyShift action_19
action_211 (55) = happyShift action_20
action_211 (58) = happyShift action_21
action_211 (60) = happyShift action_22
action_211 (61) = happyShift action_23
action_211 (62) = happyShift action_24
action_211 (68) = happyShift action_25
action_211 (71) = happyShift action_26
action_211 (76) = happyShift action_27
action_211 (77) = happyShift action_28
action_211 (78) = happyShift action_29
action_211 (79) = happyShift action_30
action_211 (80) = happyShift action_31
action_211 (97) = happyShift action_32
action_211 (106) = happyShift action_33
action_211 (7) = happyGoto action_236
action_211 (8) = happyGoto action_8
action_211 (9) = happyGoto action_9
action_211 (10) = happyGoto action_10
action_211 (11) = happyGoto action_11
action_211 (12) = happyGoto action_12
action_211 (13) = happyGoto action_13
action_211 (14) = happyGoto action_14
action_211 (15) = happyGoto action_15
action_211 _ = happyFail (happyExpListPerState 211)

action_212 (52) = happyShift action_235
action_212 _ = happyFail (happyExpListPerState 212)

action_213 (52) = happyShift action_234
action_213 _ = happyFail (happyExpListPerState 213)

action_214 (52) = happyShift action_233
action_214 _ = happyFail (happyExpListPerState 214)

action_215 (52) = happyShift action_232
action_215 _ = happyFail (happyExpListPerState 215)

action_216 _ = happyReduce_36

action_217 _ = happyReduce_59

action_218 _ = happyReduce_90

action_219 (40) = happyShift action_16
action_219 (43) = happyShift action_17
action_219 (45) = happyShift action_18
action_219 (49) = happyShift action_19
action_219 (55) = happyShift action_20
action_219 (58) = happyShift action_21
action_219 (60) = happyShift action_22
action_219 (61) = happyShift action_23
action_219 (62) = happyShift action_24
action_219 (68) = happyShift action_25
action_219 (71) = happyShift action_26
action_219 (76) = happyShift action_27
action_219 (77) = happyShift action_28
action_219 (78) = happyShift action_29
action_219 (79) = happyShift action_30
action_219 (80) = happyShift action_31
action_219 (97) = happyShift action_32
action_219 (106) = happyShift action_33
action_219 (7) = happyGoto action_231
action_219 (8) = happyGoto action_8
action_219 (9) = happyGoto action_9
action_219 (10) = happyGoto action_10
action_219 (11) = happyGoto action_11
action_219 (12) = happyGoto action_12
action_219 (13) = happyGoto action_13
action_219 (14) = happyGoto action_14
action_219 (15) = happyGoto action_15
action_219 _ = happyFail (happyExpListPerState 219)

action_220 _ = happyReduce_48

action_221 _ = happyReduce_47

action_222 _ = happyReduce_94

action_223 (53) = happyFail []
action_223 _ = happyReduce_79

action_224 (52) = happyFail []
action_224 (53) = happyShift action_175
action_224 _ = happyReduce_78

action_225 (91) = happyShift action_178
action_225 (92) = happyShift action_179
action_225 (93) = happyShift action_180
action_225 (94) = happyShift action_181
action_225 (95) = happyShift action_182
action_225 (96) = happyShift action_183
action_225 (19) = happyGoto action_230
action_225 _ = happyFail (happyExpListPerState 225)

action_226 _ = happyReduce_81

action_227 _ = happyReduce_98

action_228 _ = happyReduce_20

action_229 _ = happyReduce_19

action_230 (103) = happyShift action_244
action_230 _ = happyFail (happyExpListPerState 230)

action_231 _ = happyReduce_27

action_232 (40) = happyShift action_16
action_232 (43) = happyShift action_17
action_232 (45) = happyShift action_18
action_232 (49) = happyShift action_19
action_232 (55) = happyShift action_20
action_232 (58) = happyShift action_21
action_232 (60) = happyShift action_22
action_232 (61) = happyShift action_23
action_232 (62) = happyShift action_24
action_232 (68) = happyShift action_25
action_232 (71) = happyShift action_26
action_232 (76) = happyShift action_27
action_232 (77) = happyShift action_28
action_232 (78) = happyShift action_29
action_232 (79) = happyShift action_30
action_232 (80) = happyShift action_31
action_232 (97) = happyShift action_32
action_232 (106) = happyShift action_33
action_232 (7) = happyGoto action_243
action_232 (8) = happyGoto action_8
action_232 (9) = happyGoto action_9
action_232 (10) = happyGoto action_10
action_232 (11) = happyGoto action_11
action_232 (12) = happyGoto action_12
action_232 (13) = happyGoto action_13
action_232 (14) = happyGoto action_14
action_232 (15) = happyGoto action_15
action_232 _ = happyFail (happyExpListPerState 232)

action_233 (40) = happyShift action_16
action_233 (43) = happyShift action_17
action_233 (45) = happyShift action_18
action_233 (49) = happyShift action_19
action_233 (55) = happyShift action_20
action_233 (58) = happyShift action_21
action_233 (60) = happyShift action_22
action_233 (61) = happyShift action_23
action_233 (62) = happyShift action_24
action_233 (68) = happyShift action_25
action_233 (71) = happyShift action_26
action_233 (76) = happyShift action_27
action_233 (77) = happyShift action_28
action_233 (78) = happyShift action_29
action_233 (79) = happyShift action_30
action_233 (80) = happyShift action_31
action_233 (97) = happyShift action_32
action_233 (106) = happyShift action_33
action_233 (7) = happyGoto action_242
action_233 (8) = happyGoto action_8
action_233 (9) = happyGoto action_9
action_233 (10) = happyGoto action_10
action_233 (11) = happyGoto action_11
action_233 (12) = happyGoto action_12
action_233 (13) = happyGoto action_13
action_233 (14) = happyGoto action_14
action_233 (15) = happyGoto action_15
action_233 _ = happyFail (happyExpListPerState 233)

action_234 (40) = happyShift action_16
action_234 (43) = happyShift action_17
action_234 (45) = happyShift action_18
action_234 (49) = happyShift action_19
action_234 (55) = happyShift action_20
action_234 (58) = happyShift action_21
action_234 (60) = happyShift action_22
action_234 (61) = happyShift action_23
action_234 (62) = happyShift action_24
action_234 (68) = happyShift action_25
action_234 (71) = happyShift action_26
action_234 (76) = happyShift action_27
action_234 (77) = happyShift action_28
action_234 (78) = happyShift action_29
action_234 (79) = happyShift action_30
action_234 (80) = happyShift action_31
action_234 (97) = happyShift action_32
action_234 (106) = happyShift action_33
action_234 (7) = happyGoto action_241
action_234 (8) = happyGoto action_8
action_234 (9) = happyGoto action_9
action_234 (10) = happyGoto action_10
action_234 (11) = happyGoto action_11
action_234 (12) = happyGoto action_12
action_234 (13) = happyGoto action_13
action_234 (14) = happyGoto action_14
action_234 (15) = happyGoto action_15
action_234 _ = happyFail (happyExpListPerState 234)

action_235 (40) = happyShift action_16
action_235 (43) = happyShift action_17
action_235 (45) = happyShift action_18
action_235 (49) = happyShift action_19
action_235 (55) = happyShift action_20
action_235 (58) = happyShift action_21
action_235 (60) = happyShift action_22
action_235 (61) = happyShift action_23
action_235 (62) = happyShift action_24
action_235 (68) = happyShift action_25
action_235 (71) = happyShift action_26
action_235 (76) = happyShift action_27
action_235 (77) = happyShift action_28
action_235 (78) = happyShift action_29
action_235 (79) = happyShift action_30
action_235 (80) = happyShift action_31
action_235 (97) = happyShift action_32
action_235 (106) = happyShift action_33
action_235 (7) = happyGoto action_240
action_235 (8) = happyGoto action_8
action_235 (9) = happyGoto action_9
action_235 (10) = happyGoto action_10
action_235 (11) = happyGoto action_11
action_235 (12) = happyGoto action_12
action_235 (13) = happyGoto action_13
action_235 (14) = happyGoto action_14
action_235 (15) = happyGoto action_15
action_235 _ = happyFail (happyExpListPerState 235)

action_236 (52) = happyShift action_239
action_236 _ = happyFail (happyExpListPerState 236)

action_237 (65) = happyShift action_238
action_237 _ = happyFail (happyExpListPerState 237)

action_238 (83) = happyShift action_246
action_238 _ = happyFail (happyExpListPerState 238)

action_239 (40) = happyShift action_16
action_239 (43) = happyShift action_17
action_239 (45) = happyShift action_18
action_239 (49) = happyShift action_19
action_239 (55) = happyShift action_20
action_239 (58) = happyShift action_21
action_239 (60) = happyShift action_22
action_239 (61) = happyShift action_23
action_239 (62) = happyShift action_24
action_239 (68) = happyShift action_25
action_239 (71) = happyShift action_26
action_239 (76) = happyShift action_27
action_239 (77) = happyShift action_28
action_239 (78) = happyShift action_29
action_239 (79) = happyShift action_30
action_239 (80) = happyShift action_31
action_239 (97) = happyShift action_32
action_239 (106) = happyShift action_33
action_239 (7) = happyGoto action_245
action_239 (8) = happyGoto action_8
action_239 (9) = happyGoto action_9
action_239 (10) = happyGoto action_10
action_239 (11) = happyGoto action_11
action_239 (12) = happyGoto action_12
action_239 (13) = happyGoto action_13
action_239 (14) = happyGoto action_14
action_239 (15) = happyGoto action_15
action_239 _ = happyFail (happyExpListPerState 239)

action_240 _ = happyReduce_32

action_241 _ = happyReduce_33

action_242 _ = happyReduce_34

action_243 _ = happyReduce_35

action_244 _ = happyReduce_49

action_245 _ = happyReduce_37

action_246 (84) = happyShift action_76
action_246 (20) = happyGoto action_247
action_246 _ = happyFail (happyExpListPerState 246)

action_247 _ = happyReduce_50

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

happyReduce_4 = happyReduce 6 6 happyReduction_4
happyReduction_4 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  6 happyReduction_5
happyReduction_5 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Return happy_var_2
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  7 happyReduction_6
happyReduction_6 (HappyTerminal (TokenFilename _ happy_var_2))
	_
	 =  HappyAbsSyn7
		 (Read happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Function happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Select happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (Insert happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (Delete happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn8
		 (Update happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn8
		 (Set happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn8
		 (Join happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  8 happyReduction_16
happyReduction_16 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn8
		 (Format happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 9 happyReduction_17
happyReduction_17 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectAll happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 4 9 happyReduction_18
happyReduction_18 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectCol happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 6 9 happyReduction_19
happyReduction_19 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectAllWhere happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 6 9 happyReduction_20
happyReduction_20 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectColWhere happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 5 10 happyReduction_21
happyReduction_21 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn29  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (InsertValues happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 5 10 happyReduction_22
happyReduction_22 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (InsertColumn happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_2  11 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (DeleteAll happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 4 11 happyReduction_24
happyReduction_24 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (DeleteCol happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 5 11 happyReduction_25
happyReduction_25 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (DeleteAllWhere happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 5 12 happyReduction_26
happyReduction_26 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn25  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (UpdateAll happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 7 12 happyReduction_27
happyReduction_27 ((HappyAbsSyn7  happy_var_7) `HappyStk`
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

happyReduce_28 = happyReduce 4 13 happyReduction_28
happyReduction_28 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Union happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 4 13 happyReduction_29
happyReduction_29 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Intersection happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 13 happyReduction_30
happyReduction_30 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Difference happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 5 14 happyReduction_31
happyReduction_31 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinStandard happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 8 14 happyReduction_32
happyReduction_32 ((HappyAbsSyn7  happy_var_8) `HappyStk`
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
		 (JoinLeft happy_var_4 happy_var_6 happy_var_8
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
		 (JoinRight happy_var_4 happy_var_6 happy_var_8
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
		 (JoinOuter happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 6 14 happyReduction_36
happyReduction_36 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinFull happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 9 14 happyReduction_37
happyReduction_37 ((HappyAbsSyn7  happy_var_9) `HappyStk`
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

happyReduce_38 = happyReduce 4 15 happyReduction_38
happyReduction_38 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 6 15 happyReduction_39
happyReduction_39 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	(HappyAbsSyn26  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (OrderByCol happy_var_3 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_3  15 happyReduction_40
happyReduction_40 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  15 happyReduction_41
happyReduction_41 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  15 happyReduction_42
happyReduction_42 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Last happy_var_2 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  15 happyReduction_43
happyReduction_43 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (Unique happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  15 happyReduction_44
happyReduction_44 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (Transpose happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  16 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn16
		 (Asc
	)

happyReduce_46 = happySpecReduce_1  16 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn16
		 (Desc
	)

happyReduce_47 = happySpecReduce_3  17 happyReduction_47
happyReduction_47 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn17
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  17 happyReduction_48
happyReduction_48 (HappyAbsSyn20  happy_var_3)
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn17
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happyReduce 5 17 happyReduction_49
happyReduction_49 ((HappyTerminal (TokenInt  _ happy_var_5)) `HappyStk`
	(HappyAbsSyn19  happy_var_4) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_3)) `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (IndexVal happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_50 = happyReduce 7 18 happyReduction_50
happyReduction_50 ((HappyAbsSyn20  happy_var_7) `HappyStk`
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

happyReduce_51 = happySpecReduce_1  19 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn19
		 (Eq
	)

happyReduce_52 = happySpecReduce_1  19 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn19
		 (LessThan
	)

happyReduce_53 = happySpecReduce_1  19 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn19
		 (GreaterThan
	)

happyReduce_54 = happySpecReduce_1  19 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn19
		 (LessThanEq
	)

happyReduce_55 = happySpecReduce_1  19 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn19
		 (GreaterThanEq
	)

happyReduce_56 = happySpecReduce_1  19 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn19
		 (NotEq
	)

happyReduce_57 = happySpecReduce_2  20 happyReduction_57
happyReduction_57 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_57 _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  21 happyReduction_58
happyReduction_58 (HappyAbsSyn20  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn21
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  22 happyReduction_59
happyReduction_59 (HappyTerminal (TokenStr _ happy_var_3))
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn22
		 (Assignment happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  23 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn23
		 (Add
	)

happyReduce_61 = happySpecReduce_1  23 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn23
		 (Subtract
	)

happyReduce_62 = happySpecReduce_1  23 happyReduction_62
happyReduction_62 _
	 =  HappyAbsSyn23
		 (Divide
	)

happyReduce_63 = happySpecReduce_1  23 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn23
		 (Multiply
	)

happyReduce_64 = happySpecReduce_1  23 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn23
		 (Modulo
	)

happyReduce_65 = happySpecReduce_2  24 happyReduction_65
happyReduction_65 _
	_
	 =  HappyAbsSyn24
		 ([]
	)

happyReduce_66 = happySpecReduce_3  24 happyReduction_66
happyReduction_66 _
	(HappyAbsSyn32  happy_var_2)
	_
	 =  HappyAbsSyn24
		 (happy_var_2
	)
happyReduction_66 _ _ _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_2  25 happyReduction_67
happyReduction_67 _
	_
	 =  HappyAbsSyn25
		 ([]
	)

happyReduce_68 = happySpecReduce_3  25 happyReduction_68
happyReduction_68 _
	(HappyAbsSyn33  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (happy_var_2
	)
happyReduction_68 _ _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_2  26 happyReduction_69
happyReduction_69 _
	_
	 =  HappyAbsSyn26
		 ([]
	)

happyReduce_70 = happySpecReduce_3  26 happyReduction_70
happyReduction_70 _
	(HappyAbsSyn34  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (happy_var_2
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_2  27 happyReduction_71
happyReduction_71 _
	_
	 =  HappyAbsSyn27
		 ([]
	)

happyReduce_72 = happySpecReduce_3  27 happyReduction_72
happyReduction_72 _
	(HappyAbsSyn35  happy_var_2)
	_
	 =  HappyAbsSyn27
		 (happy_var_2
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_2  28 happyReduction_73
happyReduction_73 _
	_
	 =  HappyAbsSyn28
		 ([]
	)

happyReduce_74 = happySpecReduce_3  28 happyReduction_74
happyReduction_74 _
	(HappyAbsSyn36  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (happy_var_2
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_2  29 happyReduction_75
happyReduction_75 _
	_
	 =  HappyAbsSyn29
		 ([]
	)

happyReduce_76 = happySpecReduce_3  29 happyReduction_76
happyReduction_76 _
	(HappyAbsSyn37  happy_var_2)
	_
	 =  HappyAbsSyn29
		 (happy_var_2
	)
happyReduction_76 _ _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_2  30 happyReduction_77
happyReduction_77 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (Not happy_var_2
	)
happyReduction_77 _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_3  30 happyReduction_78
happyReduction_78 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (And happy_var_1 happy_var_3
	)
happyReduction_78 _ _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_3  30 happyReduction_79
happyReduction_79 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Or happy_var_1 happy_var_3
	)
happyReduction_79 _ _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  30 happyReduction_80
happyReduction_80 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn30
		 (Comparison happy_var_1
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_3  30 happyReduction_81
happyReduction_81 _
	(HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (happy_var_2
	)
happyReduction_81 _ _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_2  31 happyReduction_82
happyReduction_82 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (Not happy_var_2
	)
happyReduction_82 _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_3  31 happyReduction_83
happyReduction_83 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (And happy_var_1 happy_var_3
	)
happyReduction_83 _ _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  31 happyReduction_84
happyReduction_84 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (Or happy_var_1 happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_1  31 happyReduction_85
happyReduction_85 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn31
		 (Comparison happy_var_1
	)
happyReduction_85 _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  31 happyReduction_86
happyReduction_86 _
	(HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (happy_var_2
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_1  32 happyReduction_87
happyReduction_87 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1]
	)
happyReduction_87 _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_3  32 happyReduction_88
happyReduction_88 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_88 _ _ _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_1  33 happyReduction_89
happyReduction_89 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 ([happy_var_1]
	)
happyReduction_89 _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_3  33 happyReduction_90
happyReduction_90 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_90 _ _ _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_1  34 happyReduction_91
happyReduction_91 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1]
	)
happyReduction_91 _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_3  34 happyReduction_92
happyReduction_92 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_92 _ _ _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_1  35 happyReduction_93
happyReduction_93 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1]
	)
happyReduction_93 _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_3  35 happyReduction_94
happyReduction_94 (HappyAbsSyn35  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_94 _ _ _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_1  36 happyReduction_95
happyReduction_95 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1]
	)
happyReduction_95 _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_3  36 happyReduction_96
happyReduction_96 (HappyAbsSyn36  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_96 _ _ _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_1  37 happyReduction_97
happyReduction_97 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn37
		 ([happy_var_1]
	)
happyReduction_97 _  = notHappyAtAll 

happyReduce_98 = happySpecReduce_3  37 happyReduction_98
happyReduction_98 (HappyAbsSyn37  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn37
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_98 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 107 107 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenSetup _ -> cont 38;
	TokenPrettyPrint _ -> cont 39;
	TokenRead _ -> cont 40;
	TokenLet _ -> cont 41;
	TokenReturn _ -> cont 42;
	TokenSelect _ -> cont 43;
	TokenFrom _ -> cont 44;
	TokenInsert _ -> cont 45;
	TokenInto _ -> cont 46;
	TokenValues _ -> cont 47;
	TokenColumn _ -> cont 48;
	TokenDelete _ -> cont 49;
	TokenWhere _ -> cont 50;
	TokenNot _ -> cont 51;
	TokenAnd _ -> cont 52;
	TokenOr _ -> cont 53;
	TokenIndex _ -> cont 54;
	TokenUpdate _ -> cont 55;
	TokenTo _ -> cont 56;
	TokenSet _ -> cont 57;
	TokenUnion _ -> cont 58;
	TokenAll _ -> cont 59;
	TokenIntersection _ -> cont 60;
	TokenDifference _ -> cont 61;
	TokenJoin _ -> cont 62;
	TokenInner _ -> cont 63;
	TokenLeft _ -> cont 64;
	TokenRight _ -> cont 65;
	TokenOuter _ -> cont 66;
	TokenFull _ -> cont 67;
	TokenMerge _ -> cont 68;
	TokenKeeping _ -> cont 69;
	TokenOn _ -> cont 70;
	TokenOrder _ -> cont 71;
	TokenIn _ -> cont 72;
	TokenBy _ -> cont 73;
	TokenAsc _ -> cont 74;
	TokenDesc _ -> cont 75;
	TokenLimit _ -> cont 76;
	TokenOffset _ -> cont 77;
	TokenLast _ -> cont 78;
	TokenUnique _ -> cont 79;
	TokenTranspose _ -> cont 80;
	TokenSep _ -> cont 81;
	TokenComma _ -> cont 82;
	TokenDot _ -> cont 83;
	TokenAt _ -> cont 84;
	TokenAssign _ -> cont 85;
	TokenAdd _ -> cont 86;
	TokenSubtract _ -> cont 87;
	TokenAst _ -> cont 88;
	TokenDivide _ -> cont 89;
	TokenModulo _ -> cont 90;
	TokenEq _ -> cont 91;
	TokenLessThan _ -> cont 92;
	TokenGreaterThan _ -> cont 93;
	TokenLessThanEq _ -> cont 94;
	TokenGreaterThanEq _ -> cont 95;
	TokenNotEq _ -> cont 96;
	TokenLParen _ -> cont 97;
	TokenRParen _ -> cont 98;
	TokenLParenSquare _ -> cont 99;
	TokenRParenSquare _ -> cont 100;
	TokenLParenCurly _ -> cont 101;
	TokenRParenCurly _ -> cont 102;
	TokenInt  _ happy_dollar_dollar -> cont 103;
	TokenFilename _ happy_dollar_dollar -> cont 104;
	TokenStr _ happy_dollar_dollar -> cont 105;
	TokenVar _ happy_dollar_dollar -> cont 106;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 107 tk tks = happyError' (tks, explist)
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

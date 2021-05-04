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
happyExpList = Happy_Data_Array.listArray (0,693) ([0,0,800,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,8192,36933,33806,15,8208,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,16384,512,0,0,0,3,0,0,0,0,0,6308,33234,496,2560,4,0,0,2048,0,0,0,0,0,8848,1864,1986,2048,16,0,8192,36933,33806,15,8208,0,0,35392,7456,7944,8192,64,0,0,0,4032,0,0,0,0,0,0,64,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,128,0,0,0,0,0,0,1,0,36864,18466,49671,7,4104,0,0,17696,3728,3972,4096,32,0,16384,8330,2077,31,16416,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,3072,0,0,0,0,0,0,2,0,0,16384,0,0,0,0,0,8,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10496,29826,31776,32768,256,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36864,18466,49671,7,4104,0,0,17696,3728,3972,4096,32,0,16384,8330,2077,31,16416,0,0,0,0,384,0,0,0,0,1024,0,0,0,0,0,0,8,0,0,0,0,0,4096,0,0,0,0,0,0,32,0,0,0,0,0,0,0,1,0,0,0,8192,36933,33806,15,8208,0,0,0,4,0,0,0,0,0,2048,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,32,0,0,0,0,32768,32768,0,0,0,0,0,0,128,0,0,0,0,0,2,0,0,0,1040,0,0,0,0,0,8192,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8848,1864,1986,2048,16,0,0,0,0,0,64,0,0,35392,7456,7944,8192,64,0,0,0,0,0,256,0,0,16384,0,0,0,0,0,0,0,0,0,16384,0,0,0,1,0,0,0,0,0,0,0,0,8192,4,0,0,0,0,16,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,18432,0,1024,1152,0,0,20992,59652,63552,0,513,0,0,4096,16384,0,0,0,0,0,0,0,32,32,0,0,8848,1864,1986,2048,16,0,8192,36933,33806,15,8208,0,0,35392,7456,7944,8192,64,0,0,2048,0,0,0,0,0,10496,29826,31776,32768,256,0,0,0,0,0,1024,0,0,0,0,0,0,8,0,0,0,0,0,4096,0,0,0,0,0,0,32,0,0,17696,3728,3988,4096,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,1536,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,32768,0,0,0,0,0,128,16,0,72,0,0,0,0,2,0,0,0,0,0,1024,0,0,0,0,0,0,8,0,0,0,0,4096,0,0,0,0,0,20992,59652,63552,0,513,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,16384,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,41984,53768,61569,1,1026,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4032,0,0,0,3072,0,64,0,0,0,0,0,0,0,2,0,0,18432,0,1024,128,0,0,0,0,0,992,0,0,0,8192,1,4096,512,0,0,0,0,0,0,0,0,0,8848,1864,1986,2048,16,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,41984,53768,61569,1,1026,0,0,0,0,0,0,0,0,36864,18466,49671,7,4104,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,20992,59652,63552,0,513,0,0,2212,33234,496,512,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24576,0,0,512,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12288,0,0,0,0,0,0,0,0,0,0,0,0,8192,1,4096,512,0,0,0,576,0,32,4,0,0,32768,4,16384,2048,0,0,0,0,0,128,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,2212,33234,496,512,4,0,18432,42001,57603,3,2052,0,0,8848,1864,1986,2048,16,0,8192,36933,33806,15,8208,0,0,0,0,0,0,0,0,0,6144,0,128,0,0,0,0,0,0,0,4,0,0,4096,512,0,256,0,0,0,0,0,8,0,0,0,16384,2048,0,1024,0,0,0,0,0,0,0,0,0,17696,3728,3972,4096,32,0,16384,8330,2077,31,16416,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,49152,0,0,1024,0,0,0,0,0,32,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,16386,0,8192,0,0,0,1024,128,0,64,0,0,0,8,1,32768,0,0,0,8192,0,0,0,0,0,0,64,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5248,14913,15888,16384,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,49152,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,36864,18466,49671,7,4104,0,0,17696,3728,3972,4096,32,0,16384,8330,2077,31,16416,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,504,0,0,0,0,0,0,0,0,0,8848,1864,1986,2048,16,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Configuration","Exp","TableType","FunctionTable","SelectFunction","InsertFunction","DeleteFunction","UpdateFunction","SetFunction","JoinFunction","FormatFunction","Direction","ColumnComparison","TableComparison","ComparisonOperator","ColumnRef","TableColumnRef","Assignment","Operator","CurlyList__Configuration__","List__Assignment__","List__ColumnRef__","List__Predicate__ColumnComparison____","List__Predicate__TableComparison____","List__Str__","Predicate__ColumnComparison__","Predicate__TableComparison__","CurlyListCont__Configuration__","ListCont__Assignment__","ListCont__ColumnRef__","ListCont__Predicate__ColumnComparison____","ListCont__Predicate__TableComparison____","ListCont__Str__","Setup","PrettyPrint","Read","Let","Return","Select","From","Insert","Into","Values","Column","Delete","Where","Not","And","Or","Index","Update","To","Set","Union","All","Intersection","Difference","Join","Inner","Left","Right","Outer","Full","On","Order","In","By","Asc","Desc","Limit","Offset","Last","Unique","Transpose","';'","','","'.'","\"@\"","'='","'+'","'-'","'*'","\"/\"","'%'","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","'('","')'","'['","']'","'{'","'}'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 105
        bit_end = (st Prelude.+ 1) Prelude.* 105
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..104]
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

action_2 (99) = happyShift action_35
action_2 (24) = happyGoto action_34
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (105) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (104) = happyShift action_33
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
action_6 (69) = happyShift action_25
action_6 (74) = happyShift action_26
action_6 (75) = happyShift action_27
action_6 (76) = happyShift action_28
action_6 (77) = happyShift action_29
action_6 (78) = happyShift action_30
action_6 (95) = happyShift action_31
action_6 (104) = happyShift action_32
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

action_7 (79) = happyShift action_68
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_8

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 _ = happyReduce_13

action_13 _ = happyReduce_14

action_14 _ = happyReduce_15

action_15 _ = happyReduce_16

action_16 (102) = happyShift action_67
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (86) = happyShift action_66
action_17 (97) = happyShift action_62
action_17 (26) = happyGoto action_65
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (47) = happyShift action_63
action_18 (48) = happyShift action_64
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (40) = happyShift action_16
action_19 (43) = happyShift action_17
action_19 (45) = happyShift action_18
action_19 (49) = happyShift action_19
action_19 (50) = happyShift action_61
action_19 (55) = happyShift action_20
action_19 (58) = happyShift action_21
action_19 (60) = happyShift action_22
action_19 (61) = happyShift action_23
action_19 (62) = happyShift action_24
action_19 (69) = happyShift action_25
action_19 (74) = happyShift action_26
action_19 (75) = happyShift action_27
action_19 (76) = happyShift action_28
action_19 (77) = happyShift action_29
action_19 (78) = happyShift action_30
action_19 (95) = happyShift action_31
action_19 (97) = happyShift action_62
action_19 (104) = happyShift action_32
action_19 (7) = happyGoto action_59
action_19 (8) = happyGoto action_8
action_19 (9) = happyGoto action_9
action_19 (10) = happyGoto action_10
action_19 (11) = happyGoto action_11
action_19 (12) = happyGoto action_12
action_19 (13) = happyGoto action_13
action_19 (14) = happyGoto action_14
action_19 (15) = happyGoto action_15
action_19 (26) = happyGoto action_60
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (56) = happyShift action_58
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
action_21 (69) = happyShift action_25
action_21 (74) = happyShift action_26
action_21 (75) = happyShift action_27
action_21 (76) = happyShift action_28
action_21 (77) = happyShift action_29
action_21 (78) = happyShift action_30
action_21 (95) = happyShift action_31
action_21 (104) = happyShift action_32
action_21 (7) = happyGoto action_57
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
action_22 (69) = happyShift action_25
action_22 (74) = happyShift action_26
action_22 (75) = happyShift action_27
action_22 (76) = happyShift action_28
action_22 (77) = happyShift action_29
action_22 (78) = happyShift action_30
action_22 (95) = happyShift action_31
action_22 (104) = happyShift action_32
action_22 (7) = happyGoto action_56
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
action_23 (69) = happyShift action_25
action_23 (74) = happyShift action_26
action_23 (75) = happyShift action_27
action_23 (76) = happyShift action_28
action_23 (77) = happyShift action_29
action_23 (78) = happyShift action_30
action_23 (95) = happyShift action_31
action_23 (104) = happyShift action_32
action_23 (7) = happyGoto action_55
action_23 (8) = happyGoto action_8
action_23 (9) = happyGoto action_9
action_23 (10) = happyGoto action_10
action_23 (11) = happyGoto action_11
action_23 (12) = happyGoto action_12
action_23 (13) = happyGoto action_13
action_23 (14) = happyGoto action_14
action_23 (15) = happyGoto action_15
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (63) = happyShift action_49
action_24 (64) = happyShift action_50
action_24 (65) = happyShift action_51
action_24 (66) = happyShift action_52
action_24 (67) = happyShift action_53
action_24 (68) = happyShift action_54
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (70) = happyShift action_48
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (101) = happyShift action_47
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (101) = happyShift action_46
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (101) = happyShift action_45
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (40) = happyShift action_16
action_29 (43) = happyShift action_17
action_29 (45) = happyShift action_18
action_29 (49) = happyShift action_19
action_29 (55) = happyShift action_20
action_29 (58) = happyShift action_21
action_29 (60) = happyShift action_22
action_29 (61) = happyShift action_23
action_29 (62) = happyShift action_24
action_29 (69) = happyShift action_25
action_29 (74) = happyShift action_26
action_29 (75) = happyShift action_27
action_29 (76) = happyShift action_28
action_29 (77) = happyShift action_29
action_29 (78) = happyShift action_30
action_29 (95) = happyShift action_31
action_29 (104) = happyShift action_32
action_29 (7) = happyGoto action_44
action_29 (8) = happyGoto action_8
action_29 (9) = happyGoto action_9
action_29 (10) = happyGoto action_10
action_29 (11) = happyGoto action_11
action_29 (12) = happyGoto action_12
action_29 (13) = happyGoto action_13
action_29 (14) = happyGoto action_14
action_29 (15) = happyGoto action_15
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
action_30 (69) = happyShift action_25
action_30 (74) = happyShift action_26
action_30 (75) = happyShift action_27
action_30 (76) = happyShift action_28
action_30 (77) = happyShift action_29
action_30 (78) = happyShift action_30
action_30 (95) = happyShift action_31
action_30 (104) = happyShift action_32
action_30 (7) = happyGoto action_43
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
action_31 (69) = happyShift action_25
action_31 (74) = happyShift action_26
action_31 (75) = happyShift action_27
action_31 (76) = happyShift action_28
action_31 (77) = happyShift action_29
action_31 (78) = happyShift action_30
action_31 (95) = happyShift action_31
action_31 (104) = happyShift action_32
action_31 (7) = happyGoto action_42
action_31 (8) = happyGoto action_8
action_31 (9) = happyGoto action_9
action_31 (10) = happyGoto action_10
action_31 (11) = happyGoto action_11
action_31 (12) = happyGoto action_12
action_31 (13) = happyGoto action_13
action_31 (14) = happyGoto action_14
action_31 (15) = happyGoto action_15
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_7

action_33 (83) = happyShift action_41
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (41) = happyShift action_5
action_34 (42) = happyShift action_6
action_34 (6) = happyGoto action_40
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (39) = happyShift action_38
action_35 (100) = happyShift action_39
action_35 (5) = happyGoto action_36
action_35 (32) = happyGoto action_37
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (80) = happyShift action_103
action_36 _ = happyReduce_86

action_37 (100) = happyShift action_102
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_3

action_39 _ = happyReduce_64

action_40 _ = happyReduce_1

action_41 (40) = happyShift action_16
action_41 (43) = happyShift action_17
action_41 (45) = happyShift action_18
action_41 (49) = happyShift action_19
action_41 (55) = happyShift action_20
action_41 (58) = happyShift action_21
action_41 (60) = happyShift action_22
action_41 (61) = happyShift action_23
action_41 (62) = happyShift action_24
action_41 (69) = happyShift action_25
action_41 (74) = happyShift action_26
action_41 (75) = happyShift action_27
action_41 (76) = happyShift action_28
action_41 (77) = happyShift action_29
action_41 (78) = happyShift action_30
action_41 (95) = happyShift action_31
action_41 (104) = happyShift action_32
action_41 (7) = happyGoto action_101
action_41 (8) = happyGoto action_8
action_41 (9) = happyGoto action_9
action_41 (10) = happyGoto action_10
action_41 (11) = happyGoto action_11
action_41 (12) = happyGoto action_12
action_41 (13) = happyGoto action_13
action_41 (14) = happyGoto action_14
action_41 (15) = happyGoto action_15
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (96) = happyShift action_100
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_43

action_44 _ = happyReduce_42

action_45 (40) = happyShift action_16
action_45 (43) = happyShift action_17
action_45 (45) = happyShift action_18
action_45 (49) = happyShift action_19
action_45 (55) = happyShift action_20
action_45 (58) = happyShift action_21
action_45 (60) = happyShift action_22
action_45 (61) = happyShift action_23
action_45 (62) = happyShift action_24
action_45 (69) = happyShift action_25
action_45 (74) = happyShift action_26
action_45 (75) = happyShift action_27
action_45 (76) = happyShift action_28
action_45 (77) = happyShift action_29
action_45 (78) = happyShift action_30
action_45 (95) = happyShift action_31
action_45 (104) = happyShift action_32
action_45 (7) = happyGoto action_99
action_45 (8) = happyGoto action_8
action_45 (9) = happyGoto action_9
action_45 (10) = happyGoto action_10
action_45 (11) = happyGoto action_11
action_45 (12) = happyGoto action_12
action_45 (13) = happyGoto action_13
action_45 (14) = happyGoto action_14
action_45 (15) = happyGoto action_15
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (40) = happyShift action_16
action_46 (43) = happyShift action_17
action_46 (45) = happyShift action_18
action_46 (49) = happyShift action_19
action_46 (55) = happyShift action_20
action_46 (58) = happyShift action_21
action_46 (60) = happyShift action_22
action_46 (61) = happyShift action_23
action_46 (62) = happyShift action_24
action_46 (69) = happyShift action_25
action_46 (74) = happyShift action_26
action_46 (75) = happyShift action_27
action_46 (76) = happyShift action_28
action_46 (77) = happyShift action_29
action_46 (78) = happyShift action_30
action_46 (95) = happyShift action_31
action_46 (104) = happyShift action_32
action_46 (7) = happyGoto action_98
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
action_47 (69) = happyShift action_25
action_47 (74) = happyShift action_26
action_47 (75) = happyShift action_27
action_47 (76) = happyShift action_28
action_47 (77) = happyShift action_29
action_47 (78) = happyShift action_30
action_47 (95) = happyShift action_31
action_47 (104) = happyShift action_32
action_47 (7) = happyGoto action_97
action_47 (8) = happyGoto action_8
action_47 (9) = happyGoto action_9
action_47 (10) = happyGoto action_10
action_47 (11) = happyGoto action_11
action_47 (12) = happyGoto action_12
action_47 (13) = happyGoto action_13
action_47 (14) = happyGoto action_14
action_47 (15) = happyGoto action_15
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (72) = happyShift action_95
action_48 (73) = happyShift action_96
action_48 (16) = happyGoto action_94
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (50) = happyShift action_93
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (50) = happyShift action_92
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (50) = happyShift action_91
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (50) = happyShift action_90
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (68) = happyShift action_89
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (40) = happyShift action_16
action_54 (43) = happyShift action_17
action_54 (45) = happyShift action_18
action_54 (49) = happyShift action_19
action_54 (55) = happyShift action_20
action_54 (58) = happyShift action_21
action_54 (60) = happyShift action_22
action_54 (61) = happyShift action_23
action_54 (62) = happyShift action_24
action_54 (69) = happyShift action_25
action_54 (74) = happyShift action_26
action_54 (75) = happyShift action_27
action_54 (76) = happyShift action_28
action_54 (77) = happyShift action_29
action_54 (78) = happyShift action_30
action_54 (95) = happyShift action_31
action_54 (104) = happyShift action_32
action_54 (7) = happyGoto action_88
action_54 (8) = happyGoto action_8
action_54 (9) = happyGoto action_9
action_54 (10) = happyGoto action_10
action_54 (11) = happyGoto action_11
action_54 (12) = happyGoto action_12
action_54 (13) = happyGoto action_13
action_54 (14) = happyGoto action_14
action_54 (15) = happyGoto action_15
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (52) = happyShift action_87
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (52) = happyShift action_86
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (52) = happyShift action_85
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (97) = happyShift action_84
action_58 (25) = happyGoto action_83
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_23

action_60 (44) = happyShift action_82
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (97) = happyShift action_81
action_61 (27) = happyGoto action_80
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (82) = happyShift action_74
action_62 (98) = happyShift action_79
action_62 (20) = happyGoto action_77
action_62 (34) = happyGoto action_78
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (97) = happyShift action_76
action_63 (29) = happyGoto action_75
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (82) = happyShift action_74
action_64 (20) = happyGoto action_73
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (44) = happyShift action_71
action_65 (50) = happyShift action_72
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (44) = happyShift action_69
action_66 (50) = happyShift action_70
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_6

action_68 _ = happyReduce_5

action_69 (40) = happyShift action_16
action_69 (43) = happyShift action_17
action_69 (45) = happyShift action_18
action_69 (49) = happyShift action_19
action_69 (55) = happyShift action_20
action_69 (58) = happyShift action_21
action_69 (60) = happyShift action_22
action_69 (61) = happyShift action_23
action_69 (62) = happyShift action_24
action_69 (69) = happyShift action_25
action_69 (74) = happyShift action_26
action_69 (75) = happyShift action_27
action_69 (76) = happyShift action_28
action_69 (77) = happyShift action_29
action_69 (78) = happyShift action_30
action_69 (95) = happyShift action_31
action_69 (104) = happyShift action_32
action_69 (7) = happyGoto action_145
action_69 (8) = happyGoto action_8
action_69 (9) = happyGoto action_9
action_69 (10) = happyGoto action_10
action_69 (11) = happyGoto action_11
action_69 (12) = happyGoto action_12
action_69 (13) = happyGoto action_13
action_69 (14) = happyGoto action_14
action_69 (15) = happyGoto action_15
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (97) = happyShift action_81
action_70 (27) = happyGoto action_144
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (40) = happyShift action_16
action_71 (43) = happyShift action_17
action_71 (45) = happyShift action_18
action_71 (49) = happyShift action_19
action_71 (55) = happyShift action_20
action_71 (58) = happyShift action_21
action_71 (60) = happyShift action_22
action_71 (61) = happyShift action_23
action_71 (62) = happyShift action_24
action_71 (69) = happyShift action_25
action_71 (74) = happyShift action_26
action_71 (75) = happyShift action_27
action_71 (76) = happyShift action_28
action_71 (77) = happyShift action_29
action_71 (78) = happyShift action_30
action_71 (95) = happyShift action_31
action_71 (104) = happyShift action_32
action_71 (7) = happyGoto action_143
action_71 (8) = happyGoto action_8
action_71 (9) = happyGoto action_9
action_71 (10) = happyGoto action_10
action_71 (11) = happyGoto action_11
action_71 (12) = happyGoto action_12
action_71 (13) = happyGoto action_13
action_71 (14) = happyGoto action_14
action_71 (15) = happyGoto action_15
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (97) = happyShift action_81
action_72 (27) = happyGoto action_142
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (46) = happyShift action_141
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (101) = happyShift action_140
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (46) = happyShift action_139
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (98) = happyShift action_137
action_76 (103) = happyShift action_138
action_76 (37) = happyGoto action_136
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (80) = happyShift action_135
action_77 _ = happyReduce_90

action_78 (98) = happyShift action_134
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_68

action_80 (44) = happyShift action_133
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (51) = happyShift action_129
action_81 (54) = happyShift action_130
action_81 (82) = happyShift action_74
action_81 (95) = happyShift action_131
action_81 (98) = happyShift action_132
action_81 (17) = happyGoto action_125
action_81 (20) = happyGoto action_126
action_81 (30) = happyGoto action_127
action_81 (35) = happyGoto action_128
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (40) = happyShift action_16
action_82 (43) = happyShift action_17
action_82 (45) = happyShift action_18
action_82 (49) = happyShift action_19
action_82 (55) = happyShift action_20
action_82 (58) = happyShift action_21
action_82 (60) = happyShift action_22
action_82 (61) = happyShift action_23
action_82 (62) = happyShift action_24
action_82 (69) = happyShift action_25
action_82 (74) = happyShift action_26
action_82 (75) = happyShift action_27
action_82 (76) = happyShift action_28
action_82 (77) = happyShift action_29
action_82 (78) = happyShift action_30
action_82 (95) = happyShift action_31
action_82 (104) = happyShift action_32
action_82 (7) = happyGoto action_124
action_82 (8) = happyGoto action_8
action_82 (9) = happyGoto action_9
action_82 (10) = happyGoto action_10
action_82 (11) = happyGoto action_11
action_82 (12) = happyGoto action_12
action_82 (13) = happyGoto action_13
action_82 (14) = happyGoto action_14
action_82 (15) = happyGoto action_15
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (50) = happyShift action_122
action_83 (68) = happyShift action_123
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (82) = happyShift action_74
action_84 (98) = happyShift action_121
action_84 (20) = happyGoto action_118
action_84 (22) = happyGoto action_119
action_84 (33) = happyGoto action_120
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (40) = happyShift action_16
action_85 (43) = happyShift action_17
action_85 (45) = happyShift action_18
action_85 (49) = happyShift action_19
action_85 (55) = happyShift action_20
action_85 (58) = happyShift action_21
action_85 (60) = happyShift action_22
action_85 (61) = happyShift action_23
action_85 (62) = happyShift action_24
action_85 (69) = happyShift action_25
action_85 (74) = happyShift action_26
action_85 (75) = happyShift action_27
action_85 (76) = happyShift action_28
action_85 (77) = happyShift action_29
action_85 (78) = happyShift action_30
action_85 (95) = happyShift action_31
action_85 (104) = happyShift action_32
action_85 (7) = happyGoto action_117
action_85 (8) = happyGoto action_8
action_85 (9) = happyGoto action_9
action_85 (10) = happyGoto action_10
action_85 (11) = happyGoto action_11
action_85 (12) = happyGoto action_12
action_85 (13) = happyGoto action_13
action_85 (14) = happyGoto action_14
action_85 (15) = happyGoto action_15
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (40) = happyShift action_16
action_86 (43) = happyShift action_17
action_86 (45) = happyShift action_18
action_86 (49) = happyShift action_19
action_86 (55) = happyShift action_20
action_86 (58) = happyShift action_21
action_86 (60) = happyShift action_22
action_86 (61) = happyShift action_23
action_86 (62) = happyShift action_24
action_86 (69) = happyShift action_25
action_86 (74) = happyShift action_26
action_86 (75) = happyShift action_27
action_86 (76) = happyShift action_28
action_86 (77) = happyShift action_29
action_86 (78) = happyShift action_30
action_86 (95) = happyShift action_31
action_86 (104) = happyShift action_32
action_86 (7) = happyGoto action_116
action_86 (8) = happyGoto action_8
action_86 (9) = happyGoto action_9
action_86 (10) = happyGoto action_10
action_86 (11) = happyGoto action_11
action_86 (12) = happyGoto action_12
action_86 (13) = happyGoto action_13
action_86 (14) = happyGoto action_14
action_86 (15) = happyGoto action_15
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
action_87 (69) = happyShift action_25
action_87 (74) = happyShift action_26
action_87 (75) = happyShift action_27
action_87 (76) = happyShift action_28
action_87 (77) = happyShift action_29
action_87 (78) = happyShift action_30
action_87 (95) = happyShift action_31
action_87 (104) = happyShift action_32
action_87 (7) = happyGoto action_115
action_87 (8) = happyGoto action_8
action_87 (9) = happyGoto action_9
action_87 (10) = happyGoto action_10
action_87 (11) = happyGoto action_11
action_87 (12) = happyGoto action_12
action_87 (13) = happyGoto action_13
action_87 (14) = happyGoto action_14
action_87 (15) = happyGoto action_15
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (52) = happyShift action_114
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
action_89 (69) = happyShift action_25
action_89 (74) = happyShift action_26
action_89 (75) = happyShift action_27
action_89 (76) = happyShift action_28
action_89 (77) = happyShift action_29
action_89 (78) = happyShift action_30
action_89 (95) = happyShift action_31
action_89 (104) = happyShift action_32
action_89 (7) = happyGoto action_113
action_89 (8) = happyGoto action_8
action_89 (9) = happyGoto action_9
action_89 (10) = happyGoto action_10
action_89 (11) = happyGoto action_11
action_89 (12) = happyGoto action_12
action_89 (13) = happyGoto action_13
action_89 (14) = happyGoto action_14
action_89 (15) = happyGoto action_15
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (97) = happyShift action_109
action_90 (28) = happyGoto action_112
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (97) = happyShift action_109
action_91 (28) = happyGoto action_111
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (97) = happyShift action_109
action_92 (28) = happyGoto action_110
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (97) = happyShift action_109
action_93 (28) = happyGoto action_108
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (40) = happyShift action_16
action_94 (43) = happyShift action_17
action_94 (45) = happyShift action_18
action_94 (49) = happyShift action_19
action_94 (55) = happyShift action_20
action_94 (58) = happyShift action_21
action_94 (60) = happyShift action_22
action_94 (61) = happyShift action_23
action_94 (62) = happyShift action_24
action_94 (69) = happyShift action_25
action_94 (71) = happyShift action_107
action_94 (74) = happyShift action_26
action_94 (75) = happyShift action_27
action_94 (76) = happyShift action_28
action_94 (77) = happyShift action_29
action_94 (78) = happyShift action_30
action_94 (95) = happyShift action_31
action_94 (104) = happyShift action_32
action_94 (7) = happyGoto action_106
action_94 (8) = happyGoto action_8
action_94 (9) = happyGoto action_9
action_94 (10) = happyGoto action_10
action_94 (11) = happyGoto action_11
action_94 (12) = happyGoto action_12
action_94 (13) = happyGoto action_13
action_94 (14) = happyGoto action_14
action_94 (15) = happyGoto action_15
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_44

action_96 _ = happyReduce_45

action_97 _ = happyReduce_39

action_98 _ = happyReduce_40

action_99 _ = happyReduce_41

action_100 _ = happyReduce_9

action_101 (79) = happyShift action_105
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_65

action_103 (39) = happyShift action_38
action_103 (5) = happyGoto action_36
action_103 (32) = happyGoto action_104
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_87

action_105 (41) = happyShift action_5
action_105 (42) = happyShift action_6
action_105 (6) = happyGoto action_192
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_37

action_107 (97) = happyShift action_62
action_107 (26) = happyGoto action_191
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (68) = happyShift action_190
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (51) = happyShift action_186
action_109 (64) = happyShift action_187
action_109 (95) = happyShift action_188
action_109 (98) = happyShift action_189
action_109 (18) = happyGoto action_183
action_109 (31) = happyGoto action_184
action_109 (36) = happyGoto action_185
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (68) = happyShift action_182
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (68) = happyShift action_181
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (68) = happyShift action_180
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (52) = happyShift action_179
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (40) = happyShift action_16
action_114 (43) = happyShift action_17
action_114 (45) = happyShift action_18
action_114 (49) = happyShift action_19
action_114 (55) = happyShift action_20
action_114 (58) = happyShift action_21
action_114 (60) = happyShift action_22
action_114 (61) = happyShift action_23
action_114 (62) = happyShift action_24
action_114 (69) = happyShift action_25
action_114 (74) = happyShift action_26
action_114 (75) = happyShift action_27
action_114 (76) = happyShift action_28
action_114 (77) = happyShift action_29
action_114 (78) = happyShift action_30
action_114 (95) = happyShift action_31
action_114 (104) = happyShift action_32
action_114 (7) = happyGoto action_178
action_114 (8) = happyGoto action_8
action_114 (9) = happyGoto action_9
action_114 (10) = happyGoto action_10
action_114 (11) = happyGoto action_11
action_114 (12) = happyGoto action_12
action_114 (13) = happyGoto action_13
action_114 (14) = happyGoto action_14
action_114 (15) = happyGoto action_15
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_30

action_116 _ = happyReduce_29

action_117 _ = happyReduce_28

action_118 (83) = happyShift action_177
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (80) = happyShift action_176
action_119 _ = happyReduce_88

action_120 (98) = happyShift action_175
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_66

action_122 (97) = happyShift action_81
action_122 (27) = happyGoto action_174
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (40) = happyShift action_16
action_123 (43) = happyShift action_17
action_123 (45) = happyShift action_18
action_123 (49) = happyShift action_19
action_123 (55) = happyShift action_20
action_123 (58) = happyShift action_21
action_123 (60) = happyShift action_22
action_123 (61) = happyShift action_23
action_123 (62) = happyShift action_24
action_123 (69) = happyShift action_25
action_123 (74) = happyShift action_26
action_123 (75) = happyShift action_27
action_123 (76) = happyShift action_28
action_123 (77) = happyShift action_29
action_123 (78) = happyShift action_30
action_123 (95) = happyShift action_31
action_123 (104) = happyShift action_32
action_123 (7) = happyGoto action_173
action_123 (8) = happyGoto action_8
action_123 (9) = happyGoto action_9
action_123 (10) = happyGoto action_10
action_123 (11) = happyGoto action_11
action_123 (12) = happyGoto action_12
action_123 (13) = happyGoto action_13
action_123 (14) = happyGoto action_14
action_123 (15) = happyGoto action_15
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_24

action_125 _ = happyReduce_79

action_126 (89) = happyShift action_167
action_126 (90) = happyShift action_168
action_126 (91) = happyShift action_169
action_126 (92) = happyShift action_170
action_126 (93) = happyShift action_171
action_126 (94) = happyShift action_172
action_126 (19) = happyGoto action_166
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (52) = happyShift action_163
action_127 (53) = happyShift action_164
action_127 (80) = happyShift action_165
action_127 _ = happyReduce_92

action_128 (98) = happyShift action_162
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (51) = happyShift action_129
action_129 (54) = happyShift action_130
action_129 (82) = happyShift action_74
action_129 (95) = happyShift action_131
action_129 (17) = happyGoto action_125
action_129 (20) = happyGoto action_126
action_129 (30) = happyGoto action_161
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (84) = happyShift action_156
action_130 (85) = happyShift action_157
action_130 (86) = happyShift action_158
action_130 (87) = happyShift action_159
action_130 (88) = happyShift action_160
action_130 (23) = happyGoto action_155
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (51) = happyShift action_129
action_131 (54) = happyShift action_130
action_131 (82) = happyShift action_74
action_131 (95) = happyShift action_131
action_131 (17) = happyGoto action_125
action_131 (20) = happyGoto action_126
action_131 (30) = happyGoto action_154
action_131 _ = happyFail (happyExpListPerState 131)

action_132 _ = happyReduce_70

action_133 (40) = happyShift action_16
action_133 (43) = happyShift action_17
action_133 (45) = happyShift action_18
action_133 (49) = happyShift action_19
action_133 (55) = happyShift action_20
action_133 (58) = happyShift action_21
action_133 (60) = happyShift action_22
action_133 (61) = happyShift action_23
action_133 (62) = happyShift action_24
action_133 (69) = happyShift action_25
action_133 (74) = happyShift action_26
action_133 (75) = happyShift action_27
action_133 (76) = happyShift action_28
action_133 (77) = happyShift action_29
action_133 (78) = happyShift action_30
action_133 (95) = happyShift action_31
action_133 (104) = happyShift action_32
action_133 (7) = happyGoto action_153
action_133 (8) = happyGoto action_8
action_133 (9) = happyGoto action_9
action_133 (10) = happyGoto action_10
action_133 (11) = happyGoto action_11
action_133 (12) = happyGoto action_12
action_133 (13) = happyGoto action_13
action_133 (14) = happyGoto action_14
action_133 (15) = happyGoto action_15
action_133 _ = happyFail (happyExpListPerState 133)

action_134 _ = happyReduce_69

action_135 (82) = happyShift action_74
action_135 (20) = happyGoto action_77
action_135 (34) = happyGoto action_152
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (98) = happyShift action_151
action_136 _ = happyFail (happyExpListPerState 136)

action_137 _ = happyReduce_74

action_138 (80) = happyShift action_150
action_138 _ = happyReduce_96

action_139 (40) = happyShift action_16
action_139 (43) = happyShift action_17
action_139 (45) = happyShift action_18
action_139 (49) = happyShift action_19
action_139 (55) = happyShift action_20
action_139 (58) = happyShift action_21
action_139 (60) = happyShift action_22
action_139 (61) = happyShift action_23
action_139 (62) = happyShift action_24
action_139 (69) = happyShift action_25
action_139 (74) = happyShift action_26
action_139 (75) = happyShift action_27
action_139 (76) = happyShift action_28
action_139 (77) = happyShift action_29
action_139 (78) = happyShift action_30
action_139 (95) = happyShift action_31
action_139 (104) = happyShift action_32
action_139 (7) = happyGoto action_149
action_139 (8) = happyGoto action_8
action_139 (9) = happyGoto action_9
action_139 (10) = happyGoto action_10
action_139 (11) = happyGoto action_11
action_139 (12) = happyGoto action_12
action_139 (13) = happyGoto action_13
action_139 (14) = happyGoto action_14
action_139 (15) = happyGoto action_15
action_139 _ = happyFail (happyExpListPerState 139)

action_140 _ = happyReduce_56

action_141 (40) = happyShift action_16
action_141 (43) = happyShift action_17
action_141 (45) = happyShift action_18
action_141 (49) = happyShift action_19
action_141 (55) = happyShift action_20
action_141 (58) = happyShift action_21
action_141 (60) = happyShift action_22
action_141 (61) = happyShift action_23
action_141 (62) = happyShift action_24
action_141 (69) = happyShift action_25
action_141 (74) = happyShift action_26
action_141 (75) = happyShift action_27
action_141 (76) = happyShift action_28
action_141 (77) = happyShift action_29
action_141 (78) = happyShift action_30
action_141 (95) = happyShift action_31
action_141 (104) = happyShift action_32
action_141 (7) = happyGoto action_148
action_141 (8) = happyGoto action_8
action_141 (9) = happyGoto action_9
action_141 (10) = happyGoto action_10
action_141 (11) = happyGoto action_11
action_141 (12) = happyGoto action_12
action_141 (13) = happyGoto action_13
action_141 (14) = happyGoto action_14
action_141 (15) = happyGoto action_15
action_141 _ = happyFail (happyExpListPerState 141)

action_142 (44) = happyShift action_147
action_142 _ = happyFail (happyExpListPerState 142)

action_143 _ = happyReduce_18

action_144 (44) = happyShift action_146
action_144 _ = happyFail (happyExpListPerState 144)

action_145 _ = happyReduce_17

action_146 (40) = happyShift action_16
action_146 (43) = happyShift action_17
action_146 (45) = happyShift action_18
action_146 (49) = happyShift action_19
action_146 (55) = happyShift action_20
action_146 (58) = happyShift action_21
action_146 (60) = happyShift action_22
action_146 (61) = happyShift action_23
action_146 (62) = happyShift action_24
action_146 (69) = happyShift action_25
action_146 (74) = happyShift action_26
action_146 (75) = happyShift action_27
action_146 (76) = happyShift action_28
action_146 (77) = happyShift action_29
action_146 (78) = happyShift action_30
action_146 (95) = happyShift action_31
action_146 (104) = happyShift action_32
action_146 (7) = happyGoto action_218
action_146 (8) = happyGoto action_8
action_146 (9) = happyGoto action_9
action_146 (10) = happyGoto action_10
action_146 (11) = happyGoto action_11
action_146 (12) = happyGoto action_12
action_146 (13) = happyGoto action_13
action_146 (14) = happyGoto action_14
action_146 (15) = happyGoto action_15
action_146 _ = happyFail (happyExpListPerState 146)

action_147 (40) = happyShift action_16
action_147 (43) = happyShift action_17
action_147 (45) = happyShift action_18
action_147 (49) = happyShift action_19
action_147 (55) = happyShift action_20
action_147 (58) = happyShift action_21
action_147 (60) = happyShift action_22
action_147 (61) = happyShift action_23
action_147 (62) = happyShift action_24
action_147 (69) = happyShift action_25
action_147 (74) = happyShift action_26
action_147 (75) = happyShift action_27
action_147 (76) = happyShift action_28
action_147 (77) = happyShift action_29
action_147 (78) = happyShift action_30
action_147 (95) = happyShift action_31
action_147 (104) = happyShift action_32
action_147 (7) = happyGoto action_217
action_147 (8) = happyGoto action_8
action_147 (9) = happyGoto action_9
action_147 (10) = happyGoto action_10
action_147 (11) = happyGoto action_11
action_147 (12) = happyGoto action_12
action_147 (13) = happyGoto action_13
action_147 (14) = happyGoto action_14
action_147 (15) = happyGoto action_15
action_147 _ = happyFail (happyExpListPerState 147)

action_148 _ = happyReduce_22

action_149 _ = happyReduce_21

action_150 (103) = happyShift action_138
action_150 (37) = happyGoto action_216
action_150 _ = happyFail (happyExpListPerState 150)

action_151 _ = happyReduce_75

action_152 _ = happyReduce_91

action_153 _ = happyReduce_25

action_154 (52) = happyShift action_163
action_154 (53) = happyShift action_164
action_154 (96) = happyShift action_215
action_154 _ = happyFail (happyExpListPerState 154)

action_155 (101) = happyShift action_214
action_155 _ = happyFail (happyExpListPerState 155)

action_156 _ = happyReduce_59

action_157 _ = happyReduce_60

action_158 _ = happyReduce_62

action_159 _ = happyReduce_61

action_160 _ = happyReduce_63

action_161 (52) = happyShift action_163
action_161 (53) = happyShift action_164
action_161 _ = happyReduce_76

action_162 _ = happyReduce_71

action_163 (51) = happyShift action_129
action_163 (54) = happyShift action_130
action_163 (82) = happyShift action_74
action_163 (95) = happyShift action_131
action_163 (17) = happyGoto action_125
action_163 (20) = happyGoto action_126
action_163 (30) = happyGoto action_213
action_163 _ = happyFail (happyExpListPerState 163)

action_164 (51) = happyShift action_129
action_164 (54) = happyShift action_130
action_164 (82) = happyShift action_74
action_164 (95) = happyShift action_131
action_164 (17) = happyGoto action_125
action_164 (20) = happyGoto action_126
action_164 (30) = happyGoto action_212
action_164 _ = happyFail (happyExpListPerState 164)

action_165 (51) = happyShift action_129
action_165 (54) = happyShift action_130
action_165 (82) = happyShift action_74
action_165 (95) = happyShift action_131
action_165 (17) = happyGoto action_125
action_165 (20) = happyGoto action_126
action_165 (30) = happyGoto action_127
action_165 (35) = happyGoto action_211
action_165 _ = happyFail (happyExpListPerState 165)

action_166 (82) = happyShift action_74
action_166 (103) = happyShift action_210
action_166 (20) = happyGoto action_209
action_166 _ = happyFail (happyExpListPerState 166)

action_167 _ = happyReduce_50

action_168 _ = happyReduce_51

action_169 _ = happyReduce_52

action_170 _ = happyReduce_53

action_171 _ = happyReduce_54

action_172 _ = happyReduce_55

action_173 _ = happyReduce_26

action_174 (68) = happyShift action_208
action_174 _ = happyFail (happyExpListPerState 174)

action_175 _ = happyReduce_67

action_176 (82) = happyShift action_74
action_176 (20) = happyGoto action_118
action_176 (22) = happyGoto action_119
action_176 (33) = happyGoto action_207
action_176 _ = happyFail (happyExpListPerState 176)

action_177 (103) = happyShift action_206
action_177 _ = happyFail (happyExpListPerState 177)

action_178 _ = happyReduce_31

action_179 (40) = happyShift action_16
action_179 (43) = happyShift action_17
action_179 (45) = happyShift action_18
action_179 (49) = happyShift action_19
action_179 (55) = happyShift action_20
action_179 (58) = happyShift action_21
action_179 (60) = happyShift action_22
action_179 (61) = happyShift action_23
action_179 (62) = happyShift action_24
action_179 (69) = happyShift action_25
action_179 (74) = happyShift action_26
action_179 (75) = happyShift action_27
action_179 (76) = happyShift action_28
action_179 (77) = happyShift action_29
action_179 (78) = happyShift action_30
action_179 (95) = happyShift action_31
action_179 (104) = happyShift action_32
action_179 (7) = happyGoto action_205
action_179 (8) = happyGoto action_8
action_179 (9) = happyGoto action_9
action_179 (10) = happyGoto action_10
action_179 (11) = happyGoto action_11
action_179 (12) = happyGoto action_12
action_179 (13) = happyGoto action_13
action_179 (14) = happyGoto action_14
action_179 (15) = happyGoto action_15
action_179 _ = happyFail (happyExpListPerState 179)

action_180 (40) = happyShift action_16
action_180 (43) = happyShift action_17
action_180 (45) = happyShift action_18
action_180 (49) = happyShift action_19
action_180 (55) = happyShift action_20
action_180 (58) = happyShift action_21
action_180 (60) = happyShift action_22
action_180 (61) = happyShift action_23
action_180 (62) = happyShift action_24
action_180 (69) = happyShift action_25
action_180 (74) = happyShift action_26
action_180 (75) = happyShift action_27
action_180 (76) = happyShift action_28
action_180 (77) = happyShift action_29
action_180 (78) = happyShift action_30
action_180 (95) = happyShift action_31
action_180 (104) = happyShift action_32
action_180 (7) = happyGoto action_204
action_180 (8) = happyGoto action_8
action_180 (9) = happyGoto action_9
action_180 (10) = happyGoto action_10
action_180 (11) = happyGoto action_11
action_180 (12) = happyGoto action_12
action_180 (13) = happyGoto action_13
action_180 (14) = happyGoto action_14
action_180 (15) = happyGoto action_15
action_180 _ = happyFail (happyExpListPerState 180)

action_181 (40) = happyShift action_16
action_181 (43) = happyShift action_17
action_181 (45) = happyShift action_18
action_181 (49) = happyShift action_19
action_181 (55) = happyShift action_20
action_181 (58) = happyShift action_21
action_181 (60) = happyShift action_22
action_181 (61) = happyShift action_23
action_181 (62) = happyShift action_24
action_181 (69) = happyShift action_25
action_181 (74) = happyShift action_26
action_181 (75) = happyShift action_27
action_181 (76) = happyShift action_28
action_181 (77) = happyShift action_29
action_181 (78) = happyShift action_30
action_181 (95) = happyShift action_31
action_181 (104) = happyShift action_32
action_181 (7) = happyGoto action_203
action_181 (8) = happyGoto action_8
action_181 (9) = happyGoto action_9
action_181 (10) = happyGoto action_10
action_181 (11) = happyGoto action_11
action_181 (12) = happyGoto action_12
action_181 (13) = happyGoto action_13
action_181 (14) = happyGoto action_14
action_181 (15) = happyGoto action_15
action_181 _ = happyFail (happyExpListPerState 181)

action_182 (40) = happyShift action_16
action_182 (43) = happyShift action_17
action_182 (45) = happyShift action_18
action_182 (49) = happyShift action_19
action_182 (55) = happyShift action_20
action_182 (58) = happyShift action_21
action_182 (60) = happyShift action_22
action_182 (61) = happyShift action_23
action_182 (62) = happyShift action_24
action_182 (69) = happyShift action_25
action_182 (74) = happyShift action_26
action_182 (75) = happyShift action_27
action_182 (76) = happyShift action_28
action_182 (77) = happyShift action_29
action_182 (78) = happyShift action_30
action_182 (95) = happyShift action_31
action_182 (104) = happyShift action_32
action_182 (7) = happyGoto action_202
action_182 (8) = happyGoto action_8
action_182 (9) = happyGoto action_9
action_182 (10) = happyGoto action_10
action_182 (11) = happyGoto action_11
action_182 (12) = happyGoto action_12
action_182 (13) = happyGoto action_13
action_182 (14) = happyGoto action_14
action_182 (15) = happyGoto action_15
action_182 _ = happyFail (happyExpListPerState 182)

action_183 _ = happyReduce_84

action_184 (52) = happyShift action_199
action_184 (53) = happyShift action_200
action_184 (80) = happyShift action_201
action_184 _ = happyReduce_94

action_185 (98) = happyShift action_198
action_185 _ = happyFail (happyExpListPerState 185)

action_186 (51) = happyShift action_186
action_186 (64) = happyShift action_187
action_186 (95) = happyShift action_188
action_186 (18) = happyGoto action_183
action_186 (31) = happyGoto action_197
action_186 _ = happyFail (happyExpListPerState 186)

action_187 (81) = happyShift action_196
action_187 _ = happyFail (happyExpListPerState 187)

action_188 (51) = happyShift action_186
action_188 (64) = happyShift action_187
action_188 (95) = happyShift action_188
action_188 (18) = happyGoto action_183
action_188 (31) = happyGoto action_195
action_188 _ = happyFail (happyExpListPerState 188)

action_189 _ = happyReduce_72

action_190 (40) = happyShift action_16
action_190 (43) = happyShift action_17
action_190 (45) = happyShift action_18
action_190 (49) = happyShift action_19
action_190 (55) = happyShift action_20
action_190 (58) = happyShift action_21
action_190 (60) = happyShift action_22
action_190 (61) = happyShift action_23
action_190 (62) = happyShift action_24
action_190 (69) = happyShift action_25
action_190 (74) = happyShift action_26
action_190 (75) = happyShift action_27
action_190 (76) = happyShift action_28
action_190 (77) = happyShift action_29
action_190 (78) = happyShift action_30
action_190 (95) = happyShift action_31
action_190 (104) = happyShift action_32
action_190 (7) = happyGoto action_194
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
action_191 (69) = happyShift action_25
action_191 (74) = happyShift action_26
action_191 (75) = happyShift action_27
action_191 (76) = happyShift action_28
action_191 (77) = happyShift action_29
action_191 (78) = happyShift action_30
action_191 (95) = happyShift action_31
action_191 (104) = happyShift action_32
action_191 (7) = happyGoto action_193
action_191 (8) = happyGoto action_8
action_191 (9) = happyGoto action_9
action_191 (10) = happyGoto action_10
action_191 (11) = happyGoto action_11
action_191 (12) = happyGoto action_12
action_191 (13) = happyGoto action_13
action_191 (14) = happyGoto action_14
action_191 (15) = happyGoto action_15
action_191 _ = happyFail (happyExpListPerState 191)

action_192 _ = happyReduce_4

action_193 _ = happyReduce_38

action_194 (52) = happyShift action_229
action_194 _ = happyFail (happyExpListPerState 194)

action_195 (52) = happyShift action_199
action_195 (53) = happyShift action_200
action_195 (96) = happyShift action_228
action_195 _ = happyFail (happyExpListPerState 195)

action_196 (82) = happyShift action_74
action_196 (20) = happyGoto action_227
action_196 _ = happyFail (happyExpListPerState 196)

action_197 (52) = happyShift action_199
action_197 (53) = happyShift action_200
action_197 _ = happyReduce_81

action_198 _ = happyReduce_73

action_199 (51) = happyShift action_186
action_199 (64) = happyShift action_187
action_199 (95) = happyShift action_188
action_199 (18) = happyGoto action_183
action_199 (31) = happyGoto action_226
action_199 _ = happyFail (happyExpListPerState 199)

action_200 (51) = happyShift action_186
action_200 (64) = happyShift action_187
action_200 (95) = happyShift action_188
action_200 (18) = happyGoto action_183
action_200 (31) = happyGoto action_225
action_200 _ = happyFail (happyExpListPerState 200)

action_201 (51) = happyShift action_186
action_201 (64) = happyShift action_187
action_201 (95) = happyShift action_188
action_201 (18) = happyGoto action_183
action_201 (31) = happyGoto action_184
action_201 (36) = happyGoto action_224
action_201 _ = happyFail (happyExpListPerState 201)

action_202 (52) = happyShift action_223
action_202 _ = happyFail (happyExpListPerState 202)

action_203 (52) = happyShift action_222
action_203 _ = happyFail (happyExpListPerState 203)

action_204 (52) = happyShift action_221
action_204 _ = happyFail (happyExpListPerState 204)

action_205 _ = happyReduce_36

action_206 _ = happyReduce_58

action_207 _ = happyReduce_89

action_208 (40) = happyShift action_16
action_208 (43) = happyShift action_17
action_208 (45) = happyShift action_18
action_208 (49) = happyShift action_19
action_208 (55) = happyShift action_20
action_208 (58) = happyShift action_21
action_208 (60) = happyShift action_22
action_208 (61) = happyShift action_23
action_208 (62) = happyShift action_24
action_208 (69) = happyShift action_25
action_208 (74) = happyShift action_26
action_208 (75) = happyShift action_27
action_208 (76) = happyShift action_28
action_208 (77) = happyShift action_29
action_208 (78) = happyShift action_30
action_208 (95) = happyShift action_31
action_208 (104) = happyShift action_32
action_208 (7) = happyGoto action_220
action_208 (8) = happyGoto action_8
action_208 (9) = happyGoto action_9
action_208 (10) = happyGoto action_10
action_208 (11) = happyGoto action_11
action_208 (12) = happyGoto action_12
action_208 (13) = happyGoto action_13
action_208 (14) = happyGoto action_14
action_208 (15) = happyGoto action_15
action_208 _ = happyFail (happyExpListPerState 208)

action_209 _ = happyReduce_47

action_210 _ = happyReduce_46

action_211 _ = happyReduce_93

action_212 (53) = happyFail []
action_212 _ = happyReduce_78

action_213 (52) = happyFail []
action_213 (53) = happyShift action_164
action_213 _ = happyReduce_77

action_214 (89) = happyShift action_167
action_214 (90) = happyShift action_168
action_214 (91) = happyShift action_169
action_214 (92) = happyShift action_170
action_214 (93) = happyShift action_171
action_214 (94) = happyShift action_172
action_214 (19) = happyGoto action_219
action_214 _ = happyFail (happyExpListPerState 214)

action_215 _ = happyReduce_80

action_216 _ = happyReduce_97

action_217 _ = happyReduce_20

action_218 _ = happyReduce_19

action_219 (101) = happyShift action_235
action_219 _ = happyFail (happyExpListPerState 219)

action_220 _ = happyReduce_27

action_221 (40) = happyShift action_16
action_221 (43) = happyShift action_17
action_221 (45) = happyShift action_18
action_221 (49) = happyShift action_19
action_221 (55) = happyShift action_20
action_221 (58) = happyShift action_21
action_221 (60) = happyShift action_22
action_221 (61) = happyShift action_23
action_221 (62) = happyShift action_24
action_221 (69) = happyShift action_25
action_221 (74) = happyShift action_26
action_221 (75) = happyShift action_27
action_221 (76) = happyShift action_28
action_221 (77) = happyShift action_29
action_221 (78) = happyShift action_30
action_221 (95) = happyShift action_31
action_221 (104) = happyShift action_32
action_221 (7) = happyGoto action_234
action_221 (8) = happyGoto action_8
action_221 (9) = happyGoto action_9
action_221 (10) = happyGoto action_10
action_221 (11) = happyGoto action_11
action_221 (12) = happyGoto action_12
action_221 (13) = happyGoto action_13
action_221 (14) = happyGoto action_14
action_221 (15) = happyGoto action_15
action_221 _ = happyFail (happyExpListPerState 221)

action_222 (40) = happyShift action_16
action_222 (43) = happyShift action_17
action_222 (45) = happyShift action_18
action_222 (49) = happyShift action_19
action_222 (55) = happyShift action_20
action_222 (58) = happyShift action_21
action_222 (60) = happyShift action_22
action_222 (61) = happyShift action_23
action_222 (62) = happyShift action_24
action_222 (69) = happyShift action_25
action_222 (74) = happyShift action_26
action_222 (75) = happyShift action_27
action_222 (76) = happyShift action_28
action_222 (77) = happyShift action_29
action_222 (78) = happyShift action_30
action_222 (95) = happyShift action_31
action_222 (104) = happyShift action_32
action_222 (7) = happyGoto action_233
action_222 (8) = happyGoto action_8
action_222 (9) = happyGoto action_9
action_222 (10) = happyGoto action_10
action_222 (11) = happyGoto action_11
action_222 (12) = happyGoto action_12
action_222 (13) = happyGoto action_13
action_222 (14) = happyGoto action_14
action_222 (15) = happyGoto action_15
action_222 _ = happyFail (happyExpListPerState 222)

action_223 (40) = happyShift action_16
action_223 (43) = happyShift action_17
action_223 (45) = happyShift action_18
action_223 (49) = happyShift action_19
action_223 (55) = happyShift action_20
action_223 (58) = happyShift action_21
action_223 (60) = happyShift action_22
action_223 (61) = happyShift action_23
action_223 (62) = happyShift action_24
action_223 (69) = happyShift action_25
action_223 (74) = happyShift action_26
action_223 (75) = happyShift action_27
action_223 (76) = happyShift action_28
action_223 (77) = happyShift action_29
action_223 (78) = happyShift action_30
action_223 (95) = happyShift action_31
action_223 (104) = happyShift action_32
action_223 (7) = happyGoto action_232
action_223 (8) = happyGoto action_8
action_223 (9) = happyGoto action_9
action_223 (10) = happyGoto action_10
action_223 (11) = happyGoto action_11
action_223 (12) = happyGoto action_12
action_223 (13) = happyGoto action_13
action_223 (14) = happyGoto action_14
action_223 (15) = happyGoto action_15
action_223 _ = happyFail (happyExpListPerState 223)

action_224 _ = happyReduce_95

action_225 (53) = happyFail []
action_225 _ = happyReduce_83

action_226 (52) = happyFail []
action_226 (53) = happyShift action_200
action_226 _ = happyReduce_82

action_227 (89) = happyShift action_167
action_227 (90) = happyShift action_168
action_227 (91) = happyShift action_169
action_227 (92) = happyShift action_170
action_227 (93) = happyShift action_171
action_227 (94) = happyShift action_172
action_227 (19) = happyGoto action_231
action_227 _ = happyFail (happyExpListPerState 227)

action_228 _ = happyReduce_85

action_229 (40) = happyShift action_16
action_229 (43) = happyShift action_17
action_229 (45) = happyShift action_18
action_229 (49) = happyShift action_19
action_229 (55) = happyShift action_20
action_229 (58) = happyShift action_21
action_229 (60) = happyShift action_22
action_229 (61) = happyShift action_23
action_229 (62) = happyShift action_24
action_229 (69) = happyShift action_25
action_229 (74) = happyShift action_26
action_229 (75) = happyShift action_27
action_229 (76) = happyShift action_28
action_229 (77) = happyShift action_29
action_229 (78) = happyShift action_30
action_229 (95) = happyShift action_31
action_229 (104) = happyShift action_32
action_229 (7) = happyGoto action_230
action_229 (8) = happyGoto action_8
action_229 (9) = happyGoto action_9
action_229 (10) = happyGoto action_10
action_229 (11) = happyGoto action_11
action_229 (12) = happyGoto action_12
action_229 (13) = happyGoto action_13
action_229 (14) = happyGoto action_14
action_229 (15) = happyGoto action_15
action_229 _ = happyFail (happyExpListPerState 229)

action_230 _ = happyReduce_32

action_231 (65) = happyShift action_236
action_231 _ = happyFail (happyExpListPerState 231)

action_232 _ = happyReduce_33

action_233 _ = happyReduce_34

action_234 _ = happyReduce_35

action_235 _ = happyReduce_48

action_236 (81) = happyShift action_237
action_236 _ = happyFail (happyExpListPerState 236)

action_237 (82) = happyShift action_74
action_237 (20) = happyGoto action_238
action_237 _ = happyFail (happyExpListPerState 237)

action_238 _ = happyReduce_49

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

happyReduce_37 = happyReduce 4 15 happyReduction_37
happyReduction_37 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 6 15 happyReduction_38
happyReduction_38 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	(HappyAbsSyn26  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (OrderByCol happy_var_3 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_3  15 happyReduction_39
happyReduction_39 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  15 happyReduction_40
happyReduction_40 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  15 happyReduction_41
happyReduction_41 (HappyAbsSyn7  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (Last happy_var_2 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  15 happyReduction_42
happyReduction_42 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (Unique happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  15 happyReduction_43
happyReduction_43 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (Transpose happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  16 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn16
		 (Asc
	)

happyReduce_45 = happySpecReduce_1  16 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn16
		 (Desc
	)

happyReduce_46 = happySpecReduce_3  17 happyReduction_46
happyReduction_46 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn17
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  17 happyReduction_47
happyReduction_47 (HappyAbsSyn20  happy_var_3)
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn17
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happyReduce 5 17 happyReduction_48
happyReduction_48 ((HappyTerminal (TokenInt  _ happy_var_5)) `HappyStk`
	(HappyAbsSyn19  happy_var_4) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_3)) `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (IndexVal happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_49 = happyReduce 7 18 happyReduction_49
happyReduction_49 ((HappyAbsSyn20  happy_var_7) `HappyStk`
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

happyReduce_50 = happySpecReduce_1  19 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn19
		 (Eq
	)

happyReduce_51 = happySpecReduce_1  19 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn19
		 (LessThan
	)

happyReduce_52 = happySpecReduce_1  19 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn19
		 (GreaterThan
	)

happyReduce_53 = happySpecReduce_1  19 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn19
		 (LessThanEq
	)

happyReduce_54 = happySpecReduce_1  19 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn19
		 (GreaterThanEq
	)

happyReduce_55 = happySpecReduce_1  19 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn19
		 (NotEq
	)

happyReduce_56 = happySpecReduce_2  20 happyReduction_56
happyReduction_56 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_56 _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  21 happyReduction_57
happyReduction_57 (HappyAbsSyn20  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn21
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  22 happyReduction_58
happyReduction_58 (HappyTerminal (TokenStr _ happy_var_3))
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn22
		 (Assignment happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  23 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn23
		 (Add
	)

happyReduce_60 = happySpecReduce_1  23 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn23
		 (Subtract
	)

happyReduce_61 = happySpecReduce_1  23 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn23
		 (Divide
	)

happyReduce_62 = happySpecReduce_1  23 happyReduction_62
happyReduction_62 _
	 =  HappyAbsSyn23
		 (Multiply
	)

happyReduce_63 = happySpecReduce_1  23 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn23
		 (Modulo
	)

happyReduce_64 = happySpecReduce_2  24 happyReduction_64
happyReduction_64 _
	_
	 =  HappyAbsSyn24
		 ([]
	)

happyReduce_65 = happySpecReduce_3  24 happyReduction_65
happyReduction_65 _
	(HappyAbsSyn32  happy_var_2)
	_
	 =  HappyAbsSyn24
		 (happy_var_2
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_2  25 happyReduction_66
happyReduction_66 _
	_
	 =  HappyAbsSyn25
		 ([]
	)

happyReduce_67 = happySpecReduce_3  25 happyReduction_67
happyReduction_67 _
	(HappyAbsSyn33  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (happy_var_2
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_2  26 happyReduction_68
happyReduction_68 _
	_
	 =  HappyAbsSyn26
		 ([]
	)

happyReduce_69 = happySpecReduce_3  26 happyReduction_69
happyReduction_69 _
	(HappyAbsSyn34  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (happy_var_2
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_2  27 happyReduction_70
happyReduction_70 _
	_
	 =  HappyAbsSyn27
		 ([]
	)

happyReduce_71 = happySpecReduce_3  27 happyReduction_71
happyReduction_71 _
	(HappyAbsSyn35  happy_var_2)
	_
	 =  HappyAbsSyn27
		 (happy_var_2
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_2  28 happyReduction_72
happyReduction_72 _
	_
	 =  HappyAbsSyn28
		 ([]
	)

happyReduce_73 = happySpecReduce_3  28 happyReduction_73
happyReduction_73 _
	(HappyAbsSyn36  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (happy_var_2
	)
happyReduction_73 _ _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_2  29 happyReduction_74
happyReduction_74 _
	_
	 =  HappyAbsSyn29
		 ([]
	)

happyReduce_75 = happySpecReduce_3  29 happyReduction_75
happyReduction_75 _
	(HappyAbsSyn37  happy_var_2)
	_
	 =  HappyAbsSyn29
		 (happy_var_2
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_2  30 happyReduction_76
happyReduction_76 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (Not happy_var_2
	)
happyReduction_76 _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  30 happyReduction_77
happyReduction_77 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (And happy_var_1 happy_var_3
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_3  30 happyReduction_78
happyReduction_78 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Or happy_var_1 happy_var_3
	)
happyReduction_78 _ _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  30 happyReduction_79
happyReduction_79 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn30
		 (Comparison happy_var_1
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  30 happyReduction_80
happyReduction_80 _
	(HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (happy_var_2
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_2  31 happyReduction_81
happyReduction_81 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (Not happy_var_2
	)
happyReduction_81 _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  31 happyReduction_82
happyReduction_82 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (And happy_var_1 happy_var_3
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_3  31 happyReduction_83
happyReduction_83 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (Or happy_var_1 happy_var_3
	)
happyReduction_83 _ _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_1  31 happyReduction_84
happyReduction_84 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn31
		 (Comparison happy_var_1
	)
happyReduction_84 _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  31 happyReduction_85
happyReduction_85 _
	(HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (happy_var_2
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_1  32 happyReduction_86
happyReduction_86 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1]
	)
happyReduction_86 _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  32 happyReduction_87
happyReduction_87 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_1  33 happyReduction_88
happyReduction_88 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 ([happy_var_1]
	)
happyReduction_88 _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_3  33 happyReduction_89
happyReduction_89 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_89 _ _ _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_1  34 happyReduction_90
happyReduction_90 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1]
	)
happyReduction_90 _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  34 happyReduction_91
happyReduction_91 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_1  35 happyReduction_92
happyReduction_92 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1]
	)
happyReduction_92 _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_3  35 happyReduction_93
happyReduction_93 (HappyAbsSyn35  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_93 _ _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_1  36 happyReduction_94
happyReduction_94 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1]
	)
happyReduction_94 _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_3  36 happyReduction_95
happyReduction_95 (HappyAbsSyn36  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_95 _ _ _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_1  37 happyReduction_96
happyReduction_96 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn37
		 ([happy_var_1]
	)
happyReduction_96 _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_3  37 happyReduction_97
happyReduction_97 (HappyAbsSyn37  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn37
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_97 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 105 105 notHappyAtAll (HappyState action) sts stk []

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
	TokenOn _ -> cont 68;
	TokenOrder _ -> cont 69;
	TokenIn _ -> cont 70;
	TokenBy _ -> cont 71;
	TokenAsc _ -> cont 72;
	TokenDesc _ -> cont 73;
	TokenLimit _ -> cont 74;
	TokenOffset _ -> cont 75;
	TokenLast _ -> cont 76;
	TokenUnique _ -> cont 77;
	TokenTranspose _ -> cont 78;
	TokenSep _ -> cont 79;
	TokenComma _ -> cont 80;
	TokenDot _ -> cont 81;
	TokenAt _ -> cont 82;
	TokenAssign _ -> cont 83;
	TokenAdd _ -> cont 84;
	TokenSubtract _ -> cont 85;
	TokenAst _ -> cont 86;
	TokenDivide _ -> cont 87;
	TokenModulo _ -> cont 88;
	TokenEq _ -> cont 89;
	TokenLessThan _ -> cont 90;
	TokenGreaterThan _ -> cont 91;
	TokenLessThanEq _ -> cont 92;
	TokenGreaterThanEq _ -> cont 93;
	TokenNotEq _ -> cont 94;
	TokenLParen _ -> cont 95;
	TokenRParen _ -> cont 96;
	TokenLParenSquare _ -> cont 97;
	TokenRParenSquare _ -> cont 98;
	TokenLParenCurly _ -> cont 99;
	TokenRParenCurly _ -> cont 100;
	TokenInt  _ happy_dollar_dollar -> cont 101;
	TokenFilename _ happy_dollar_dollar -> cont 102;
	TokenStr _ happy_dollar_dollar -> cont 103;
	TokenVar _ happy_dollar_dollar -> cont 104;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 105 tk tks = happyError' (tks, explist)
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

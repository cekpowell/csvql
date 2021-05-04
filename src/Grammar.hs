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
happyExpList = Happy_Data_Array.listArray (0,701) ([0,0,800,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,4896,33236,248,1024,2,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,2176,0,0,0,192,0,0,0,0,0,26176,936,497,2050,4,0,0,0,0,64,0,0,0,41113,50190,7,4128,0,0,4896,33236,248,1024,2,0,25600,14978,7952,32768,64,0,32768,20556,58111,3,2064,0,0,0,32768,0,0,0,0,0,0,0,0,4,0,0,0,0,0,128,0,0,0,0,0,4096,0,0,39168,3744,1988,8192,16,0,8192,54291,63617,0,516,0,0,33380,4154,31,16512,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,12,0,0,0,0,0,32,0,0,16384,0,0,0,0,0,256,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2448,16618,124,512,1,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,39168,3744,1988,8192,16,0,8192,54291,63617,0,516,0,0,33380,4154,31,16512,0,0,0,0,24,4,0,0,36864,59913,31808,0,258,0,0,0,1024,0,0,0,0,0,32768,0,0,0,0,0,0,16,0,0,0,0,0,512,0,0,0,0,4896,33236,248,1024,2,0,25600,14978,7952,32768,64,0,32768,20556,57863,3,2064,0,0,2448,16618,124,512,1,0,12800,7491,3976,16384,32,0,0,0,0,1024,4,0,0,0,0,0,0,0,0,39168,3744,1988,8192,16,0,0,0,0,256,0,0,0,0,0,16384,64,0,0,0,0,0,4,0,0,0,0,0,0,1,0,0,17202,34845,15,8256,0,0,26176,936,497,2048,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,12800,7489,3976,16384,32,0,0,0,0,0,128,0,0,1224,8309,62,33024,0,0,0,0,0,16,8,0,0,0,0,1024,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,36864,59913,31808,0,258,0,0,9216,0,8192,32,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,8192,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,39168,3744,1988,8192,16,0,0,0,0,256,0,0,0,0,0,8192,0,0,0,0,0,0,4,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,9792,936,497,2048,4,0,0,0,384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,24,0,0,0,0,0,19584,1872,994,4096,8,0,0,0,0,0,0,0,0,16690,34845,15,8256,0,0,32768,2048,0,4,0,0,51200,29956,15904,0,129,0,0,41113,50190,7,4128,0,0,4896,33236,248,1024,2,0,0,0,0,0,0,0,32768,20556,57863,3,2064,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,61440,3,0,0,0,384,0,1024,0,0,0,0,0,16384,0,0,0,0,9,0,2048,0,0,0,0,0,63488,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1224,8309,62,33024,0,0,39168,3744,1988,8192,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1152,0,0,4,0,0,36864,0,0,128,0,0,0,18,0,4096,0,0,0,0,0,0,258,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,20556,57863,3,2064,0,0,2448,16618,124,512,1,0,12800,7489,3976,16384,32,0,0,0,0,0,0,0,0,24576,0,0,1,0,0,0,0,0,16,0,0,0,64,4,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,36864,59913,31808,0,258,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,16,0,0,0,0,8192,512,0,0,0,0,0,16388,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64512,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16128,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,4096,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Configuration","Exp","TableType","FunctionTable","SelectFunction","InsertFunction","DeleteFunction","UpdateFunction","SetFunction","JoinFunction","FormatFunction","ColumnComparison","ColumnRef","TableComparison","TableColumnRef","ComparisonOperator","Operator","Assignment","Direction","CurlyList__Configuration__","List__Assignment__","List__ColumnRef__","List__Predicate__ColumnComparison____","List__Predicate__TableComparison____","List__Str__","Predicate__ColumnComparison__","Predicate__TableComparison__","CurlyListCont__Configuration__","ListCont__Assignment__","ListCont__ColumnRef__","ListCont__Predicate__ColumnComparison____","ListCont__Predicate__TableComparison____","ListCont__Str__","Setup","PrettyPrint","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Index","Update","Set","Union","All","Intersection","Difference","Join","Inner","Left","Right","Outer","Full","On","Order","By","Asc","Desc","Limit","Offset","Last","Unique","Transpose","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'.'","'*'","'+'","'-'","\"/\"","'%'","\"@\"","'('","')'","'{'","'}'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 101
        bit_end = (st Prelude.+ 1) Prelude.* 101
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..100]
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

action_2 (95) = happyShift action_35
action_2 (24) = happyGoto action_34
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (101) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (100) = happyShift action_33
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (40) = happyShift action_16
action_6 (43) = happyShift action_17
action_6 (44) = happyShift action_18
action_6 (47) = happyShift action_19
action_6 (53) = happyShift action_20
action_6 (55) = happyShift action_21
action_6 (57) = happyShift action_22
action_6 (58) = happyShift action_23
action_6 (59) = happyShift action_24
action_6 (66) = happyShift action_25
action_6 (70) = happyShift action_26
action_6 (71) = happyShift action_27
action_6 (72) = happyShift action_28
action_6 (73) = happyShift action_29
action_6 (74) = happyShift action_30
action_6 (93) = happyShift action_31
action_6 (100) = happyShift action_32
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

action_7 (82) = happyShift action_69
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_8

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 _ = happyReduce_13

action_13 _ = happyReduce_14

action_14 _ = happyReduce_15

action_15 _ = happyReduce_16

action_16 (98) = happyShift action_68
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (83) = happyShift action_63
action_17 (87) = happyShift action_67
action_17 (26) = happyGoto action_66
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (45) = happyShift action_64
action_18 (46) = happyShift action_65
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (40) = happyShift action_16
action_19 (43) = happyShift action_17
action_19 (44) = happyShift action_18
action_19 (47) = happyShift action_19
action_19 (48) = happyShift action_62
action_19 (53) = happyShift action_20
action_19 (55) = happyShift action_21
action_19 (57) = happyShift action_22
action_19 (58) = happyShift action_23
action_19 (59) = happyShift action_24
action_19 (66) = happyShift action_25
action_19 (70) = happyShift action_26
action_19 (71) = happyShift action_27
action_19 (72) = happyShift action_28
action_19 (73) = happyShift action_29
action_19 (74) = happyShift action_30
action_19 (83) = happyShift action_63
action_19 (93) = happyShift action_31
action_19 (100) = happyShift action_32
action_19 (7) = happyGoto action_60
action_19 (8) = happyGoto action_8
action_19 (9) = happyGoto action_9
action_19 (10) = happyGoto action_10
action_19 (11) = happyGoto action_11
action_19 (12) = happyGoto action_12
action_19 (13) = happyGoto action_13
action_19 (14) = happyGoto action_14
action_19 (15) = happyGoto action_15
action_19 (26) = happyGoto action_61
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (83) = happyShift action_59
action_20 (25) = happyGoto action_58
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (40) = happyShift action_16
action_21 (43) = happyShift action_17
action_21 (44) = happyShift action_18
action_21 (47) = happyShift action_19
action_21 (53) = happyShift action_20
action_21 (55) = happyShift action_21
action_21 (57) = happyShift action_22
action_21 (58) = happyShift action_23
action_21 (59) = happyShift action_24
action_21 (66) = happyShift action_25
action_21 (70) = happyShift action_26
action_21 (71) = happyShift action_27
action_21 (72) = happyShift action_28
action_21 (73) = happyShift action_29
action_21 (74) = happyShift action_30
action_21 (93) = happyShift action_31
action_21 (100) = happyShift action_32
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
action_22 (44) = happyShift action_18
action_22 (47) = happyShift action_19
action_22 (53) = happyShift action_20
action_22 (55) = happyShift action_21
action_22 (57) = happyShift action_22
action_22 (58) = happyShift action_23
action_22 (59) = happyShift action_24
action_22 (66) = happyShift action_25
action_22 (70) = happyShift action_26
action_22 (71) = happyShift action_27
action_22 (72) = happyShift action_28
action_22 (73) = happyShift action_29
action_22 (74) = happyShift action_30
action_22 (93) = happyShift action_31
action_22 (100) = happyShift action_32
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
action_23 (44) = happyShift action_18
action_23 (47) = happyShift action_19
action_23 (53) = happyShift action_20
action_23 (55) = happyShift action_21
action_23 (57) = happyShift action_22
action_23 (58) = happyShift action_23
action_23 (59) = happyShift action_24
action_23 (66) = happyShift action_25
action_23 (70) = happyShift action_26
action_23 (71) = happyShift action_27
action_23 (72) = happyShift action_28
action_23 (73) = happyShift action_29
action_23 (74) = happyShift action_30
action_23 (93) = happyShift action_31
action_23 (100) = happyShift action_32
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

action_24 (40) = happyShift action_16
action_24 (43) = happyShift action_17
action_24 (44) = happyShift action_18
action_24 (47) = happyShift action_19
action_24 (53) = happyShift action_20
action_24 (55) = happyShift action_21
action_24 (57) = happyShift action_22
action_24 (58) = happyShift action_23
action_24 (59) = happyShift action_24
action_24 (60) = happyShift action_50
action_24 (61) = happyShift action_51
action_24 (62) = happyShift action_52
action_24 (63) = happyShift action_53
action_24 (64) = happyShift action_54
action_24 (66) = happyShift action_25
action_24 (70) = happyShift action_26
action_24 (71) = happyShift action_27
action_24 (72) = happyShift action_28
action_24 (73) = happyShift action_29
action_24 (74) = happyShift action_30
action_24 (93) = happyShift action_31
action_24 (100) = happyShift action_32
action_24 (7) = happyGoto action_49
action_24 (8) = happyGoto action_8
action_24 (9) = happyGoto action_9
action_24 (10) = happyGoto action_10
action_24 (11) = happyGoto action_11
action_24 (12) = happyGoto action_12
action_24 (13) = happyGoto action_13
action_24 (14) = happyGoto action_14
action_24 (15) = happyGoto action_15
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (67) = happyShift action_48
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (97) = happyShift action_47
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (97) = happyShift action_46
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (97) = happyShift action_45
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (40) = happyShift action_16
action_29 (43) = happyShift action_17
action_29 (44) = happyShift action_18
action_29 (47) = happyShift action_19
action_29 (53) = happyShift action_20
action_29 (55) = happyShift action_21
action_29 (57) = happyShift action_22
action_29 (58) = happyShift action_23
action_29 (59) = happyShift action_24
action_29 (66) = happyShift action_25
action_29 (70) = happyShift action_26
action_29 (71) = happyShift action_27
action_29 (72) = happyShift action_28
action_29 (73) = happyShift action_29
action_29 (74) = happyShift action_30
action_29 (93) = happyShift action_31
action_29 (100) = happyShift action_32
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
action_30 (44) = happyShift action_18
action_30 (47) = happyShift action_19
action_30 (53) = happyShift action_20
action_30 (55) = happyShift action_21
action_30 (57) = happyShift action_22
action_30 (58) = happyShift action_23
action_30 (59) = happyShift action_24
action_30 (66) = happyShift action_25
action_30 (70) = happyShift action_26
action_30 (71) = happyShift action_27
action_30 (72) = happyShift action_28
action_30 (73) = happyShift action_29
action_30 (74) = happyShift action_30
action_30 (93) = happyShift action_31
action_30 (100) = happyShift action_32
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
action_31 (44) = happyShift action_18
action_31 (47) = happyShift action_19
action_31 (53) = happyShift action_20
action_31 (55) = happyShift action_21
action_31 (57) = happyShift action_22
action_31 (58) = happyShift action_23
action_31 (59) = happyShift action_24
action_31 (66) = happyShift action_25
action_31 (70) = happyShift action_26
action_31 (71) = happyShift action_27
action_31 (72) = happyShift action_28
action_31 (73) = happyShift action_29
action_31 (74) = happyShift action_30
action_31 (93) = happyShift action_31
action_31 (100) = happyShift action_32
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

action_33 (75) = happyShift action_41
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (41) = happyShift action_5
action_34 (42) = happyShift action_6
action_34 (6) = happyGoto action_40
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (39) = happyShift action_38
action_35 (96) = happyShift action_39
action_35 (5) = happyGoto action_36
action_35 (32) = happyGoto action_37
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (85) = happyShift action_109
action_36 _ = happyReduce_84

action_37 (96) = happyShift action_108
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_3

action_39 _ = happyReduce_64

action_40 _ = happyReduce_1

action_41 (40) = happyShift action_16
action_41 (43) = happyShift action_17
action_41 (44) = happyShift action_18
action_41 (47) = happyShift action_19
action_41 (53) = happyShift action_20
action_41 (55) = happyShift action_21
action_41 (57) = happyShift action_22
action_41 (58) = happyShift action_23
action_41 (59) = happyShift action_24
action_41 (66) = happyShift action_25
action_41 (70) = happyShift action_26
action_41 (71) = happyShift action_27
action_41 (72) = happyShift action_28
action_41 (73) = happyShift action_29
action_41 (74) = happyShift action_30
action_41 (93) = happyShift action_31
action_41 (100) = happyShift action_32
action_41 (7) = happyGoto action_107
action_41 (8) = happyGoto action_8
action_41 (9) = happyGoto action_9
action_41 (10) = happyGoto action_10
action_41 (11) = happyGoto action_11
action_41 (12) = happyGoto action_12
action_41 (13) = happyGoto action_13
action_41 (14) = happyGoto action_14
action_41 (15) = happyGoto action_15
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (94) = happyShift action_106
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_43

action_44 _ = happyReduce_42

action_45 (40) = happyShift action_16
action_45 (43) = happyShift action_17
action_45 (44) = happyShift action_18
action_45 (47) = happyShift action_19
action_45 (53) = happyShift action_20
action_45 (55) = happyShift action_21
action_45 (57) = happyShift action_22
action_45 (58) = happyShift action_23
action_45 (59) = happyShift action_24
action_45 (66) = happyShift action_25
action_45 (70) = happyShift action_26
action_45 (71) = happyShift action_27
action_45 (72) = happyShift action_28
action_45 (73) = happyShift action_29
action_45 (74) = happyShift action_30
action_45 (93) = happyShift action_31
action_45 (100) = happyShift action_32
action_45 (7) = happyGoto action_105
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
action_46 (44) = happyShift action_18
action_46 (47) = happyShift action_19
action_46 (53) = happyShift action_20
action_46 (55) = happyShift action_21
action_46 (57) = happyShift action_22
action_46 (58) = happyShift action_23
action_46 (59) = happyShift action_24
action_46 (66) = happyShift action_25
action_46 (70) = happyShift action_26
action_46 (71) = happyShift action_27
action_46 (72) = happyShift action_28
action_46 (73) = happyShift action_29
action_46 (74) = happyShift action_30
action_46 (93) = happyShift action_31
action_46 (100) = happyShift action_32
action_46 (7) = happyGoto action_104
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
action_47 (44) = happyShift action_18
action_47 (47) = happyShift action_19
action_47 (53) = happyShift action_20
action_47 (55) = happyShift action_21
action_47 (57) = happyShift action_22
action_47 (58) = happyShift action_23
action_47 (59) = happyShift action_24
action_47 (66) = happyShift action_25
action_47 (70) = happyShift action_26
action_47 (71) = happyShift action_27
action_47 (72) = happyShift action_28
action_47 (73) = happyShift action_29
action_47 (74) = happyShift action_30
action_47 (93) = happyShift action_31
action_47 (100) = happyShift action_32
action_47 (7) = happyGoto action_103
action_47 (8) = happyGoto action_8
action_47 (9) = happyGoto action_9
action_47 (10) = happyGoto action_10
action_47 (11) = happyGoto action_11
action_47 (12) = happyGoto action_12
action_47 (13) = happyGoto action_13
action_47 (14) = happyGoto action_14
action_47 (15) = happyGoto action_15
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (68) = happyShift action_101
action_48 (69) = happyShift action_102
action_48 (83) = happyShift action_63
action_48 (23) = happyGoto action_99
action_48 (26) = happyGoto action_100
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (40) = happyShift action_16
action_49 (43) = happyShift action_17
action_49 (44) = happyShift action_18
action_49 (47) = happyShift action_19
action_49 (53) = happyShift action_20
action_49 (55) = happyShift action_21
action_49 (57) = happyShift action_22
action_49 (58) = happyShift action_23
action_49 (59) = happyShift action_24
action_49 (66) = happyShift action_25
action_49 (70) = happyShift action_26
action_49 (71) = happyShift action_27
action_49 (72) = happyShift action_28
action_49 (73) = happyShift action_29
action_49 (74) = happyShift action_30
action_49 (93) = happyShift action_31
action_49 (100) = happyShift action_32
action_49 (7) = happyGoto action_98
action_49 (8) = happyGoto action_8
action_49 (9) = happyGoto action_9
action_49 (10) = happyGoto action_10
action_49 (11) = happyGoto action_11
action_49 (12) = happyGoto action_12
action_49 (13) = happyGoto action_13
action_49 (14) = happyGoto action_14
action_49 (15) = happyGoto action_15
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (65) = happyShift action_97
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (65) = happyShift action_96
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (65) = happyShift action_95
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (65) = happyShift action_94
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (40) = happyShift action_16
action_54 (43) = happyShift action_17
action_54 (44) = happyShift action_18
action_54 (47) = happyShift action_19
action_54 (53) = happyShift action_20
action_54 (55) = happyShift action_21
action_54 (57) = happyShift action_22
action_54 (58) = happyShift action_23
action_54 (59) = happyShift action_24
action_54 (66) = happyShift action_25
action_54 (70) = happyShift action_26
action_54 (71) = happyShift action_27
action_54 (72) = happyShift action_28
action_54 (73) = happyShift action_29
action_54 (74) = happyShift action_30
action_54 (93) = happyShift action_31
action_54 (100) = happyShift action_32
action_54 (7) = happyGoto action_93
action_54 (8) = happyGoto action_8
action_54 (9) = happyGoto action_9
action_54 (10) = happyGoto action_10
action_54 (11) = happyGoto action_11
action_54 (12) = happyGoto action_12
action_54 (13) = happyGoto action_13
action_54 (14) = happyGoto action_14
action_54 (15) = happyGoto action_15
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (40) = happyShift action_16
action_55 (43) = happyShift action_17
action_55 (44) = happyShift action_18
action_55 (47) = happyShift action_19
action_55 (53) = happyShift action_20
action_55 (55) = happyShift action_21
action_55 (57) = happyShift action_22
action_55 (58) = happyShift action_23
action_55 (59) = happyShift action_24
action_55 (66) = happyShift action_25
action_55 (70) = happyShift action_26
action_55 (71) = happyShift action_27
action_55 (72) = happyShift action_28
action_55 (73) = happyShift action_29
action_55 (74) = happyShift action_30
action_55 (93) = happyShift action_31
action_55 (100) = happyShift action_32
action_55 (7) = happyGoto action_92
action_55 (8) = happyGoto action_8
action_55 (9) = happyGoto action_9
action_55 (10) = happyGoto action_10
action_55 (11) = happyGoto action_11
action_55 (12) = happyGoto action_12
action_55 (13) = happyGoto action_13
action_55 (14) = happyGoto action_14
action_55 (15) = happyGoto action_15
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (40) = happyShift action_16
action_56 (43) = happyShift action_17
action_56 (44) = happyShift action_18
action_56 (47) = happyShift action_19
action_56 (53) = happyShift action_20
action_56 (55) = happyShift action_21
action_56 (57) = happyShift action_22
action_56 (58) = happyShift action_23
action_56 (59) = happyShift action_24
action_56 (66) = happyShift action_25
action_56 (70) = happyShift action_26
action_56 (71) = happyShift action_27
action_56 (72) = happyShift action_28
action_56 (73) = happyShift action_29
action_56 (74) = happyShift action_30
action_56 (93) = happyShift action_31
action_56 (100) = happyShift action_32
action_56 (7) = happyGoto action_91
action_56 (8) = happyGoto action_8
action_56 (9) = happyGoto action_9
action_56 (10) = happyGoto action_10
action_56 (11) = happyGoto action_11
action_56 (12) = happyGoto action_12
action_56 (13) = happyGoto action_13
action_56 (14) = happyGoto action_14
action_56 (15) = happyGoto action_15
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (40) = happyShift action_16
action_57 (43) = happyShift action_17
action_57 (44) = happyShift action_18
action_57 (47) = happyShift action_19
action_57 (53) = happyShift action_20
action_57 (55) = happyShift action_21
action_57 (57) = happyShift action_22
action_57 (58) = happyShift action_23
action_57 (59) = happyShift action_24
action_57 (66) = happyShift action_25
action_57 (70) = happyShift action_26
action_57 (71) = happyShift action_27
action_57 (72) = happyShift action_28
action_57 (73) = happyShift action_29
action_57 (74) = happyShift action_30
action_57 (93) = happyShift action_31
action_57 (100) = happyShift action_32
action_57 (7) = happyGoto action_90
action_57 (8) = happyGoto action_8
action_57 (9) = happyGoto action_9
action_57 (10) = happyGoto action_10
action_57 (11) = happyGoto action_11
action_57 (12) = happyGoto action_12
action_57 (13) = happyGoto action_13
action_57 (14) = happyGoto action_14
action_57 (15) = happyGoto action_15
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (40) = happyShift action_16
action_58 (43) = happyShift action_17
action_58 (44) = happyShift action_18
action_58 (47) = happyShift action_19
action_58 (48) = happyShift action_89
action_58 (53) = happyShift action_20
action_58 (55) = happyShift action_21
action_58 (57) = happyShift action_22
action_58 (58) = happyShift action_23
action_58 (59) = happyShift action_24
action_58 (66) = happyShift action_25
action_58 (70) = happyShift action_26
action_58 (71) = happyShift action_27
action_58 (72) = happyShift action_28
action_58 (73) = happyShift action_29
action_58 (74) = happyShift action_30
action_58 (93) = happyShift action_31
action_58 (100) = happyShift action_32
action_58 (7) = happyGoto action_88
action_58 (8) = happyGoto action_8
action_58 (9) = happyGoto action_9
action_58 (10) = happyGoto action_10
action_58 (11) = happyGoto action_11
action_58 (12) = happyGoto action_12
action_58 (13) = happyGoto action_13
action_58 (14) = happyGoto action_14
action_58 (15) = happyGoto action_15
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (84) = happyShift action_87
action_59 (92) = happyShift action_75
action_59 (17) = happyGoto action_84
action_59 (22) = happyGoto action_85
action_59 (33) = happyGoto action_86
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_23

action_61 (40) = happyShift action_16
action_61 (43) = happyShift action_17
action_61 (44) = happyShift action_18
action_61 (47) = happyShift action_19
action_61 (53) = happyShift action_20
action_61 (55) = happyShift action_21
action_61 (57) = happyShift action_22
action_61 (58) = happyShift action_23
action_61 (59) = happyShift action_24
action_61 (66) = happyShift action_25
action_61 (70) = happyShift action_26
action_61 (71) = happyShift action_27
action_61 (72) = happyShift action_28
action_61 (73) = happyShift action_29
action_61 (74) = happyShift action_30
action_61 (93) = happyShift action_31
action_61 (100) = happyShift action_32
action_61 (7) = happyGoto action_83
action_61 (8) = happyGoto action_8
action_61 (9) = happyGoto action_9
action_61 (10) = happyGoto action_10
action_61 (11) = happyGoto action_11
action_61 (12) = happyGoto action_12
action_61 (13) = happyGoto action_13
action_61 (14) = happyGoto action_14
action_61 (15) = happyGoto action_15
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (83) = happyShift action_82
action_62 (27) = happyGoto action_81
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (84) = happyShift action_80
action_63 (92) = happyShift action_75
action_63 (17) = happyGoto action_78
action_63 (34) = happyGoto action_79
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (83) = happyShift action_77
action_64 (29) = happyGoto action_76
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (92) = happyShift action_75
action_65 (17) = happyGoto action_74
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (40) = happyShift action_16
action_66 (43) = happyShift action_17
action_66 (44) = happyShift action_18
action_66 (47) = happyShift action_19
action_66 (48) = happyShift action_73
action_66 (53) = happyShift action_20
action_66 (55) = happyShift action_21
action_66 (57) = happyShift action_22
action_66 (58) = happyShift action_23
action_66 (59) = happyShift action_24
action_66 (66) = happyShift action_25
action_66 (70) = happyShift action_26
action_66 (71) = happyShift action_27
action_66 (72) = happyShift action_28
action_66 (73) = happyShift action_29
action_66 (74) = happyShift action_30
action_66 (93) = happyShift action_31
action_66 (100) = happyShift action_32
action_66 (7) = happyGoto action_72
action_66 (8) = happyGoto action_8
action_66 (9) = happyGoto action_9
action_66 (10) = happyGoto action_10
action_66 (11) = happyGoto action_11
action_66 (12) = happyGoto action_12
action_66 (13) = happyGoto action_13
action_66 (14) = happyGoto action_14
action_66 (15) = happyGoto action_15
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (40) = happyShift action_16
action_67 (43) = happyShift action_17
action_67 (44) = happyShift action_18
action_67 (47) = happyShift action_19
action_67 (48) = happyShift action_71
action_67 (53) = happyShift action_20
action_67 (55) = happyShift action_21
action_67 (57) = happyShift action_22
action_67 (58) = happyShift action_23
action_67 (59) = happyShift action_24
action_67 (66) = happyShift action_25
action_67 (70) = happyShift action_26
action_67 (71) = happyShift action_27
action_67 (72) = happyShift action_28
action_67 (73) = happyShift action_29
action_67 (74) = happyShift action_30
action_67 (93) = happyShift action_31
action_67 (100) = happyShift action_32
action_67 (7) = happyGoto action_70
action_67 (8) = happyGoto action_8
action_67 (9) = happyGoto action_9
action_67 (10) = happyGoto action_10
action_67 (11) = happyGoto action_11
action_67 (12) = happyGoto action_12
action_67 (13) = happyGoto action_13
action_67 (14) = happyGoto action_14
action_67 (15) = happyGoto action_15
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_6

action_69 _ = happyReduce_5

action_70 _ = happyReduce_17

action_71 (83) = happyShift action_82
action_71 (27) = happyGoto action_141
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_18

action_73 (83) = happyShift action_82
action_73 (27) = happyGoto action_140
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (40) = happyShift action_16
action_74 (43) = happyShift action_17
action_74 (44) = happyShift action_18
action_74 (47) = happyShift action_19
action_74 (53) = happyShift action_20
action_74 (55) = happyShift action_21
action_74 (57) = happyShift action_22
action_74 (58) = happyShift action_23
action_74 (59) = happyShift action_24
action_74 (66) = happyShift action_25
action_74 (70) = happyShift action_26
action_74 (71) = happyShift action_27
action_74 (72) = happyShift action_28
action_74 (73) = happyShift action_29
action_74 (74) = happyShift action_30
action_74 (93) = happyShift action_31
action_74 (100) = happyShift action_32
action_74 (7) = happyGoto action_139
action_74 (8) = happyGoto action_8
action_74 (9) = happyGoto action_9
action_74 (10) = happyGoto action_10
action_74 (11) = happyGoto action_11
action_74 (12) = happyGoto action_12
action_74 (13) = happyGoto action_13
action_74 (14) = happyGoto action_14
action_74 (15) = happyGoto action_15
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (97) = happyShift action_138
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (40) = happyShift action_16
action_76 (43) = happyShift action_17
action_76 (44) = happyShift action_18
action_76 (47) = happyShift action_19
action_76 (53) = happyShift action_20
action_76 (55) = happyShift action_21
action_76 (57) = happyShift action_22
action_76 (58) = happyShift action_23
action_76 (59) = happyShift action_24
action_76 (66) = happyShift action_25
action_76 (70) = happyShift action_26
action_76 (71) = happyShift action_27
action_76 (72) = happyShift action_28
action_76 (73) = happyShift action_29
action_76 (74) = happyShift action_30
action_76 (93) = happyShift action_31
action_76 (100) = happyShift action_32
action_76 (7) = happyGoto action_137
action_76 (8) = happyGoto action_8
action_76 (9) = happyGoto action_9
action_76 (10) = happyGoto action_10
action_76 (11) = happyGoto action_11
action_76 (12) = happyGoto action_12
action_76 (13) = happyGoto action_13
action_76 (14) = happyGoto action_14
action_76 (15) = happyGoto action_15
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (84) = happyShift action_135
action_77 (99) = happyShift action_136
action_77 (37) = happyGoto action_134
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (85) = happyShift action_133
action_78 _ = happyReduce_88

action_79 (84) = happyShift action_132
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_68

action_81 (40) = happyShift action_16
action_81 (43) = happyShift action_17
action_81 (44) = happyShift action_18
action_81 (47) = happyShift action_19
action_81 (53) = happyShift action_20
action_81 (55) = happyShift action_21
action_81 (57) = happyShift action_22
action_81 (58) = happyShift action_23
action_81 (59) = happyShift action_24
action_81 (66) = happyShift action_25
action_81 (70) = happyShift action_26
action_81 (71) = happyShift action_27
action_81 (72) = happyShift action_28
action_81 (73) = happyShift action_29
action_81 (74) = happyShift action_30
action_81 (93) = happyShift action_31
action_81 (100) = happyShift action_32
action_81 (7) = happyGoto action_131
action_81 (8) = happyGoto action_8
action_81 (9) = happyGoto action_9
action_81 (10) = happyGoto action_10
action_81 (11) = happyGoto action_11
action_81 (12) = happyGoto action_12
action_81 (13) = happyGoto action_13
action_81 (14) = happyGoto action_14
action_81 (15) = happyGoto action_15
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (49) = happyShift action_128
action_82 (52) = happyShift action_129
action_82 (84) = happyShift action_130
action_82 (92) = happyShift action_75
action_82 (16) = happyGoto action_124
action_82 (17) = happyGoto action_125
action_82 (30) = happyGoto action_126
action_82 (35) = happyGoto action_127
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_24

action_84 (75) = happyShift action_123
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (85) = happyShift action_122
action_85 _ = happyReduce_86

action_86 (84) = happyShift action_121
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_66

action_88 _ = happyReduce_26

action_89 (83) = happyShift action_82
action_89 (27) = happyGoto action_120
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_28

action_91 _ = happyReduce_29

action_92 _ = happyReduce_30

action_93 (40) = happyShift action_16
action_93 (43) = happyShift action_17
action_93 (44) = happyShift action_18
action_93 (47) = happyShift action_19
action_93 (53) = happyShift action_20
action_93 (55) = happyShift action_21
action_93 (57) = happyShift action_22
action_93 (58) = happyShift action_23
action_93 (59) = happyShift action_24
action_93 (66) = happyShift action_25
action_93 (70) = happyShift action_26
action_93 (71) = happyShift action_27
action_93 (72) = happyShift action_28
action_93 (73) = happyShift action_29
action_93 (74) = happyShift action_30
action_93 (93) = happyShift action_31
action_93 (100) = happyShift action_32
action_93 (7) = happyGoto action_119
action_93 (8) = happyGoto action_8
action_93 (9) = happyGoto action_9
action_93 (10) = happyGoto action_10
action_93 (11) = happyGoto action_11
action_93 (12) = happyGoto action_12
action_93 (13) = happyGoto action_13
action_93 (14) = happyGoto action_14
action_93 (15) = happyGoto action_15
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (83) = happyShift action_115
action_94 (28) = happyGoto action_118
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (83) = happyShift action_115
action_95 (28) = happyGoto action_117
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (83) = happyShift action_115
action_96 (28) = happyGoto action_116
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (83) = happyShift action_115
action_97 (28) = happyGoto action_114
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_31

action_99 (40) = happyShift action_16
action_99 (43) = happyShift action_17
action_99 (44) = happyShift action_18
action_99 (47) = happyShift action_19
action_99 (53) = happyShift action_20
action_99 (55) = happyShift action_21
action_99 (57) = happyShift action_22
action_99 (58) = happyShift action_23
action_99 (59) = happyShift action_24
action_99 (66) = happyShift action_25
action_99 (70) = happyShift action_26
action_99 (71) = happyShift action_27
action_99 (72) = happyShift action_28
action_99 (73) = happyShift action_29
action_99 (74) = happyShift action_30
action_99 (93) = happyShift action_31
action_99 (100) = happyShift action_32
action_99 (7) = happyGoto action_113
action_99 (8) = happyGoto action_8
action_99 (9) = happyGoto action_9
action_99 (10) = happyGoto action_10
action_99 (11) = happyGoto action_11
action_99 (12) = happyGoto action_12
action_99 (13) = happyGoto action_13
action_99 (14) = happyGoto action_14
action_99 (15) = happyGoto action_15
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (68) = happyShift action_101
action_100 (69) = happyShift action_102
action_100 (23) = happyGoto action_112
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_62

action_102 _ = happyReduce_63

action_103 _ = happyReduce_39

action_104 _ = happyReduce_40

action_105 _ = happyReduce_41

action_106 _ = happyReduce_9

action_107 (82) = happyShift action_111
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_65

action_109 (39) = happyShift action_38
action_109 (5) = happyGoto action_36
action_109 (32) = happyGoto action_110
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_85

action_111 (41) = happyShift action_5
action_111 (42) = happyShift action_6
action_111 (6) = happyGoto action_179
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (40) = happyShift action_16
action_112 (43) = happyShift action_17
action_112 (44) = happyShift action_18
action_112 (47) = happyShift action_19
action_112 (53) = happyShift action_20
action_112 (55) = happyShift action_21
action_112 (57) = happyShift action_22
action_112 (58) = happyShift action_23
action_112 (59) = happyShift action_24
action_112 (66) = happyShift action_25
action_112 (70) = happyShift action_26
action_112 (71) = happyShift action_27
action_112 (72) = happyShift action_28
action_112 (73) = happyShift action_29
action_112 (74) = happyShift action_30
action_112 (93) = happyShift action_31
action_112 (100) = happyShift action_32
action_112 (7) = happyGoto action_178
action_112 (8) = happyGoto action_8
action_112 (9) = happyGoto action_9
action_112 (10) = happyGoto action_10
action_112 (11) = happyGoto action_11
action_112 (12) = happyGoto action_12
action_112 (13) = happyGoto action_13
action_112 (14) = happyGoto action_14
action_112 (15) = happyGoto action_15
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_37

action_114 (40) = happyShift action_16
action_114 (43) = happyShift action_17
action_114 (44) = happyShift action_18
action_114 (47) = happyShift action_19
action_114 (53) = happyShift action_20
action_114 (55) = happyShift action_21
action_114 (57) = happyShift action_22
action_114 (58) = happyShift action_23
action_114 (59) = happyShift action_24
action_114 (66) = happyShift action_25
action_114 (70) = happyShift action_26
action_114 (71) = happyShift action_27
action_114 (72) = happyShift action_28
action_114 (73) = happyShift action_29
action_114 (74) = happyShift action_30
action_114 (93) = happyShift action_31
action_114 (100) = happyShift action_32
action_114 (7) = happyGoto action_177
action_114 (8) = happyGoto action_8
action_114 (9) = happyGoto action_9
action_114 (10) = happyGoto action_10
action_114 (11) = happyGoto action_11
action_114 (12) = happyGoto action_12
action_114 (13) = happyGoto action_13
action_114 (14) = happyGoto action_14
action_114 (15) = happyGoto action_15
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (49) = happyShift action_174
action_115 (61) = happyShift action_175
action_115 (84) = happyShift action_176
action_115 (18) = happyGoto action_171
action_115 (31) = happyGoto action_172
action_115 (36) = happyGoto action_173
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (40) = happyShift action_16
action_116 (43) = happyShift action_17
action_116 (44) = happyShift action_18
action_116 (47) = happyShift action_19
action_116 (53) = happyShift action_20
action_116 (55) = happyShift action_21
action_116 (57) = happyShift action_22
action_116 (58) = happyShift action_23
action_116 (59) = happyShift action_24
action_116 (66) = happyShift action_25
action_116 (70) = happyShift action_26
action_116 (71) = happyShift action_27
action_116 (72) = happyShift action_28
action_116 (73) = happyShift action_29
action_116 (74) = happyShift action_30
action_116 (93) = happyShift action_31
action_116 (100) = happyShift action_32
action_116 (7) = happyGoto action_170
action_116 (8) = happyGoto action_8
action_116 (9) = happyGoto action_9
action_116 (10) = happyGoto action_10
action_116 (11) = happyGoto action_11
action_116 (12) = happyGoto action_12
action_116 (13) = happyGoto action_13
action_116 (14) = happyGoto action_14
action_116 (15) = happyGoto action_15
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (40) = happyShift action_16
action_117 (43) = happyShift action_17
action_117 (44) = happyShift action_18
action_117 (47) = happyShift action_19
action_117 (53) = happyShift action_20
action_117 (55) = happyShift action_21
action_117 (57) = happyShift action_22
action_117 (58) = happyShift action_23
action_117 (59) = happyShift action_24
action_117 (66) = happyShift action_25
action_117 (70) = happyShift action_26
action_117 (71) = happyShift action_27
action_117 (72) = happyShift action_28
action_117 (73) = happyShift action_29
action_117 (74) = happyShift action_30
action_117 (93) = happyShift action_31
action_117 (100) = happyShift action_32
action_117 (7) = happyGoto action_169
action_117 (8) = happyGoto action_8
action_117 (9) = happyGoto action_9
action_117 (10) = happyGoto action_10
action_117 (11) = happyGoto action_11
action_117 (12) = happyGoto action_12
action_117 (13) = happyGoto action_13
action_117 (14) = happyGoto action_14
action_117 (15) = happyGoto action_15
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (40) = happyShift action_16
action_118 (43) = happyShift action_17
action_118 (44) = happyShift action_18
action_118 (47) = happyShift action_19
action_118 (53) = happyShift action_20
action_118 (55) = happyShift action_21
action_118 (57) = happyShift action_22
action_118 (58) = happyShift action_23
action_118 (59) = happyShift action_24
action_118 (66) = happyShift action_25
action_118 (70) = happyShift action_26
action_118 (71) = happyShift action_27
action_118 (72) = happyShift action_28
action_118 (73) = happyShift action_29
action_118 (74) = happyShift action_30
action_118 (93) = happyShift action_31
action_118 (100) = happyShift action_32
action_118 (7) = happyGoto action_168
action_118 (8) = happyGoto action_8
action_118 (9) = happyGoto action_9
action_118 (10) = happyGoto action_10
action_118 (11) = happyGoto action_11
action_118 (12) = happyGoto action_12
action_118 (13) = happyGoto action_13
action_118 (14) = happyGoto action_14
action_118 (15) = happyGoto action_15
action_118 _ = happyFail (happyExpListPerState 118)

action_119 _ = happyReduce_36

action_120 (40) = happyShift action_16
action_120 (43) = happyShift action_17
action_120 (44) = happyShift action_18
action_120 (47) = happyShift action_19
action_120 (53) = happyShift action_20
action_120 (55) = happyShift action_21
action_120 (57) = happyShift action_22
action_120 (58) = happyShift action_23
action_120 (59) = happyShift action_24
action_120 (66) = happyShift action_25
action_120 (70) = happyShift action_26
action_120 (71) = happyShift action_27
action_120 (72) = happyShift action_28
action_120 (73) = happyShift action_29
action_120 (74) = happyShift action_30
action_120 (93) = happyShift action_31
action_120 (100) = happyShift action_32
action_120 (7) = happyGoto action_167
action_120 (8) = happyGoto action_8
action_120 (9) = happyGoto action_9
action_120 (10) = happyGoto action_10
action_120 (11) = happyGoto action_11
action_120 (12) = happyGoto action_12
action_120 (13) = happyGoto action_13
action_120 (14) = happyGoto action_14
action_120 (15) = happyGoto action_15
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_67

action_122 (92) = happyShift action_75
action_122 (17) = happyGoto action_84
action_122 (22) = happyGoto action_85
action_122 (33) = happyGoto action_166
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (99) = happyShift action_165
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_79

action_125 (76) = happyShift action_159
action_125 (77) = happyShift action_160
action_125 (78) = happyShift action_161
action_125 (79) = happyShift action_162
action_125 (80) = happyShift action_163
action_125 (81) = happyShift action_164
action_125 (20) = happyGoto action_158
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (50) = happyShift action_155
action_126 (51) = happyShift action_156
action_126 (85) = happyShift action_157
action_126 _ = happyReduce_90

action_127 (84) = happyShift action_154
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (49) = happyShift action_128
action_128 (52) = happyShift action_129
action_128 (92) = happyShift action_75
action_128 (16) = happyGoto action_124
action_128 (17) = happyGoto action_125
action_128 (30) = happyGoto action_153
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (87) = happyShift action_148
action_129 (88) = happyShift action_149
action_129 (89) = happyShift action_150
action_129 (90) = happyShift action_151
action_129 (91) = happyShift action_152
action_129 (21) = happyGoto action_147
action_129 _ = happyFail (happyExpListPerState 129)

action_130 _ = happyReduce_70

action_131 _ = happyReduce_25

action_132 _ = happyReduce_69

action_133 (92) = happyShift action_75
action_133 (17) = happyGoto action_78
action_133 (34) = happyGoto action_146
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (84) = happyShift action_145
action_134 _ = happyFail (happyExpListPerState 134)

action_135 _ = happyReduce_74

action_136 (85) = happyShift action_144
action_136 _ = happyReduce_94

action_137 _ = happyReduce_21

action_138 _ = happyReduce_47

action_139 _ = happyReduce_22

action_140 (40) = happyShift action_16
action_140 (43) = happyShift action_17
action_140 (44) = happyShift action_18
action_140 (47) = happyShift action_19
action_140 (53) = happyShift action_20
action_140 (55) = happyShift action_21
action_140 (57) = happyShift action_22
action_140 (58) = happyShift action_23
action_140 (59) = happyShift action_24
action_140 (66) = happyShift action_25
action_140 (70) = happyShift action_26
action_140 (71) = happyShift action_27
action_140 (72) = happyShift action_28
action_140 (73) = happyShift action_29
action_140 (74) = happyShift action_30
action_140 (93) = happyShift action_31
action_140 (100) = happyShift action_32
action_140 (7) = happyGoto action_143
action_140 (8) = happyGoto action_8
action_140 (9) = happyGoto action_9
action_140 (10) = happyGoto action_10
action_140 (11) = happyGoto action_11
action_140 (12) = happyGoto action_12
action_140 (13) = happyGoto action_13
action_140 (14) = happyGoto action_14
action_140 (15) = happyGoto action_15
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (40) = happyShift action_16
action_141 (43) = happyShift action_17
action_141 (44) = happyShift action_18
action_141 (47) = happyShift action_19
action_141 (53) = happyShift action_20
action_141 (55) = happyShift action_21
action_141 (57) = happyShift action_22
action_141 (58) = happyShift action_23
action_141 (59) = happyShift action_24
action_141 (66) = happyShift action_25
action_141 (70) = happyShift action_26
action_141 (71) = happyShift action_27
action_141 (72) = happyShift action_28
action_141 (73) = happyShift action_29
action_141 (74) = happyShift action_30
action_141 (93) = happyShift action_31
action_141 (100) = happyShift action_32
action_141 (7) = happyGoto action_142
action_141 (8) = happyGoto action_8
action_141 (9) = happyGoto action_9
action_141 (10) = happyGoto action_10
action_141 (11) = happyGoto action_11
action_141 (12) = happyGoto action_12
action_141 (13) = happyGoto action_13
action_141 (14) = happyGoto action_14
action_141 (15) = happyGoto action_15
action_141 _ = happyFail (happyExpListPerState 141)

action_142 _ = happyReduce_19

action_143 _ = happyReduce_20

action_144 (99) = happyShift action_136
action_144 (37) = happyGoto action_196
action_144 _ = happyFail (happyExpListPerState 144)

action_145 _ = happyReduce_75

action_146 _ = happyReduce_89

action_147 (97) = happyShift action_195
action_147 _ = happyFail (happyExpListPerState 147)

action_148 _ = happyReduce_59

action_149 _ = happyReduce_56

action_150 _ = happyReduce_57

action_151 _ = happyReduce_58

action_152 _ = happyReduce_60

action_153 (50) = happyShift action_155
action_153 (51) = happyShift action_156
action_153 _ = happyReduce_76

action_154 _ = happyReduce_71

action_155 (49) = happyShift action_128
action_155 (52) = happyShift action_129
action_155 (92) = happyShift action_75
action_155 (16) = happyGoto action_124
action_155 (17) = happyGoto action_125
action_155 (30) = happyGoto action_194
action_155 _ = happyFail (happyExpListPerState 155)

action_156 (49) = happyShift action_128
action_156 (52) = happyShift action_129
action_156 (92) = happyShift action_75
action_156 (16) = happyGoto action_124
action_156 (17) = happyGoto action_125
action_156 (30) = happyGoto action_193
action_156 _ = happyFail (happyExpListPerState 156)

action_157 (49) = happyShift action_128
action_157 (52) = happyShift action_129
action_157 (92) = happyShift action_75
action_157 (16) = happyGoto action_124
action_157 (17) = happyGoto action_125
action_157 (30) = happyGoto action_126
action_157 (35) = happyGoto action_192
action_157 _ = happyFail (happyExpListPerState 157)

action_158 (92) = happyShift action_75
action_158 (99) = happyShift action_191
action_158 (17) = happyGoto action_190
action_158 _ = happyFail (happyExpListPerState 158)

action_159 _ = happyReduce_50

action_160 _ = happyReduce_51

action_161 _ = happyReduce_52

action_162 _ = happyReduce_53

action_163 _ = happyReduce_54

action_164 _ = happyReduce_55

action_165 _ = happyReduce_61

action_166 _ = happyReduce_87

action_167 _ = happyReduce_27

action_168 (40) = happyShift action_16
action_168 (43) = happyShift action_17
action_168 (44) = happyShift action_18
action_168 (47) = happyShift action_19
action_168 (53) = happyShift action_20
action_168 (55) = happyShift action_21
action_168 (57) = happyShift action_22
action_168 (58) = happyShift action_23
action_168 (59) = happyShift action_24
action_168 (66) = happyShift action_25
action_168 (70) = happyShift action_26
action_168 (71) = happyShift action_27
action_168 (72) = happyShift action_28
action_168 (73) = happyShift action_29
action_168 (74) = happyShift action_30
action_168 (93) = happyShift action_31
action_168 (100) = happyShift action_32
action_168 (7) = happyGoto action_189
action_168 (8) = happyGoto action_8
action_168 (9) = happyGoto action_9
action_168 (10) = happyGoto action_10
action_168 (11) = happyGoto action_11
action_168 (12) = happyGoto action_12
action_168 (13) = happyGoto action_13
action_168 (14) = happyGoto action_14
action_168 (15) = happyGoto action_15
action_168 _ = happyFail (happyExpListPerState 168)

action_169 (40) = happyShift action_16
action_169 (43) = happyShift action_17
action_169 (44) = happyShift action_18
action_169 (47) = happyShift action_19
action_169 (53) = happyShift action_20
action_169 (55) = happyShift action_21
action_169 (57) = happyShift action_22
action_169 (58) = happyShift action_23
action_169 (59) = happyShift action_24
action_169 (66) = happyShift action_25
action_169 (70) = happyShift action_26
action_169 (71) = happyShift action_27
action_169 (72) = happyShift action_28
action_169 (73) = happyShift action_29
action_169 (74) = happyShift action_30
action_169 (93) = happyShift action_31
action_169 (100) = happyShift action_32
action_169 (7) = happyGoto action_188
action_169 (8) = happyGoto action_8
action_169 (9) = happyGoto action_9
action_169 (10) = happyGoto action_10
action_169 (11) = happyGoto action_11
action_169 (12) = happyGoto action_12
action_169 (13) = happyGoto action_13
action_169 (14) = happyGoto action_14
action_169 (15) = happyGoto action_15
action_169 _ = happyFail (happyExpListPerState 169)

action_170 (40) = happyShift action_16
action_170 (43) = happyShift action_17
action_170 (44) = happyShift action_18
action_170 (47) = happyShift action_19
action_170 (53) = happyShift action_20
action_170 (55) = happyShift action_21
action_170 (57) = happyShift action_22
action_170 (58) = happyShift action_23
action_170 (59) = happyShift action_24
action_170 (66) = happyShift action_25
action_170 (70) = happyShift action_26
action_170 (71) = happyShift action_27
action_170 (72) = happyShift action_28
action_170 (73) = happyShift action_29
action_170 (74) = happyShift action_30
action_170 (93) = happyShift action_31
action_170 (100) = happyShift action_32
action_170 (7) = happyGoto action_187
action_170 (8) = happyGoto action_8
action_170 (9) = happyGoto action_9
action_170 (10) = happyGoto action_10
action_170 (11) = happyGoto action_11
action_170 (12) = happyGoto action_12
action_170 (13) = happyGoto action_13
action_170 (14) = happyGoto action_14
action_170 (15) = happyGoto action_15
action_170 _ = happyFail (happyExpListPerState 170)

action_171 _ = happyReduce_83

action_172 (50) = happyShift action_184
action_172 (51) = happyShift action_185
action_172 (85) = happyShift action_186
action_172 _ = happyReduce_92

action_173 (84) = happyShift action_183
action_173 _ = happyFail (happyExpListPerState 173)

action_174 (49) = happyShift action_174
action_174 (61) = happyShift action_175
action_174 (18) = happyGoto action_171
action_174 (31) = happyGoto action_182
action_174 _ = happyFail (happyExpListPerState 174)

action_175 (86) = happyShift action_181
action_175 _ = happyFail (happyExpListPerState 175)

action_176 _ = happyReduce_72

action_177 (40) = happyShift action_16
action_177 (43) = happyShift action_17
action_177 (44) = happyShift action_18
action_177 (47) = happyShift action_19
action_177 (53) = happyShift action_20
action_177 (55) = happyShift action_21
action_177 (57) = happyShift action_22
action_177 (58) = happyShift action_23
action_177 (59) = happyShift action_24
action_177 (66) = happyShift action_25
action_177 (70) = happyShift action_26
action_177 (71) = happyShift action_27
action_177 (72) = happyShift action_28
action_177 (73) = happyShift action_29
action_177 (74) = happyShift action_30
action_177 (93) = happyShift action_31
action_177 (100) = happyShift action_32
action_177 (7) = happyGoto action_180
action_177 (8) = happyGoto action_8
action_177 (9) = happyGoto action_9
action_177 (10) = happyGoto action_10
action_177 (11) = happyGoto action_11
action_177 (12) = happyGoto action_12
action_177 (13) = happyGoto action_13
action_177 (14) = happyGoto action_14
action_177 (15) = happyGoto action_15
action_177 _ = happyFail (happyExpListPerState 177)

action_178 _ = happyReduce_38

action_179 _ = happyReduce_4

action_180 _ = happyReduce_32

action_181 (92) = happyShift action_75
action_181 (17) = happyGoto action_201
action_181 _ = happyFail (happyExpListPerState 181)

action_182 (50) = happyShift action_184
action_182 (51) = happyShift action_185
action_182 _ = happyReduce_80

action_183 _ = happyReduce_73

action_184 (49) = happyShift action_174
action_184 (61) = happyShift action_175
action_184 (18) = happyGoto action_171
action_184 (31) = happyGoto action_200
action_184 _ = happyFail (happyExpListPerState 184)

action_185 (49) = happyShift action_174
action_185 (61) = happyShift action_175
action_185 (18) = happyGoto action_171
action_185 (31) = happyGoto action_199
action_185 _ = happyFail (happyExpListPerState 185)

action_186 (49) = happyShift action_174
action_186 (61) = happyShift action_175
action_186 (18) = happyGoto action_171
action_186 (31) = happyGoto action_172
action_186 (36) = happyGoto action_198
action_186 _ = happyFail (happyExpListPerState 186)

action_187 _ = happyReduce_33

action_188 _ = happyReduce_34

action_189 _ = happyReduce_35

action_190 _ = happyReduce_45

action_191 _ = happyReduce_44

action_192 _ = happyReduce_91

action_193 (50) = happyShift action_155
action_193 (51) = happyShift action_156
action_193 _ = happyReduce_78

action_194 (50) = happyShift action_155
action_194 (51) = happyShift action_156
action_194 _ = happyReduce_77

action_195 (76) = happyShift action_159
action_195 (77) = happyShift action_160
action_195 (78) = happyShift action_161
action_195 (79) = happyShift action_162
action_195 (80) = happyShift action_163
action_195 (81) = happyShift action_164
action_195 (20) = happyGoto action_197
action_195 _ = happyFail (happyExpListPerState 195)

action_196 _ = happyReduce_95

action_197 (97) = happyShift action_203
action_197 _ = happyFail (happyExpListPerState 197)

action_198 _ = happyReduce_93

action_199 (50) = happyShift action_184
action_199 (51) = happyShift action_185
action_199 _ = happyReduce_82

action_200 (50) = happyShift action_184
action_200 (51) = happyShift action_185
action_200 _ = happyReduce_81

action_201 (76) = happyShift action_159
action_201 (77) = happyShift action_160
action_201 (78) = happyShift action_161
action_201 (79) = happyShift action_162
action_201 (80) = happyShift action_163
action_201 (81) = happyShift action_164
action_201 (20) = happyGoto action_202
action_201 _ = happyFail (happyExpListPerState 201)

action_202 (62) = happyShift action_204
action_202 _ = happyFail (happyExpListPerState 202)

action_203 _ = happyReduce_46

action_204 (86) = happyShift action_205
action_204 _ = happyFail (happyExpListPerState 204)

action_205 (92) = happyShift action_75
action_205 (17) = happyGoto action_206
action_205 _ = happyFail (happyExpListPerState 205)

action_206 _ = happyReduce_48

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

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_3)
	_
	_
	 =  HappyAbsSyn9
		 (SelectAll happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn26  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (SelectCol happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 5 9 happyReduction_19
happyReduction_19 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectAllWhere happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 5 9 happyReduction_20
happyReduction_20 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SelectColWhere happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 4 10 happyReduction_21
happyReduction_21 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn29  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (InsertValues happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 4 10 happyReduction_22
happyReduction_22 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (InsertColumn happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_2  11 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (DeleteAll happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  11 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn26  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (DeleteCol happy_var_2 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 11 happyReduction_25
happyReduction_25 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn27  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (DeleteAllWhere happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (UpdateAll happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 5 12 happyReduction_27
happyReduction_27 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn25  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (UpdateWhere happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_3  13 happyReduction_28
happyReduction_28 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Union happy_var_2 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Intersection happy_var_2 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  13 happyReduction_30
happyReduction_30 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Difference happy_var_2 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (JoinStandard happy_var_2 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 6 14 happyReduction_32
happyReduction_32 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinInner happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 14 happyReduction_33
happyReduction_33 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinLeft happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 14 happyReduction_34
happyReduction_34 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinRight happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 6 14 happyReduction_35
happyReduction_35 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinOuter happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 4 14 happyReduction_36
happyReduction_36 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (JoinFull happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 4 15 happyReduction_37
happyReduction_37 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 5 15 happyReduction_38
happyReduction_38 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn23  happy_var_4) `HappyStk`
	(HappyAbsSyn26  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (OrderByCol happy_var_3 happy_var_4 happy_var_5
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

happyReduce_44 = happySpecReduce_3  16 happyReduction_44
happyReduction_44 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn20  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  16 happyReduction_45
happyReduction_45 (HappyAbsSyn17  happy_var_3)
	(HappyAbsSyn20  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happyReduce 5 16 happyReduction_46
happyReduction_46 ((HappyTerminal (TokenInt  _ happy_var_5)) `HappyStk`
	(HappyAbsSyn20  happy_var_4) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_3)) `HappyStk`
	(HappyAbsSyn21  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (IndexVal happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_47 = happySpecReduce_2  17 happyReduction_47
happyReduction_47 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happyReduce 7 18 happyReduction_48
happyReduction_48 ((HappyAbsSyn17  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_4) `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (TableComparison happy_var_3 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_49 = happySpecReduce_3  19 happyReduction_49
happyReduction_49 (HappyAbsSyn17  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn19
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  20 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn20
		 (Eq
	)

happyReduce_51 = happySpecReduce_1  20 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn20
		 (LessThan
	)

happyReduce_52 = happySpecReduce_1  20 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn20
		 (GreaterThan
	)

happyReduce_53 = happySpecReduce_1  20 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn20
		 (LessThanEq
	)

happyReduce_54 = happySpecReduce_1  20 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn20
		 (GreaterThanEq
	)

happyReduce_55 = happySpecReduce_1  20 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn20
		 (NotEq
	)

happyReduce_56 = happySpecReduce_1  21 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn21
		 (Add
	)

happyReduce_57 = happySpecReduce_1  21 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn21
		 (Subtract
	)

happyReduce_58 = happySpecReduce_1  21 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn21
		 (Divide
	)

happyReduce_59 = happySpecReduce_1  21 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn21
		 (Multiply
	)

happyReduce_60 = happySpecReduce_1  21 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn21
		 (Modulo
	)

happyReduce_61 = happySpecReduce_3  22 happyReduction_61
happyReduction_61 (HappyTerminal (TokenStr _ happy_var_3))
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn22
		 (Assignment happy_var_1 happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  23 happyReduction_62
happyReduction_62 _
	 =  HappyAbsSyn23
		 (Asc
	)

happyReduce_63 = happySpecReduce_1  23 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn23
		 (Desc
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
happyReduction_79 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn30
		 (Comparison happy_var_1
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_2  31 happyReduction_80
happyReduction_80 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (Not happy_var_2
	)
happyReduction_80 _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_3  31 happyReduction_81
happyReduction_81 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (And happy_var_1 happy_var_3
	)
happyReduction_81 _ _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  31 happyReduction_82
happyReduction_82 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (Or happy_var_1 happy_var_3
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  31 happyReduction_83
happyReduction_83 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn31
		 (Comparison happy_var_1
	)
happyReduction_83 _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_1  32 happyReduction_84
happyReduction_84 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1]
	)
happyReduction_84 _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  32 happyReduction_85
happyReduction_85 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_1  33 happyReduction_86
happyReduction_86 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 ([happy_var_1]
	)
happyReduction_86 _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  33 happyReduction_87
happyReduction_87 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_1  34 happyReduction_88
happyReduction_88 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1]
	)
happyReduction_88 _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_3  34 happyReduction_89
happyReduction_89 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_89 _ _ _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_1  35 happyReduction_90
happyReduction_90 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1]
	)
happyReduction_90 _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  35 happyReduction_91
happyReduction_91 (HappyAbsSyn35  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_1  36 happyReduction_92
happyReduction_92 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1]
	)
happyReduction_92 _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_3  36 happyReduction_93
happyReduction_93 (HappyAbsSyn36  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_93 _ _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_1  37 happyReduction_94
happyReduction_94 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn37
		 ([happy_var_1]
	)
happyReduction_94 _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_3  37 happyReduction_95
happyReduction_95 (HappyAbsSyn37  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn37
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_95 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 101 101 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenSetup _ -> cont 38;
	TokenPrettyPrint _ -> cont 39;
	TokenRead _ -> cont 40;
	TokenLet _ -> cont 41;
	TokenReturn _ -> cont 42;
	TokenSelect _ -> cont 43;
	TokenInsert _ -> cont 44;
	TokenValues _ -> cont 45;
	TokenColumn _ -> cont 46;
	TokenDelete _ -> cont 47;
	TokenWhere _ -> cont 48;
	TokenNot _ -> cont 49;
	TokenAnd _ -> cont 50;
	TokenOr _ -> cont 51;
	TokenIndex _ -> cont 52;
	TokenUpdate _ -> cont 53;
	TokenSet _ -> cont 54;
	TokenUnion _ -> cont 55;
	TokenAll _ -> cont 56;
	TokenIntersection _ -> cont 57;
	TokenDifference _ -> cont 58;
	TokenJoin _ -> cont 59;
	TokenInner _ -> cont 60;
	TokenLeft _ -> cont 61;
	TokenRight _ -> cont 62;
	TokenOuter _ -> cont 63;
	TokenFull _ -> cont 64;
	TokenOn _ -> cont 65;
	TokenOrder _ -> cont 66;
	TokenBy _ -> cont 67;
	TokenAsc _ -> cont 68;
	TokenDesc _ -> cont 69;
	TokenLimit _ -> cont 70;
	TokenOffset _ -> cont 71;
	TokenLast _ -> cont 72;
	TokenUnique _ -> cont 73;
	TokenTranspose _ -> cont 74;
	TokenAssign _ -> cont 75;
	TokenEq _ -> cont 76;
	TokenLessThan _ -> cont 77;
	TokenGreaterThan _ -> cont 78;
	TokenLessThanEq _ -> cont 79;
	TokenGreaterThanEq _ -> cont 80;
	TokenNotEq _ -> cont 81;
	TokenSep _ -> cont 82;
	TokenLSquare _ -> cont 83;
	TokenRSquare _ -> cont 84;
	TokenComma _ -> cont 85;
	TokenDot _ -> cont 86;
	TokenAst _ -> cont 87;
	TokenAdd _ -> cont 88;
	TokenSubtract _ -> cont 89;
	TokenDivide _ -> cont 90;
	TokenModulo _ -> cont 91;
	TokenAt _ -> cont 92;
	TokenLParen _ -> cont 93;
	TokenRParen _ -> cont 94;
	TokenLParenCurly _ -> cont 95;
	TokenRParenCurly _ -> cont 96;
	TokenInt  _ happy_dollar_dollar -> cont 97;
	TokenFilename _ happy_dollar_dollar -> cont 98;
	TokenStr _ happy_dollar_dollar -> cont 99;
	TokenVar _ happy_dollar_dollar -> cont 100;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 101 tk tks = happyError' (tks, explist)
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

{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,555) ([0,3072,0,0,0,0,16,0,0,0,0,0,0,4096,0,0,0,0,0,0,41266,7232,2048,1,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,8704,0,0,16,0,256,0,12800,16547,8220,264,0,33992,28931,8192,4,8192,64019,453,4224,0,0,8192,0,0,0,0,0,8192,0,0,0,0,128,0,0,0,0,2,32768,10316,1808,16896,0,0,0,0,0,0,0,32768,0,0,8192,2579,452,4224,0,0,0,0,4,0,41266,7232,2048,1,51200,644,113,1056,0,4896,50186,32769,16,0,0,192,8,0,12800,16545,28,264,0,0,128,0,0,0,0,2,0,0,0,2048,0,0,0,0,32,0,0,51200,644,113,1056,0,4896,50186,32769,16,32768,10316,1808,16896,0,0,0,0,0,0,33992,28930,8192,4,0,0,0,2,0,0,0,4096,1,0,0,0,8192,0,0,0,32768,0,0,0,0,0,2,32768,10444,1808,16896,0,12800,16547,28,264,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,12800,16545,28,264,0,0,0,256,2,0,0,0,2048,0,0,0,8192,0,0,0,0,64,0,0,0,0,0,0,4896,50186,32769,16,0,256,0,272,0,0,0,0,0,0,33992,28930,8192,4,0,0,0,0,0,19584,4136,7,66,0,0,2,0,0,0,2048,0,0,0,0,32,0,0,0,32768,0,0,0,0,0,0,0,0,33992,28930,8192,4,0,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,49152,0,0,0,0,19584,4136,7,66,0,0,0,0,0,51200,644,113,1056,0,0,0,4096,0,32768,10316,1808,16896,0,12800,16545,28,264,0,33992,28930,8192,4,0,0,0,0,0,0,0,0,0,0,6144,0,128,0,0,0,0,0,0,0,0,252,0,0,0,0,16,0,0,4,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,51200,644,113,1056,0,0,0,1024,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,8192,2579,452,4224,0,19584,4136,7,66,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33792,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1024,0,1024,0,0,16,0,16,0,4896,50186,32769,16,32768,10316,1808,16896,0,12800,16545,28,264,0,0,0,4096,0,8192,2579,452,4224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,1024,0,0,0,0,64,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectFunction","DeleteFunction","InsertFunction","UnionFunction","JoinFunction","TableComparison","TableColumnRef","FormatFunction","Direction","Predicate","Comparison","ColumnRef","ComparisonOperator","List__ColumnRef__","List__Predicate__","List__Str__","ListCont__ColumnRef__","ListCont__Predicate__","ListCont__Str__","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Union","All","Join","Inner","Left","Right","Outer","Full","On","Order","By","Asc","Desc","Limit","Offset","Last","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'.'","'*'","\"@\"","'('","')'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 74
        bit_end = (st Prelude.+ 1) Prelude.* 74
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..73]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (27) = happyShift action_2
action_0 (28) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (27) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (73) = happyShift action_25
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (74) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (26) = happyShift action_13
action_4 (29) = happyShift action_14
action_4 (30) = happyShift action_15
action_4 (33) = happyShift action_16
action_4 (38) = happyShift action_17
action_4 (40) = happyShift action_18
action_4 (47) = happyShift action_19
action_4 (51) = happyShift action_20
action_4 (52) = happyShift action_21
action_4 (53) = happyShift action_22
action_4 (68) = happyShift action_23
action_4 (73) = happyShift action_24
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (7) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 (9) = happyGoto action_9
action_4 (10) = happyGoto action_10
action_4 (11) = happyGoto action_11
action_4 (14) = happyGoto action_12
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (61) = happyShift action_50
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_7

action_8 _ = happyReduce_9

action_9 _ = happyReduce_8

action_10 _ = happyReduce_10

action_11 _ = happyReduce_11

action_12 _ = happyReduce_12

action_13 (71) = happyShift action_49
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (62) = happyShift action_43
action_14 (66) = happyShift action_48
action_14 (20) = happyGoto action_47
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (31) = happyShift action_45
action_15 (67) = happyShift action_46
action_15 (18) = happyGoto action_44
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_13
action_16 (29) = happyShift action_14
action_16 (30) = happyShift action_15
action_16 (33) = happyShift action_16
action_16 (34) = happyShift action_42
action_16 (38) = happyShift action_17
action_16 (40) = happyShift action_18
action_16 (47) = happyShift action_19
action_16 (51) = happyShift action_20
action_16 (52) = happyShift action_21
action_16 (53) = happyShift action_22
action_16 (62) = happyShift action_43
action_16 (68) = happyShift action_23
action_16 (73) = happyShift action_24
action_16 (5) = happyGoto action_40
action_16 (6) = happyGoto action_6
action_16 (7) = happyGoto action_7
action_16 (8) = happyGoto action_8
action_16 (9) = happyGoto action_9
action_16 (10) = happyGoto action_10
action_16 (11) = happyGoto action_11
action_16 (14) = happyGoto action_12
action_16 (20) = happyGoto action_41
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (26) = happyShift action_13
action_17 (29) = happyShift action_14
action_17 (30) = happyShift action_15
action_17 (33) = happyShift action_16
action_17 (38) = happyShift action_17
action_17 (39) = happyShift action_39
action_17 (40) = happyShift action_18
action_17 (47) = happyShift action_19
action_17 (51) = happyShift action_20
action_17 (52) = happyShift action_21
action_17 (53) = happyShift action_22
action_17 (68) = happyShift action_23
action_17 (73) = happyShift action_24
action_17 (5) = happyGoto action_38
action_17 (6) = happyGoto action_6
action_17 (7) = happyGoto action_7
action_17 (8) = happyGoto action_8
action_17 (9) = happyGoto action_9
action_17 (10) = happyGoto action_10
action_17 (11) = happyGoto action_11
action_17 (14) = happyGoto action_12
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (26) = happyShift action_13
action_18 (29) = happyShift action_14
action_18 (30) = happyShift action_15
action_18 (33) = happyShift action_16
action_18 (38) = happyShift action_17
action_18 (40) = happyShift action_18
action_18 (41) = happyShift action_33
action_18 (42) = happyShift action_34
action_18 (43) = happyShift action_35
action_18 (44) = happyShift action_36
action_18 (45) = happyShift action_37
action_18 (47) = happyShift action_19
action_18 (51) = happyShift action_20
action_18 (52) = happyShift action_21
action_18 (53) = happyShift action_22
action_18 (68) = happyShift action_23
action_18 (73) = happyShift action_24
action_18 (5) = happyGoto action_32
action_18 (6) = happyGoto action_6
action_18 (7) = happyGoto action_7
action_18 (8) = happyGoto action_8
action_18 (9) = happyGoto action_9
action_18 (10) = happyGoto action_10
action_18 (11) = happyGoto action_11
action_18 (14) = happyGoto action_12
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (48) = happyShift action_31
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (70) = happyShift action_30
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (70) = happyShift action_29
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (70) = happyShift action_28
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (26) = happyShift action_13
action_23 (29) = happyShift action_14
action_23 (30) = happyShift action_15
action_23 (33) = happyShift action_16
action_23 (38) = happyShift action_17
action_23 (40) = happyShift action_18
action_23 (47) = happyShift action_19
action_23 (51) = happyShift action_20
action_23 (52) = happyShift action_21
action_23 (53) = happyShift action_22
action_23 (68) = happyShift action_23
action_23 (73) = happyShift action_24
action_23 (5) = happyGoto action_27
action_23 (6) = happyGoto action_6
action_23 (7) = happyGoto action_7
action_23 (8) = happyGoto action_8
action_23 (9) = happyGoto action_9
action_23 (10) = happyGoto action_10
action_23 (11) = happyGoto action_11
action_23 (14) = happyGoto action_12
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_4

action_25 (54) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (26) = happyShift action_13
action_26 (29) = happyShift action_14
action_26 (30) = happyShift action_15
action_26 (33) = happyShift action_16
action_26 (38) = happyShift action_17
action_26 (40) = happyShift action_18
action_26 (47) = happyShift action_19
action_26 (51) = happyShift action_20
action_26 (52) = happyShift action_21
action_26 (53) = happyShift action_22
action_26 (68) = happyShift action_23
action_26 (73) = happyShift action_24
action_26 (5) = happyGoto action_81
action_26 (6) = happyGoto action_6
action_26 (7) = happyGoto action_7
action_26 (8) = happyGoto action_8
action_26 (9) = happyGoto action_9
action_26 (10) = happyGoto action_10
action_26 (11) = happyGoto action_11
action_26 (14) = happyGoto action_12
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (69) = happyShift action_80
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (26) = happyShift action_13
action_28 (29) = happyShift action_14
action_28 (30) = happyShift action_15
action_28 (33) = happyShift action_16
action_28 (38) = happyShift action_17
action_28 (40) = happyShift action_18
action_28 (47) = happyShift action_19
action_28 (51) = happyShift action_20
action_28 (52) = happyShift action_21
action_28 (53) = happyShift action_22
action_28 (68) = happyShift action_23
action_28 (73) = happyShift action_24
action_28 (5) = happyGoto action_79
action_28 (6) = happyGoto action_6
action_28 (7) = happyGoto action_7
action_28 (8) = happyGoto action_8
action_28 (9) = happyGoto action_9
action_28 (10) = happyGoto action_10
action_28 (11) = happyGoto action_11
action_28 (14) = happyGoto action_12
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (26) = happyShift action_13
action_29 (29) = happyShift action_14
action_29 (30) = happyShift action_15
action_29 (33) = happyShift action_16
action_29 (38) = happyShift action_17
action_29 (40) = happyShift action_18
action_29 (47) = happyShift action_19
action_29 (51) = happyShift action_20
action_29 (52) = happyShift action_21
action_29 (53) = happyShift action_22
action_29 (68) = happyShift action_23
action_29 (73) = happyShift action_24
action_29 (5) = happyGoto action_78
action_29 (6) = happyGoto action_6
action_29 (7) = happyGoto action_7
action_29 (8) = happyGoto action_8
action_29 (9) = happyGoto action_9
action_29 (10) = happyGoto action_10
action_29 (11) = happyGoto action_11
action_29 (14) = happyGoto action_12
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (26) = happyShift action_13
action_30 (29) = happyShift action_14
action_30 (30) = happyShift action_15
action_30 (33) = happyShift action_16
action_30 (38) = happyShift action_17
action_30 (40) = happyShift action_18
action_30 (47) = happyShift action_19
action_30 (51) = happyShift action_20
action_30 (52) = happyShift action_21
action_30 (53) = happyShift action_22
action_30 (68) = happyShift action_23
action_30 (73) = happyShift action_24
action_30 (5) = happyGoto action_77
action_30 (6) = happyGoto action_6
action_30 (7) = happyGoto action_7
action_30 (8) = happyGoto action_8
action_30 (9) = happyGoto action_9
action_30 (10) = happyGoto action_10
action_30 (11) = happyGoto action_11
action_30 (14) = happyGoto action_12
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (49) = happyShift action_75
action_31 (50) = happyShift action_76
action_31 (62) = happyShift action_43
action_31 (15) = happyGoto action_73
action_31 (20) = happyGoto action_74
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (26) = happyShift action_13
action_32 (29) = happyShift action_14
action_32 (30) = happyShift action_15
action_32 (33) = happyShift action_16
action_32 (38) = happyShift action_17
action_32 (40) = happyShift action_18
action_32 (47) = happyShift action_19
action_32 (51) = happyShift action_20
action_32 (52) = happyShift action_21
action_32 (53) = happyShift action_22
action_32 (68) = happyShift action_23
action_32 (73) = happyShift action_24
action_32 (5) = happyGoto action_72
action_32 (6) = happyGoto action_6
action_32 (7) = happyGoto action_7
action_32 (8) = happyGoto action_8
action_32 (9) = happyGoto action_9
action_32 (10) = happyGoto action_10
action_32 (11) = happyGoto action_11
action_32 (14) = happyGoto action_12
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (46) = happyShift action_71
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (46) = happyShift action_70
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (46) = happyShift action_69
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (46) = happyShift action_68
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (26) = happyShift action_13
action_37 (29) = happyShift action_14
action_37 (30) = happyShift action_15
action_37 (33) = happyShift action_16
action_37 (38) = happyShift action_17
action_37 (40) = happyShift action_18
action_37 (47) = happyShift action_19
action_37 (51) = happyShift action_20
action_37 (52) = happyShift action_21
action_37 (53) = happyShift action_22
action_37 (68) = happyShift action_23
action_37 (73) = happyShift action_24
action_37 (5) = happyGoto action_67
action_37 (6) = happyGoto action_6
action_37 (7) = happyGoto action_7
action_37 (8) = happyGoto action_8
action_37 (9) = happyGoto action_9
action_37 (10) = happyGoto action_10
action_37 (11) = happyGoto action_11
action_37 (14) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (26) = happyShift action_13
action_38 (29) = happyShift action_14
action_38 (30) = happyShift action_15
action_38 (33) = happyShift action_16
action_38 (38) = happyShift action_17
action_38 (40) = happyShift action_18
action_38 (47) = happyShift action_19
action_38 (51) = happyShift action_20
action_38 (52) = happyShift action_21
action_38 (53) = happyShift action_22
action_38 (68) = happyShift action_23
action_38 (73) = happyShift action_24
action_38 (5) = happyGoto action_66
action_38 (6) = happyGoto action_6
action_38 (7) = happyGoto action_7
action_38 (8) = happyGoto action_8
action_38 (9) = happyGoto action_9
action_38 (10) = happyGoto action_10
action_38 (11) = happyGoto action_11
action_38 (14) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (26) = happyShift action_13
action_39 (29) = happyShift action_14
action_39 (30) = happyShift action_15
action_39 (33) = happyShift action_16
action_39 (38) = happyShift action_17
action_39 (40) = happyShift action_18
action_39 (47) = happyShift action_19
action_39 (51) = happyShift action_20
action_39 (52) = happyShift action_21
action_39 (53) = happyShift action_22
action_39 (68) = happyShift action_23
action_39 (73) = happyShift action_24
action_39 (5) = happyGoto action_65
action_39 (6) = happyGoto action_6
action_39 (7) = happyGoto action_7
action_39 (8) = happyGoto action_8
action_39 (9) = happyGoto action_9
action_39 (10) = happyGoto action_10
action_39 (11) = happyGoto action_11
action_39 (14) = happyGoto action_12
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_17

action_41 (26) = happyShift action_13
action_41 (29) = happyShift action_14
action_41 (30) = happyShift action_15
action_41 (33) = happyShift action_16
action_41 (38) = happyShift action_17
action_41 (40) = happyShift action_18
action_41 (47) = happyShift action_19
action_41 (51) = happyShift action_20
action_41 (52) = happyShift action_21
action_41 (53) = happyShift action_22
action_41 (68) = happyShift action_23
action_41 (73) = happyShift action_24
action_41 (5) = happyGoto action_64
action_41 (6) = happyGoto action_6
action_41 (7) = happyGoto action_7
action_41 (8) = happyGoto action_8
action_41 (9) = happyGoto action_9
action_41 (10) = happyGoto action_10
action_41 (11) = happyGoto action_11
action_41 (14) = happyGoto action_12
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (62) = happyShift action_63
action_42 (21) = happyGoto action_62
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (63) = happyShift action_61
action_43 (67) = happyShift action_46
action_43 (18) = happyGoto action_59
action_43 (23) = happyGoto action_60
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (70) = happyShift action_58
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (62) = happyShift action_57
action_45 (22) = happyGoto action_56
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (70) = happyShift action_55
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (26) = happyShift action_13
action_47 (29) = happyShift action_14
action_47 (30) = happyShift action_15
action_47 (33) = happyShift action_16
action_47 (34) = happyShift action_54
action_47 (38) = happyShift action_17
action_47 (40) = happyShift action_18
action_47 (47) = happyShift action_19
action_47 (51) = happyShift action_20
action_47 (52) = happyShift action_21
action_47 (53) = happyShift action_22
action_47 (68) = happyShift action_23
action_47 (73) = happyShift action_24
action_47 (5) = happyGoto action_53
action_47 (6) = happyGoto action_6
action_47 (7) = happyGoto action_7
action_47 (8) = happyGoto action_8
action_47 (9) = happyGoto action_9
action_47 (10) = happyGoto action_10
action_47 (11) = happyGoto action_11
action_47 (14) = happyGoto action_12
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (26) = happyShift action_13
action_48 (29) = happyShift action_14
action_48 (30) = happyShift action_15
action_48 (33) = happyShift action_16
action_48 (34) = happyShift action_52
action_48 (38) = happyShift action_17
action_48 (40) = happyShift action_18
action_48 (47) = happyShift action_19
action_48 (51) = happyShift action_20
action_48 (52) = happyShift action_21
action_48 (53) = happyShift action_22
action_48 (68) = happyShift action_23
action_48 (73) = happyShift action_24
action_48 (5) = happyGoto action_51
action_48 (6) = happyGoto action_6
action_48 (7) = happyGoto action_7
action_48 (8) = happyGoto action_8
action_48 (9) = happyGoto action_9
action_48 (10) = happyGoto action_10
action_48 (11) = happyGoto action_11
action_48 (14) = happyGoto action_12
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_3

action_50 _ = happyReduce_2

action_51 _ = happyReduce_13

action_52 (62) = happyShift action_63
action_52 (21) = happyGoto action_107
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_14

action_54 (62) = happyShift action_63
action_54 (21) = happyGoto action_106
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_45

action_56 (26) = happyShift action_13
action_56 (29) = happyShift action_14
action_56 (30) = happyShift action_15
action_56 (33) = happyShift action_16
action_56 (38) = happyShift action_17
action_56 (40) = happyShift action_18
action_56 (47) = happyShift action_19
action_56 (51) = happyShift action_20
action_56 (52) = happyShift action_21
action_56 (53) = happyShift action_22
action_56 (68) = happyShift action_23
action_56 (73) = happyShift action_24
action_56 (5) = happyGoto action_105
action_56 (6) = happyGoto action_6
action_56 (7) = happyGoto action_7
action_56 (8) = happyGoto action_8
action_56 (9) = happyGoto action_9
action_56 (10) = happyGoto action_10
action_56 (11) = happyGoto action_11
action_56 (14) = happyGoto action_12
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (63) = happyShift action_103
action_57 (72) = happyShift action_104
action_57 (25) = happyGoto action_102
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (72) = happyShift action_101
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (64) = happyShift action_100
action_59 _ = happyReduce_58

action_60 (63) = happyShift action_99
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_52

action_62 (26) = happyShift action_13
action_62 (29) = happyShift action_14
action_62 (30) = happyShift action_15
action_62 (33) = happyShift action_16
action_62 (38) = happyShift action_17
action_62 (40) = happyShift action_18
action_62 (47) = happyShift action_19
action_62 (51) = happyShift action_20
action_62 (52) = happyShift action_21
action_62 (53) = happyShift action_22
action_62 (68) = happyShift action_23
action_62 (73) = happyShift action_24
action_62 (5) = happyGoto action_98
action_62 (6) = happyGoto action_6
action_62 (7) = happyGoto action_7
action_62 (8) = happyGoto action_8
action_62 (9) = happyGoto action_9
action_62 (10) = happyGoto action_10
action_62 (11) = happyGoto action_11
action_62 (14) = happyGoto action_12
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (35) = happyShift action_96
action_63 (63) = happyShift action_97
action_63 (67) = happyShift action_46
action_63 (16) = happyGoto action_92
action_63 (17) = happyGoto action_93
action_63 (18) = happyGoto action_94
action_63 (24) = happyGoto action_95
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_18

action_65 (26) = happyShift action_13
action_65 (29) = happyShift action_14
action_65 (30) = happyShift action_15
action_65 (33) = happyShift action_16
action_65 (38) = happyShift action_17
action_65 (40) = happyShift action_18
action_65 (47) = happyShift action_19
action_65 (51) = happyShift action_20
action_65 (52) = happyShift action_21
action_65 (53) = happyShift action_22
action_65 (68) = happyShift action_23
action_65 (73) = happyShift action_24
action_65 (5) = happyGoto action_91
action_65 (6) = happyGoto action_6
action_65 (7) = happyGoto action_7
action_65 (8) = happyGoto action_8
action_65 (9) = happyGoto action_9
action_65 (10) = happyGoto action_10
action_65 (11) = happyGoto action_11
action_65 (14) = happyGoto action_12
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_22

action_67 (26) = happyShift action_13
action_67 (29) = happyShift action_14
action_67 (30) = happyShift action_15
action_67 (33) = happyShift action_16
action_67 (38) = happyShift action_17
action_67 (40) = happyShift action_18
action_67 (47) = happyShift action_19
action_67 (51) = happyShift action_20
action_67 (52) = happyShift action_21
action_67 (53) = happyShift action_22
action_67 (68) = happyShift action_23
action_67 (73) = happyShift action_24
action_67 (5) = happyGoto action_90
action_67 (6) = happyGoto action_6
action_67 (7) = happyGoto action_7
action_67 (8) = happyGoto action_8
action_67 (9) = happyGoto action_9
action_67 (10) = happyGoto action_10
action_67 (11) = happyGoto action_11
action_67 (14) = happyGoto action_12
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (42) = happyShift action_86
action_68 (12) = happyGoto action_89
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (42) = happyShift action_86
action_69 (12) = happyGoto action_88
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (42) = happyShift action_86
action_70 (12) = happyGoto action_87
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (42) = happyShift action_86
action_71 (12) = happyGoto action_85
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_24

action_73 (26) = happyShift action_13
action_73 (29) = happyShift action_14
action_73 (30) = happyShift action_15
action_73 (33) = happyShift action_16
action_73 (38) = happyShift action_17
action_73 (40) = happyShift action_18
action_73 (47) = happyShift action_19
action_73 (51) = happyShift action_20
action_73 (52) = happyShift action_21
action_73 (53) = happyShift action_22
action_73 (68) = happyShift action_23
action_73 (73) = happyShift action_24
action_73 (5) = happyGoto action_84
action_73 (6) = happyGoto action_6
action_73 (7) = happyGoto action_7
action_73 (8) = happyGoto action_8
action_73 (9) = happyGoto action_9
action_73 (10) = happyGoto action_10
action_73 (11) = happyGoto action_11
action_73 (14) = happyGoto action_12
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (49) = happyShift action_75
action_74 (50) = happyShift action_76
action_74 (15) = happyGoto action_83
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_37

action_76 _ = happyReduce_38

action_77 _ = happyReduce_34

action_78 _ = happyReduce_35

action_79 _ = happyReduce_36

action_80 _ = happyReduce_6

action_81 (61) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (27) = happyShift action_2
action_82 (28) = happyShift action_4
action_82 (4) = happyGoto action_132
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (26) = happyShift action_13
action_83 (29) = happyShift action_14
action_83 (30) = happyShift action_15
action_83 (33) = happyShift action_16
action_83 (38) = happyShift action_17
action_83 (40) = happyShift action_18
action_83 (47) = happyShift action_19
action_83 (51) = happyShift action_20
action_83 (52) = happyShift action_21
action_83 (53) = happyShift action_22
action_83 (68) = happyShift action_23
action_83 (73) = happyShift action_24
action_83 (5) = happyGoto action_131
action_83 (6) = happyGoto action_6
action_83 (7) = happyGoto action_7
action_83 (8) = happyGoto action_8
action_83 (9) = happyGoto action_9
action_83 (10) = happyGoto action_10
action_83 (11) = happyGoto action_11
action_83 (14) = happyGoto action_12
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_32

action_85 (26) = happyShift action_13
action_85 (29) = happyShift action_14
action_85 (30) = happyShift action_15
action_85 (33) = happyShift action_16
action_85 (38) = happyShift action_17
action_85 (40) = happyShift action_18
action_85 (47) = happyShift action_19
action_85 (51) = happyShift action_20
action_85 (52) = happyShift action_21
action_85 (53) = happyShift action_22
action_85 (68) = happyShift action_23
action_85 (73) = happyShift action_24
action_85 (5) = happyGoto action_130
action_85 (6) = happyGoto action_6
action_85 (7) = happyGoto action_7
action_85 (8) = happyGoto action_8
action_85 (9) = happyGoto action_9
action_85 (10) = happyGoto action_10
action_85 (11) = happyGoto action_11
action_85 (14) = happyGoto action_12
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (65) = happyShift action_129
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (26) = happyShift action_13
action_87 (29) = happyShift action_14
action_87 (30) = happyShift action_15
action_87 (33) = happyShift action_16
action_87 (38) = happyShift action_17
action_87 (40) = happyShift action_18
action_87 (47) = happyShift action_19
action_87 (51) = happyShift action_20
action_87 (52) = happyShift action_21
action_87 (53) = happyShift action_22
action_87 (68) = happyShift action_23
action_87 (73) = happyShift action_24
action_87 (5) = happyGoto action_128
action_87 (6) = happyGoto action_6
action_87 (7) = happyGoto action_7
action_87 (8) = happyGoto action_8
action_87 (9) = happyGoto action_9
action_87 (10) = happyGoto action_10
action_87 (11) = happyGoto action_11
action_87 (14) = happyGoto action_12
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (26) = happyShift action_13
action_88 (29) = happyShift action_14
action_88 (30) = happyShift action_15
action_88 (33) = happyShift action_16
action_88 (38) = happyShift action_17
action_88 (40) = happyShift action_18
action_88 (47) = happyShift action_19
action_88 (51) = happyShift action_20
action_88 (52) = happyShift action_21
action_88 (53) = happyShift action_22
action_88 (68) = happyShift action_23
action_88 (73) = happyShift action_24
action_88 (5) = happyGoto action_127
action_88 (6) = happyGoto action_6
action_88 (7) = happyGoto action_7
action_88 (8) = happyGoto action_8
action_88 (9) = happyGoto action_9
action_88 (10) = happyGoto action_10
action_88 (11) = happyGoto action_11
action_88 (14) = happyGoto action_12
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (26) = happyShift action_13
action_89 (29) = happyShift action_14
action_89 (30) = happyShift action_15
action_89 (33) = happyShift action_16
action_89 (38) = happyShift action_17
action_89 (40) = happyShift action_18
action_89 (47) = happyShift action_19
action_89 (51) = happyShift action_20
action_89 (52) = happyShift action_21
action_89 (53) = happyShift action_22
action_89 (68) = happyShift action_23
action_89 (73) = happyShift action_24
action_89 (5) = happyGoto action_126
action_89 (6) = happyGoto action_6
action_89 (7) = happyGoto action_7
action_89 (8) = happyGoto action_8
action_89 (9) = happyGoto action_9
action_89 (10) = happyGoto action_10
action_89 (11) = happyGoto action_11
action_89 (14) = happyGoto action_12
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_29

action_91 _ = happyReduce_23

action_92 (36) = happyShift action_123
action_92 (37) = happyShift action_124
action_92 (64) = happyShift action_125
action_92 _ = happyReduce_60

action_93 _ = happyReduce_42

action_94 (55) = happyShift action_117
action_94 (56) = happyShift action_118
action_94 (57) = happyShift action_119
action_94 (58) = happyShift action_120
action_94 (59) = happyShift action_121
action_94 (60) = happyShift action_122
action_94 (19) = happyGoto action_116
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (63) = happyShift action_115
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (35) = happyShift action_96
action_96 (67) = happyShift action_46
action_96 (16) = happyGoto action_114
action_96 (17) = happyGoto action_93
action_96 (18) = happyGoto action_94
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_54

action_98 _ = happyReduce_19

action_99 _ = happyReduce_53

action_100 (67) = happyShift action_46
action_100 (18) = happyGoto action_59
action_100 (23) = happyGoto action_113
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (26) = happyShift action_13
action_101 (29) = happyShift action_14
action_101 (30) = happyShift action_15
action_101 (33) = happyShift action_16
action_101 (38) = happyShift action_17
action_101 (40) = happyShift action_18
action_101 (47) = happyShift action_19
action_101 (51) = happyShift action_20
action_101 (52) = happyShift action_21
action_101 (53) = happyShift action_22
action_101 (68) = happyShift action_23
action_101 (73) = happyShift action_24
action_101 (5) = happyGoto action_112
action_101 (6) = happyGoto action_6
action_101 (7) = happyGoto action_7
action_101 (8) = happyGoto action_8
action_101 (9) = happyGoto action_9
action_101 (10) = happyGoto action_10
action_101 (11) = happyGoto action_11
action_101 (14) = happyGoto action_12
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (63) = happyShift action_111
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_56

action_104 (64) = happyShift action_110
action_104 _ = happyReduce_62

action_105 _ = happyReduce_20

action_106 (26) = happyShift action_13
action_106 (29) = happyShift action_14
action_106 (30) = happyShift action_15
action_106 (33) = happyShift action_16
action_106 (38) = happyShift action_17
action_106 (40) = happyShift action_18
action_106 (47) = happyShift action_19
action_106 (51) = happyShift action_20
action_106 (52) = happyShift action_21
action_106 (53) = happyShift action_22
action_106 (68) = happyShift action_23
action_106 (73) = happyShift action_24
action_106 (5) = happyGoto action_109
action_106 (6) = happyGoto action_6
action_106 (7) = happyGoto action_7
action_106 (8) = happyGoto action_8
action_106 (9) = happyGoto action_9
action_106 (10) = happyGoto action_10
action_106 (11) = happyGoto action_11
action_106 (14) = happyGoto action_12
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (26) = happyShift action_13
action_107 (29) = happyShift action_14
action_107 (30) = happyShift action_15
action_107 (33) = happyShift action_16
action_107 (38) = happyShift action_17
action_107 (40) = happyShift action_18
action_107 (47) = happyShift action_19
action_107 (51) = happyShift action_20
action_107 (52) = happyShift action_21
action_107 (53) = happyShift action_22
action_107 (68) = happyShift action_23
action_107 (73) = happyShift action_24
action_107 (5) = happyGoto action_108
action_107 (6) = happyGoto action_6
action_107 (7) = happyGoto action_7
action_107 (8) = happyGoto action_8
action_107 (9) = happyGoto action_9
action_107 (10) = happyGoto action_10
action_107 (11) = happyGoto action_11
action_107 (14) = happyGoto action_12
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_15

action_109 _ = happyReduce_16

action_110 (72) = happyShift action_104
action_110 (25) = happyGoto action_143
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_57

action_112 _ = happyReduce_21

action_113 _ = happyReduce_59

action_114 (36) = happyShift action_123
action_114 (37) = happyShift action_124
action_114 _ = happyReduce_39

action_115 _ = happyReduce_55

action_116 (67) = happyShift action_46
action_116 (72) = happyShift action_142
action_116 (18) = happyGoto action_141
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_46

action_118 _ = happyReduce_47

action_119 _ = happyReduce_48

action_120 _ = happyReduce_49

action_121 _ = happyReduce_50

action_122 _ = happyReduce_51

action_123 (35) = happyShift action_96
action_123 (67) = happyShift action_46
action_123 (16) = happyGoto action_140
action_123 (17) = happyGoto action_93
action_123 (18) = happyGoto action_94
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (35) = happyShift action_96
action_124 (67) = happyShift action_46
action_124 (16) = happyGoto action_139
action_124 (17) = happyGoto action_93
action_124 (18) = happyGoto action_94
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (35) = happyShift action_96
action_125 (67) = happyShift action_46
action_125 (16) = happyGoto action_92
action_125 (17) = happyGoto action_93
action_125 (18) = happyGoto action_94
action_125 (24) = happyGoto action_138
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (26) = happyShift action_13
action_126 (29) = happyShift action_14
action_126 (30) = happyShift action_15
action_126 (33) = happyShift action_16
action_126 (38) = happyShift action_17
action_126 (40) = happyShift action_18
action_126 (47) = happyShift action_19
action_126 (51) = happyShift action_20
action_126 (52) = happyShift action_21
action_126 (53) = happyShift action_22
action_126 (68) = happyShift action_23
action_126 (73) = happyShift action_24
action_126 (5) = happyGoto action_137
action_126 (6) = happyGoto action_6
action_126 (7) = happyGoto action_7
action_126 (8) = happyGoto action_8
action_126 (9) = happyGoto action_9
action_126 (10) = happyGoto action_10
action_126 (11) = happyGoto action_11
action_126 (14) = happyGoto action_12
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (26) = happyShift action_13
action_127 (29) = happyShift action_14
action_127 (30) = happyShift action_15
action_127 (33) = happyShift action_16
action_127 (38) = happyShift action_17
action_127 (40) = happyShift action_18
action_127 (47) = happyShift action_19
action_127 (51) = happyShift action_20
action_127 (52) = happyShift action_21
action_127 (53) = happyShift action_22
action_127 (68) = happyShift action_23
action_127 (73) = happyShift action_24
action_127 (5) = happyGoto action_136
action_127 (6) = happyGoto action_6
action_127 (7) = happyGoto action_7
action_127 (8) = happyGoto action_8
action_127 (9) = happyGoto action_9
action_127 (10) = happyGoto action_10
action_127 (11) = happyGoto action_11
action_127 (14) = happyGoto action_12
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (26) = happyShift action_13
action_128 (29) = happyShift action_14
action_128 (30) = happyShift action_15
action_128 (33) = happyShift action_16
action_128 (38) = happyShift action_17
action_128 (40) = happyShift action_18
action_128 (47) = happyShift action_19
action_128 (51) = happyShift action_20
action_128 (52) = happyShift action_21
action_128 (53) = happyShift action_22
action_128 (68) = happyShift action_23
action_128 (73) = happyShift action_24
action_128 (5) = happyGoto action_135
action_128 (6) = happyGoto action_6
action_128 (7) = happyGoto action_7
action_128 (8) = happyGoto action_8
action_128 (9) = happyGoto action_9
action_128 (10) = happyGoto action_10
action_128 (11) = happyGoto action_11
action_128 (14) = happyGoto action_12
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (67) = happyShift action_46
action_129 (18) = happyGoto action_134
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (26) = happyShift action_13
action_130 (29) = happyShift action_14
action_130 (30) = happyShift action_15
action_130 (33) = happyShift action_16
action_130 (38) = happyShift action_17
action_130 (40) = happyShift action_18
action_130 (47) = happyShift action_19
action_130 (51) = happyShift action_20
action_130 (52) = happyShift action_21
action_130 (53) = happyShift action_22
action_130 (68) = happyShift action_23
action_130 (73) = happyShift action_24
action_130 (5) = happyGoto action_133
action_130 (6) = happyGoto action_6
action_130 (7) = happyGoto action_7
action_130 (8) = happyGoto action_8
action_130 (9) = happyGoto action_9
action_130 (10) = happyGoto action_10
action_130 (11) = happyGoto action_11
action_130 (14) = happyGoto action_12
action_130 _ = happyFail (happyExpListPerState 130)

action_131 _ = happyReduce_33

action_132 _ = happyReduce_1

action_133 _ = happyReduce_25

action_134 (55) = happyShift action_144
action_134 _ = happyFail (happyExpListPerState 134)

action_135 _ = happyReduce_26

action_136 _ = happyReduce_27

action_137 _ = happyReduce_28

action_138 _ = happyReduce_61

action_139 (36) = happyShift action_123
action_139 (37) = happyShift action_124
action_139 _ = happyReduce_41

action_140 (36) = happyShift action_123
action_140 (37) = happyShift action_124
action_140 _ = happyReduce_40

action_141 _ = happyReduce_44

action_142 _ = happyReduce_43

action_143 _ = happyReduce_63

action_144 (43) = happyShift action_145
action_144 _ = happyFail (happyExpListPerState 144)

action_145 (65) = happyShift action_146
action_145 _ = happyFail (happyExpListPerState 145)

action_146 (67) = happyShift action_46
action_146 (18) = happyGoto action_147
action_146 _ = happyFail (happyExpListPerState 146)

action_147 _ = happyReduce_30

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Return happy_var_2
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyTerminal (TokenFilename _ happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Read happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Function happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (Select happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (Insert happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (Delete happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (Union happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (Join happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (Format happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	_
	 =  HappyAbsSyn7
		 (SelectAll happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (SelectCol happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 5 7 happyReduction_15
happyReduction_15 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn21  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectAllWhere happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 5 7 happyReduction_16
happyReduction_16 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn21  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectColWhere happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  8 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (DeleteAll happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (DeleteCol happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 8 happyReduction_19
happyReduction_19 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (DeleteAllWhere happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 9 happyReduction_20
happyReduction_20 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (InsertValues happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 5 9 happyReduction_21
happyReduction_21 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyTerminal (TokenStr _ happy_var_4)) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (InsertColumn happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (UnionUnique happy_var_2 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 4 10 happyReduction_23
happyReduction_23 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (UnionAll happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_3  11 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (JoinStandard happy_var_2 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 6 11 happyReduction_25
happyReduction_25 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinInner happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 6 11 happyReduction_26
happyReduction_26 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinLeft happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 6 11 happyReduction_27
happyReduction_27 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinRight happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 6 11 happyReduction_28
happyReduction_28 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinOuter happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 4 11 happyReduction_29
happyReduction_29 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinFull happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 7 12 happyReduction_30
happyReduction_30 ((HappyAbsSyn18  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (TableComparison happy_var_3 happy_var_7
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_3  13 happyReduction_31
happyReduction_31 (HappyAbsSyn18  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn13
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 4 14 happyReduction_32
happyReduction_32 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 5 14 happyReduction_33
happyReduction_33 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (OrderByCol happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  14 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  14 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  14 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Last happy_var_2 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn15
		 (Asc
	)

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn15
		 (Desc
	)

happyReduce_39 = happySpecReduce_2  16 happyReduction_39
happyReduction_39 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (And happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Or happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  16 happyReduction_42
happyReduction_42 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Comparison happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  17 happyReduction_43
happyReduction_43 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  17 happyReduction_44
happyReduction_44 (HappyAbsSyn18  happy_var_3)
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  18 happyReduction_45
happyReduction_45 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  19 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn19
		 (Eq
	)

happyReduce_47 = happySpecReduce_1  19 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn19
		 (LessThan
	)

happyReduce_48 = happySpecReduce_1  19 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn19
		 (GreaterThan
	)

happyReduce_49 = happySpecReduce_1  19 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn19
		 (LessThanEq
	)

happyReduce_50 = happySpecReduce_1  19 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn19
		 (GreaterThanEq
	)

happyReduce_51 = happySpecReduce_1  19 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn19
		 (NotEq
	)

happyReduce_52 = happySpecReduce_2  20 happyReduction_52
happyReduction_52 _
	_
	 =  HappyAbsSyn20
		 ([]
	)

happyReduce_53 = happySpecReduce_3  20 happyReduction_53
happyReduction_53 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_2  21 happyReduction_54
happyReduction_54 _
	_
	 =  HappyAbsSyn21
		 ([]
	)

happyReduce_55 = happySpecReduce_3  21 happyReduction_55
happyReduction_55 _
	(HappyAbsSyn24  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (happy_var_2
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_2  22 happyReduction_56
happyReduction_56 _
	_
	 =  HappyAbsSyn22
		 ([]
	)

happyReduce_57 = happySpecReduce_3  22 happyReduction_57
happyReduction_57 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (happy_var_2
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  23 happyReduction_58
happyReduction_58 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1]
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  23 happyReduction_59
happyReduction_59 (HappyAbsSyn23  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  24 happyReduction_60
happyReduction_60 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1]
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  24 happyReduction_61
happyReduction_61 (HappyAbsSyn24  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  25 happyReduction_62
happyReduction_62 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn25
		 ([happy_var_1]
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  25 happyReduction_63
happyReduction_63 (HappyAbsSyn25  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn25
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 74 74 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenRead _ -> cont 26;
	TokenLet _ -> cont 27;
	TokenReturn _ -> cont 28;
	TokenSelect _ -> cont 29;
	TokenInsert _ -> cont 30;
	TokenValues _ -> cont 31;
	TokenColumn _ -> cont 32;
	TokenDelete _ -> cont 33;
	TokenWhere _ -> cont 34;
	TokenNot _ -> cont 35;
	TokenAnd _ -> cont 36;
	TokenOr _ -> cont 37;
	TokenUnion _ -> cont 38;
	TokenAll _ -> cont 39;
	TokenJoin _ -> cont 40;
	TokenInner _ -> cont 41;
	TokenLeft _ -> cont 42;
	TokenRight _ -> cont 43;
	TokenOuter _ -> cont 44;
	TokenFull _ -> cont 45;
	TokenOn _ -> cont 46;
	TokenOrder _ -> cont 47;
	TokenBy _ -> cont 48;
	TokenAsc _ -> cont 49;
	TokenDesc _ -> cont 50;
	TokenLimit _ -> cont 51;
	TokenOffset _ -> cont 52;
	TokenLast _ -> cont 53;
	TokenAssign _ -> cont 54;
	TokenEq _ -> cont 55;
	TokenLessThan _ -> cont 56;
	TokenGreaterThan _ -> cont 57;
	TokenLessThanEq _ -> cont 58;
	TokenGreaterThanEq _ -> cont 59;
	TokenNotEq _ -> cont 60;
	TokenSep _ -> cont 61;
	TokenLSquare _ -> cont 62;
	TokenRSquare _ -> cont 63;
	TokenComma _ -> cont 64;
	TokenDot _ -> cont 65;
	TokenAst _ -> cont 66;
	TokenAt _ -> cont 67;
	TokenLParen _ -> cont 68;
	TokenRParen _ -> cont 69;
	TokenInt  _ happy_dollar_dollar -> cont 70;
	TokenFilename _ happy_dollar_dollar -> cont 71;
	TokenStr _ happy_dollar_dollar -> cont 72;
	TokenVar _ happy_dollar_dollar -> cont 73;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 74 tk tks = happyError' (tks, explist)
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

data JoinFunction = JoinStandard TableType TableType
                  | JoinInner TableComparison TableType TableType 
                  | JoinLeft TableComparison TableType TableType 
                  | JoinRight TableComparison TableType TableType 
                  | JoinOuter TableComparison TableType TableType 
                  | JoinFull TableType TableType
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

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
happyExpList = Happy_Data_Array.listArray (0,480) ([0,3072,0,0,0,0,8,0,0,0,0,0,0,512,0,0,0,0,0,8192,2579,226,2112,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,17408,0,0,32,0,256,0,12800,8355,4110,132,0,49764,7233,2048,1,0,15360,0,0,0,0,512,0,0,0,0,0,256,0,0,0,0,2,0,0,0,1024,0,39168,4176,7,66,0,0,0,0,0,0,0,32,0,0,33992,14466,4096,2,0,0,0,64,0,4896,57866,16384,8,16384,5158,452,4224,0,19584,34856,3,33,0,0,192,8,0,0,4096,0,0,0,0,32,0,0,0,16384,0,0,0,0,128,0,0,8192,2579,226,2112,0,9792,50196,32769,16,0,0,0,0,0,39168,4176,7,66,0,0,0,16,0,0,0,16384,4,0,0,0,16384,0,0,0,32768,0,0,0,0,0,1,16384,5222,452,4224,0,52352,34856,3,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,32768,10316,904,8448,0,0,0,4096,32,0,0,0,16384,0,0,0,32768,0,0,0,0,128,0,0,0,0,0,0,4896,57866,16384,8,0,128,0,68,0,0,0,0,0,0,20633,1808,16896,0,0,0,0,0,0,0,4,0,0,0,2048,0,0,0,0,16,0,0,0,8192,0,0,0,9792,50196,32769,16,0,0,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,768,0,0,0,0,20633,1808,16896,0,0,0,0,0,0,16996,7233,2048,1,0,0,0,2,0,2448,28933,8192,4,8192,2579,226,2112,0,9792,50196,32769,16,0,0,0,0,0,0,12,8192,0,0,0,0,0,0,0,0,4032,0,0,0,0,128,0,0,32,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,12800,8353,14,132,0,0,0,64,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,9792,50196,32769,16,32768,10316,904,8448,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8448,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,128,0,0,2,0,1,0,1024,0,512,0,25600,16706,28,264,0,33992,14466,4096,2,36864,1289,113,1056,0,0,0,8192,0,16384,5158,452,4224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,2048,0,0,0,0,64,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectFunction","DeleteFunction","InsertFunction","UnionFunction","JoinFunction","TableComparison","TableColumnRef","FormatFunction","Direction","Predicate","Comparison","ColumnRef","ComparisonOperator","List__ColumnRef__","List__Predicate__","List__Str__","ListCont__ColumnRef__","ListCont__Predicate__","ListCont__Str__","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Union","All","Join","Inner","Left","Right","Full","On","Order","By","Asc","Desc","Limit","Offset","Last","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'.'","'*'","\"@\"","'('","')'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 73
        bit_end = (st Prelude.+ 1) Prelude.* 73
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..72]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (27) = happyShift action_2
action_0 (28) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (27) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (72) = happyShift action_25
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (73) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (26) = happyShift action_13
action_4 (29) = happyShift action_14
action_4 (30) = happyShift action_15
action_4 (33) = happyShift action_16
action_4 (38) = happyShift action_17
action_4 (40) = happyShift action_18
action_4 (46) = happyShift action_19
action_4 (50) = happyShift action_20
action_4 (51) = happyShift action_21
action_4 (52) = happyShift action_22
action_4 (67) = happyShift action_23
action_4 (72) = happyShift action_24
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (7) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 (9) = happyGoto action_9
action_4 (10) = happyGoto action_10
action_4 (11) = happyGoto action_11
action_4 (14) = happyGoto action_12
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (60) = happyShift action_48
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_7

action_8 _ = happyReduce_9

action_9 _ = happyReduce_8

action_10 _ = happyReduce_10

action_11 _ = happyReduce_11

action_12 _ = happyReduce_12

action_13 (70) = happyShift action_47
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (61) = happyShift action_41
action_14 (65) = happyShift action_46
action_14 (20) = happyGoto action_45
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (31) = happyShift action_43
action_15 (66) = happyShift action_44
action_15 (18) = happyGoto action_42
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_13
action_16 (29) = happyShift action_14
action_16 (30) = happyShift action_15
action_16 (33) = happyShift action_16
action_16 (34) = happyShift action_40
action_16 (38) = happyShift action_17
action_16 (40) = happyShift action_18
action_16 (46) = happyShift action_19
action_16 (50) = happyShift action_20
action_16 (51) = happyShift action_21
action_16 (52) = happyShift action_22
action_16 (61) = happyShift action_41
action_16 (67) = happyShift action_23
action_16 (72) = happyShift action_24
action_16 (5) = happyGoto action_38
action_16 (6) = happyGoto action_6
action_16 (7) = happyGoto action_7
action_16 (8) = happyGoto action_8
action_16 (9) = happyGoto action_9
action_16 (10) = happyGoto action_10
action_16 (11) = happyGoto action_11
action_16 (14) = happyGoto action_12
action_16 (20) = happyGoto action_39
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (26) = happyShift action_13
action_17 (29) = happyShift action_14
action_17 (30) = happyShift action_15
action_17 (33) = happyShift action_16
action_17 (38) = happyShift action_17
action_17 (39) = happyShift action_37
action_17 (40) = happyShift action_18
action_17 (46) = happyShift action_19
action_17 (50) = happyShift action_20
action_17 (51) = happyShift action_21
action_17 (52) = happyShift action_22
action_17 (67) = happyShift action_23
action_17 (72) = happyShift action_24
action_17 (5) = happyGoto action_36
action_17 (6) = happyGoto action_6
action_17 (7) = happyGoto action_7
action_17 (8) = happyGoto action_8
action_17 (9) = happyGoto action_9
action_17 (10) = happyGoto action_10
action_17 (11) = happyGoto action_11
action_17 (14) = happyGoto action_12
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (41) = happyShift action_32
action_18 (42) = happyShift action_33
action_18 (43) = happyShift action_34
action_18 (44) = happyShift action_35
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (47) = happyShift action_31
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (69) = happyShift action_30
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (69) = happyShift action_29
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (69) = happyShift action_28
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (26) = happyShift action_13
action_23 (29) = happyShift action_14
action_23 (30) = happyShift action_15
action_23 (33) = happyShift action_16
action_23 (38) = happyShift action_17
action_23 (40) = happyShift action_18
action_23 (46) = happyShift action_19
action_23 (50) = happyShift action_20
action_23 (51) = happyShift action_21
action_23 (52) = happyShift action_22
action_23 (67) = happyShift action_23
action_23 (72) = happyShift action_24
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

action_25 (53) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (26) = happyShift action_13
action_26 (29) = happyShift action_14
action_26 (30) = happyShift action_15
action_26 (33) = happyShift action_16
action_26 (38) = happyShift action_17
action_26 (40) = happyShift action_18
action_26 (46) = happyShift action_19
action_26 (50) = happyShift action_20
action_26 (51) = happyShift action_21
action_26 (52) = happyShift action_22
action_26 (67) = happyShift action_23
action_26 (72) = happyShift action_24
action_26 (5) = happyGoto action_77
action_26 (6) = happyGoto action_6
action_26 (7) = happyGoto action_7
action_26 (8) = happyGoto action_8
action_26 (9) = happyGoto action_9
action_26 (10) = happyGoto action_10
action_26 (11) = happyGoto action_11
action_26 (14) = happyGoto action_12
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (68) = happyShift action_76
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (26) = happyShift action_13
action_28 (29) = happyShift action_14
action_28 (30) = happyShift action_15
action_28 (33) = happyShift action_16
action_28 (38) = happyShift action_17
action_28 (40) = happyShift action_18
action_28 (46) = happyShift action_19
action_28 (50) = happyShift action_20
action_28 (51) = happyShift action_21
action_28 (52) = happyShift action_22
action_28 (67) = happyShift action_23
action_28 (72) = happyShift action_24
action_28 (5) = happyGoto action_75
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
action_29 (46) = happyShift action_19
action_29 (50) = happyShift action_20
action_29 (51) = happyShift action_21
action_29 (52) = happyShift action_22
action_29 (67) = happyShift action_23
action_29 (72) = happyShift action_24
action_29 (5) = happyGoto action_74
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
action_30 (46) = happyShift action_19
action_30 (50) = happyShift action_20
action_30 (51) = happyShift action_21
action_30 (52) = happyShift action_22
action_30 (67) = happyShift action_23
action_30 (72) = happyShift action_24
action_30 (5) = happyGoto action_73
action_30 (6) = happyGoto action_6
action_30 (7) = happyGoto action_7
action_30 (8) = happyGoto action_8
action_30 (9) = happyGoto action_9
action_30 (10) = happyGoto action_10
action_30 (11) = happyGoto action_11
action_30 (14) = happyGoto action_12
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (48) = happyShift action_71
action_31 (49) = happyShift action_72
action_31 (61) = happyShift action_41
action_31 (15) = happyGoto action_69
action_31 (20) = happyGoto action_70
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (45) = happyShift action_68
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (45) = happyShift action_67
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (45) = happyShift action_66
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (45) = happyShift action_65
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (26) = happyShift action_13
action_36 (29) = happyShift action_14
action_36 (30) = happyShift action_15
action_36 (33) = happyShift action_16
action_36 (38) = happyShift action_17
action_36 (40) = happyShift action_18
action_36 (46) = happyShift action_19
action_36 (50) = happyShift action_20
action_36 (51) = happyShift action_21
action_36 (52) = happyShift action_22
action_36 (67) = happyShift action_23
action_36 (72) = happyShift action_24
action_36 (5) = happyGoto action_64
action_36 (6) = happyGoto action_6
action_36 (7) = happyGoto action_7
action_36 (8) = happyGoto action_8
action_36 (9) = happyGoto action_9
action_36 (10) = happyGoto action_10
action_36 (11) = happyGoto action_11
action_36 (14) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (26) = happyShift action_13
action_37 (29) = happyShift action_14
action_37 (30) = happyShift action_15
action_37 (33) = happyShift action_16
action_37 (38) = happyShift action_17
action_37 (40) = happyShift action_18
action_37 (46) = happyShift action_19
action_37 (50) = happyShift action_20
action_37 (51) = happyShift action_21
action_37 (52) = happyShift action_22
action_37 (67) = happyShift action_23
action_37 (72) = happyShift action_24
action_37 (5) = happyGoto action_63
action_37 (6) = happyGoto action_6
action_37 (7) = happyGoto action_7
action_37 (8) = happyGoto action_8
action_37 (9) = happyGoto action_9
action_37 (10) = happyGoto action_10
action_37 (11) = happyGoto action_11
action_37 (14) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_17

action_39 (26) = happyShift action_13
action_39 (29) = happyShift action_14
action_39 (30) = happyShift action_15
action_39 (33) = happyShift action_16
action_39 (38) = happyShift action_17
action_39 (40) = happyShift action_18
action_39 (46) = happyShift action_19
action_39 (50) = happyShift action_20
action_39 (51) = happyShift action_21
action_39 (52) = happyShift action_22
action_39 (67) = happyShift action_23
action_39 (72) = happyShift action_24
action_39 (5) = happyGoto action_62
action_39 (6) = happyGoto action_6
action_39 (7) = happyGoto action_7
action_39 (8) = happyGoto action_8
action_39 (9) = happyGoto action_9
action_39 (10) = happyGoto action_10
action_39 (11) = happyGoto action_11
action_39 (14) = happyGoto action_12
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (61) = happyShift action_61
action_40 (21) = happyGoto action_60
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (62) = happyShift action_59
action_41 (66) = happyShift action_44
action_41 (18) = happyGoto action_57
action_41 (23) = happyGoto action_58
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (69) = happyShift action_56
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (61) = happyShift action_55
action_43 (22) = happyGoto action_54
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (69) = happyShift action_53
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (26) = happyShift action_13
action_45 (29) = happyShift action_14
action_45 (30) = happyShift action_15
action_45 (33) = happyShift action_16
action_45 (34) = happyShift action_52
action_45 (38) = happyShift action_17
action_45 (40) = happyShift action_18
action_45 (46) = happyShift action_19
action_45 (50) = happyShift action_20
action_45 (51) = happyShift action_21
action_45 (52) = happyShift action_22
action_45 (67) = happyShift action_23
action_45 (72) = happyShift action_24
action_45 (5) = happyGoto action_51
action_45 (6) = happyGoto action_6
action_45 (7) = happyGoto action_7
action_45 (8) = happyGoto action_8
action_45 (9) = happyGoto action_9
action_45 (10) = happyGoto action_10
action_45 (11) = happyGoto action_11
action_45 (14) = happyGoto action_12
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (26) = happyShift action_13
action_46 (29) = happyShift action_14
action_46 (30) = happyShift action_15
action_46 (33) = happyShift action_16
action_46 (34) = happyShift action_50
action_46 (38) = happyShift action_17
action_46 (40) = happyShift action_18
action_46 (46) = happyShift action_19
action_46 (50) = happyShift action_20
action_46 (51) = happyShift action_21
action_46 (52) = happyShift action_22
action_46 (67) = happyShift action_23
action_46 (72) = happyShift action_24
action_46 (5) = happyGoto action_49
action_46 (6) = happyGoto action_6
action_46 (7) = happyGoto action_7
action_46 (8) = happyGoto action_8
action_46 (9) = happyGoto action_9
action_46 (10) = happyGoto action_10
action_46 (11) = happyGoto action_11
action_46 (14) = happyGoto action_12
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_3

action_48 _ = happyReduce_2

action_49 _ = happyReduce_13

action_50 (61) = happyShift action_61
action_50 (21) = happyGoto action_102
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_14

action_52 (61) = happyShift action_61
action_52 (21) = happyGoto action_101
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_43

action_54 (26) = happyShift action_13
action_54 (29) = happyShift action_14
action_54 (30) = happyShift action_15
action_54 (33) = happyShift action_16
action_54 (38) = happyShift action_17
action_54 (40) = happyShift action_18
action_54 (46) = happyShift action_19
action_54 (50) = happyShift action_20
action_54 (51) = happyShift action_21
action_54 (52) = happyShift action_22
action_54 (67) = happyShift action_23
action_54 (72) = happyShift action_24
action_54 (5) = happyGoto action_100
action_54 (6) = happyGoto action_6
action_54 (7) = happyGoto action_7
action_54 (8) = happyGoto action_8
action_54 (9) = happyGoto action_9
action_54 (10) = happyGoto action_10
action_54 (11) = happyGoto action_11
action_54 (14) = happyGoto action_12
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (62) = happyShift action_98
action_55 (71) = happyShift action_99
action_55 (25) = happyGoto action_97
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (71) = happyShift action_96
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (63) = happyShift action_95
action_57 _ = happyReduce_56

action_58 (62) = happyShift action_94
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_50

action_60 (26) = happyShift action_13
action_60 (29) = happyShift action_14
action_60 (30) = happyShift action_15
action_60 (33) = happyShift action_16
action_60 (38) = happyShift action_17
action_60 (40) = happyShift action_18
action_60 (46) = happyShift action_19
action_60 (50) = happyShift action_20
action_60 (51) = happyShift action_21
action_60 (52) = happyShift action_22
action_60 (67) = happyShift action_23
action_60 (72) = happyShift action_24
action_60 (5) = happyGoto action_93
action_60 (6) = happyGoto action_6
action_60 (7) = happyGoto action_7
action_60 (8) = happyGoto action_8
action_60 (9) = happyGoto action_9
action_60 (10) = happyGoto action_10
action_60 (11) = happyGoto action_11
action_60 (14) = happyGoto action_12
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (35) = happyShift action_91
action_61 (62) = happyShift action_92
action_61 (66) = happyShift action_44
action_61 (16) = happyGoto action_87
action_61 (17) = happyGoto action_88
action_61 (18) = happyGoto action_89
action_61 (24) = happyGoto action_90
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_18

action_63 (26) = happyShift action_13
action_63 (29) = happyShift action_14
action_63 (30) = happyShift action_15
action_63 (33) = happyShift action_16
action_63 (38) = happyShift action_17
action_63 (40) = happyShift action_18
action_63 (46) = happyShift action_19
action_63 (50) = happyShift action_20
action_63 (51) = happyShift action_21
action_63 (52) = happyShift action_22
action_63 (67) = happyShift action_23
action_63 (72) = happyShift action_24
action_63 (5) = happyGoto action_86
action_63 (6) = happyGoto action_6
action_63 (7) = happyGoto action_7
action_63 (8) = happyGoto action_8
action_63 (9) = happyGoto action_9
action_63 (10) = happyGoto action_10
action_63 (11) = happyGoto action_11
action_63 (14) = happyGoto action_12
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_22

action_65 (42) = happyShift action_82
action_65 (12) = happyGoto action_85
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (42) = happyShift action_82
action_66 (12) = happyGoto action_84
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (42) = happyShift action_82
action_67 (12) = happyGoto action_83
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (42) = happyShift action_82
action_68 (12) = happyGoto action_81
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (26) = happyShift action_13
action_69 (29) = happyShift action_14
action_69 (30) = happyShift action_15
action_69 (33) = happyShift action_16
action_69 (38) = happyShift action_17
action_69 (40) = happyShift action_18
action_69 (46) = happyShift action_19
action_69 (50) = happyShift action_20
action_69 (51) = happyShift action_21
action_69 (52) = happyShift action_22
action_69 (67) = happyShift action_23
action_69 (72) = happyShift action_24
action_69 (5) = happyGoto action_80
action_69 (6) = happyGoto action_6
action_69 (7) = happyGoto action_7
action_69 (8) = happyGoto action_8
action_69 (9) = happyGoto action_9
action_69 (10) = happyGoto action_10
action_69 (11) = happyGoto action_11
action_69 (14) = happyGoto action_12
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (48) = happyShift action_71
action_70 (49) = happyShift action_72
action_70 (15) = happyGoto action_79
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_35

action_72 _ = happyReduce_36

action_73 _ = happyReduce_32

action_74 _ = happyReduce_33

action_75 _ = happyReduce_34

action_76 _ = happyReduce_6

action_77 (60) = happyShift action_78
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (27) = happyShift action_2
action_78 (28) = happyShift action_4
action_78 (4) = happyGoto action_127
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (26) = happyShift action_13
action_79 (29) = happyShift action_14
action_79 (30) = happyShift action_15
action_79 (33) = happyShift action_16
action_79 (38) = happyShift action_17
action_79 (40) = happyShift action_18
action_79 (46) = happyShift action_19
action_79 (50) = happyShift action_20
action_79 (51) = happyShift action_21
action_79 (52) = happyShift action_22
action_79 (67) = happyShift action_23
action_79 (72) = happyShift action_24
action_79 (5) = happyGoto action_126
action_79 (6) = happyGoto action_6
action_79 (7) = happyGoto action_7
action_79 (8) = happyGoto action_8
action_79 (9) = happyGoto action_9
action_79 (10) = happyGoto action_10
action_79 (11) = happyGoto action_11
action_79 (14) = happyGoto action_12
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_30

action_81 (26) = happyShift action_13
action_81 (29) = happyShift action_14
action_81 (30) = happyShift action_15
action_81 (33) = happyShift action_16
action_81 (38) = happyShift action_17
action_81 (40) = happyShift action_18
action_81 (46) = happyShift action_19
action_81 (50) = happyShift action_20
action_81 (51) = happyShift action_21
action_81 (52) = happyShift action_22
action_81 (67) = happyShift action_23
action_81 (72) = happyShift action_24
action_81 (5) = happyGoto action_125
action_81 (6) = happyGoto action_6
action_81 (7) = happyGoto action_7
action_81 (8) = happyGoto action_8
action_81 (9) = happyGoto action_9
action_81 (10) = happyGoto action_10
action_81 (11) = happyGoto action_11
action_81 (14) = happyGoto action_12
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (64) = happyShift action_124
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (26) = happyShift action_13
action_83 (29) = happyShift action_14
action_83 (30) = happyShift action_15
action_83 (33) = happyShift action_16
action_83 (38) = happyShift action_17
action_83 (40) = happyShift action_18
action_83 (46) = happyShift action_19
action_83 (50) = happyShift action_20
action_83 (51) = happyShift action_21
action_83 (52) = happyShift action_22
action_83 (67) = happyShift action_23
action_83 (72) = happyShift action_24
action_83 (5) = happyGoto action_123
action_83 (6) = happyGoto action_6
action_83 (7) = happyGoto action_7
action_83 (8) = happyGoto action_8
action_83 (9) = happyGoto action_9
action_83 (10) = happyGoto action_10
action_83 (11) = happyGoto action_11
action_83 (14) = happyGoto action_12
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (26) = happyShift action_13
action_84 (29) = happyShift action_14
action_84 (30) = happyShift action_15
action_84 (33) = happyShift action_16
action_84 (38) = happyShift action_17
action_84 (40) = happyShift action_18
action_84 (46) = happyShift action_19
action_84 (50) = happyShift action_20
action_84 (51) = happyShift action_21
action_84 (52) = happyShift action_22
action_84 (67) = happyShift action_23
action_84 (72) = happyShift action_24
action_84 (5) = happyGoto action_122
action_84 (6) = happyGoto action_6
action_84 (7) = happyGoto action_7
action_84 (8) = happyGoto action_8
action_84 (9) = happyGoto action_9
action_84 (10) = happyGoto action_10
action_84 (11) = happyGoto action_11
action_84 (14) = happyGoto action_12
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (26) = happyShift action_13
action_85 (29) = happyShift action_14
action_85 (30) = happyShift action_15
action_85 (33) = happyShift action_16
action_85 (38) = happyShift action_17
action_85 (40) = happyShift action_18
action_85 (46) = happyShift action_19
action_85 (50) = happyShift action_20
action_85 (51) = happyShift action_21
action_85 (52) = happyShift action_22
action_85 (67) = happyShift action_23
action_85 (72) = happyShift action_24
action_85 (5) = happyGoto action_121
action_85 (6) = happyGoto action_6
action_85 (7) = happyGoto action_7
action_85 (8) = happyGoto action_8
action_85 (9) = happyGoto action_9
action_85 (10) = happyGoto action_10
action_85 (11) = happyGoto action_11
action_85 (14) = happyGoto action_12
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_23

action_87 (36) = happyShift action_118
action_87 (37) = happyShift action_119
action_87 (63) = happyShift action_120
action_87 _ = happyReduce_58

action_88 _ = happyReduce_40

action_89 (54) = happyShift action_112
action_89 (55) = happyShift action_113
action_89 (56) = happyShift action_114
action_89 (57) = happyShift action_115
action_89 (58) = happyShift action_116
action_89 (59) = happyShift action_117
action_89 (19) = happyGoto action_111
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (62) = happyShift action_110
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (35) = happyShift action_91
action_91 (66) = happyShift action_44
action_91 (16) = happyGoto action_109
action_91 (17) = happyGoto action_88
action_91 (18) = happyGoto action_89
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_52

action_93 _ = happyReduce_19

action_94 _ = happyReduce_51

action_95 (66) = happyShift action_44
action_95 (18) = happyGoto action_57
action_95 (23) = happyGoto action_108
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (26) = happyShift action_13
action_96 (29) = happyShift action_14
action_96 (30) = happyShift action_15
action_96 (33) = happyShift action_16
action_96 (38) = happyShift action_17
action_96 (40) = happyShift action_18
action_96 (46) = happyShift action_19
action_96 (50) = happyShift action_20
action_96 (51) = happyShift action_21
action_96 (52) = happyShift action_22
action_96 (67) = happyShift action_23
action_96 (72) = happyShift action_24
action_96 (5) = happyGoto action_107
action_96 (6) = happyGoto action_6
action_96 (7) = happyGoto action_7
action_96 (8) = happyGoto action_8
action_96 (9) = happyGoto action_9
action_96 (10) = happyGoto action_10
action_96 (11) = happyGoto action_11
action_96 (14) = happyGoto action_12
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (62) = happyShift action_106
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_54

action_99 (63) = happyShift action_105
action_99 _ = happyReduce_60

action_100 _ = happyReduce_20

action_101 (26) = happyShift action_13
action_101 (29) = happyShift action_14
action_101 (30) = happyShift action_15
action_101 (33) = happyShift action_16
action_101 (38) = happyShift action_17
action_101 (40) = happyShift action_18
action_101 (46) = happyShift action_19
action_101 (50) = happyShift action_20
action_101 (51) = happyShift action_21
action_101 (52) = happyShift action_22
action_101 (67) = happyShift action_23
action_101 (72) = happyShift action_24
action_101 (5) = happyGoto action_104
action_101 (6) = happyGoto action_6
action_101 (7) = happyGoto action_7
action_101 (8) = happyGoto action_8
action_101 (9) = happyGoto action_9
action_101 (10) = happyGoto action_10
action_101 (11) = happyGoto action_11
action_101 (14) = happyGoto action_12
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (26) = happyShift action_13
action_102 (29) = happyShift action_14
action_102 (30) = happyShift action_15
action_102 (33) = happyShift action_16
action_102 (38) = happyShift action_17
action_102 (40) = happyShift action_18
action_102 (46) = happyShift action_19
action_102 (50) = happyShift action_20
action_102 (51) = happyShift action_21
action_102 (52) = happyShift action_22
action_102 (67) = happyShift action_23
action_102 (72) = happyShift action_24
action_102 (5) = happyGoto action_103
action_102 (6) = happyGoto action_6
action_102 (7) = happyGoto action_7
action_102 (8) = happyGoto action_8
action_102 (9) = happyGoto action_9
action_102 (10) = happyGoto action_10
action_102 (11) = happyGoto action_11
action_102 (14) = happyGoto action_12
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_15

action_104 _ = happyReduce_16

action_105 (71) = happyShift action_99
action_105 (25) = happyGoto action_138
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_55

action_107 _ = happyReduce_21

action_108 _ = happyReduce_57

action_109 (36) = happyShift action_118
action_109 (37) = happyShift action_119
action_109 _ = happyReduce_37

action_110 _ = happyReduce_53

action_111 (66) = happyShift action_44
action_111 (71) = happyShift action_137
action_111 (18) = happyGoto action_136
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_44

action_113 _ = happyReduce_45

action_114 _ = happyReduce_46

action_115 _ = happyReduce_47

action_116 _ = happyReduce_48

action_117 _ = happyReduce_49

action_118 (35) = happyShift action_91
action_118 (66) = happyShift action_44
action_118 (16) = happyGoto action_135
action_118 (17) = happyGoto action_88
action_118 (18) = happyGoto action_89
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (35) = happyShift action_91
action_119 (66) = happyShift action_44
action_119 (16) = happyGoto action_134
action_119 (17) = happyGoto action_88
action_119 (18) = happyGoto action_89
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (35) = happyShift action_91
action_120 (66) = happyShift action_44
action_120 (16) = happyGoto action_87
action_120 (17) = happyGoto action_88
action_120 (18) = happyGoto action_89
action_120 (24) = happyGoto action_133
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (26) = happyShift action_13
action_121 (29) = happyShift action_14
action_121 (30) = happyShift action_15
action_121 (33) = happyShift action_16
action_121 (38) = happyShift action_17
action_121 (40) = happyShift action_18
action_121 (46) = happyShift action_19
action_121 (50) = happyShift action_20
action_121 (51) = happyShift action_21
action_121 (52) = happyShift action_22
action_121 (67) = happyShift action_23
action_121 (72) = happyShift action_24
action_121 (5) = happyGoto action_132
action_121 (6) = happyGoto action_6
action_121 (7) = happyGoto action_7
action_121 (8) = happyGoto action_8
action_121 (9) = happyGoto action_9
action_121 (10) = happyGoto action_10
action_121 (11) = happyGoto action_11
action_121 (14) = happyGoto action_12
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (26) = happyShift action_13
action_122 (29) = happyShift action_14
action_122 (30) = happyShift action_15
action_122 (33) = happyShift action_16
action_122 (38) = happyShift action_17
action_122 (40) = happyShift action_18
action_122 (46) = happyShift action_19
action_122 (50) = happyShift action_20
action_122 (51) = happyShift action_21
action_122 (52) = happyShift action_22
action_122 (67) = happyShift action_23
action_122 (72) = happyShift action_24
action_122 (5) = happyGoto action_131
action_122 (6) = happyGoto action_6
action_122 (7) = happyGoto action_7
action_122 (8) = happyGoto action_8
action_122 (9) = happyGoto action_9
action_122 (10) = happyGoto action_10
action_122 (11) = happyGoto action_11
action_122 (14) = happyGoto action_12
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (26) = happyShift action_13
action_123 (29) = happyShift action_14
action_123 (30) = happyShift action_15
action_123 (33) = happyShift action_16
action_123 (38) = happyShift action_17
action_123 (40) = happyShift action_18
action_123 (46) = happyShift action_19
action_123 (50) = happyShift action_20
action_123 (51) = happyShift action_21
action_123 (52) = happyShift action_22
action_123 (67) = happyShift action_23
action_123 (72) = happyShift action_24
action_123 (5) = happyGoto action_130
action_123 (6) = happyGoto action_6
action_123 (7) = happyGoto action_7
action_123 (8) = happyGoto action_8
action_123 (9) = happyGoto action_9
action_123 (10) = happyGoto action_10
action_123 (11) = happyGoto action_11
action_123 (14) = happyGoto action_12
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (66) = happyShift action_44
action_124 (18) = happyGoto action_129
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (26) = happyShift action_13
action_125 (29) = happyShift action_14
action_125 (30) = happyShift action_15
action_125 (33) = happyShift action_16
action_125 (38) = happyShift action_17
action_125 (40) = happyShift action_18
action_125 (46) = happyShift action_19
action_125 (50) = happyShift action_20
action_125 (51) = happyShift action_21
action_125 (52) = happyShift action_22
action_125 (67) = happyShift action_23
action_125 (72) = happyShift action_24
action_125 (5) = happyGoto action_128
action_125 (6) = happyGoto action_6
action_125 (7) = happyGoto action_7
action_125 (8) = happyGoto action_8
action_125 (9) = happyGoto action_9
action_125 (10) = happyGoto action_10
action_125 (11) = happyGoto action_11
action_125 (14) = happyGoto action_12
action_125 _ = happyFail (happyExpListPerState 125)

action_126 _ = happyReduce_31

action_127 _ = happyReduce_1

action_128 _ = happyReduce_24

action_129 (54) = happyShift action_139
action_129 _ = happyFail (happyExpListPerState 129)

action_130 _ = happyReduce_25

action_131 _ = happyReduce_26

action_132 _ = happyReduce_27

action_133 _ = happyReduce_59

action_134 (36) = happyShift action_118
action_134 (37) = happyShift action_119
action_134 _ = happyReduce_39

action_135 (36) = happyShift action_118
action_135 (37) = happyShift action_119
action_135 _ = happyReduce_38

action_136 _ = happyReduce_42

action_137 _ = happyReduce_41

action_138 _ = happyReduce_61

action_139 (43) = happyShift action_140
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (64) = happyShift action_141
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (66) = happyShift action_44
action_141 (18) = happyGoto action_142
action_141 _ = happyFail (happyExpListPerState 141)

action_142 _ = happyReduce_28

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

happyReduce_24 = happyReduce 6 11 happyReduction_24
happyReduction_24 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinInner happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 6 11 happyReduction_25
happyReduction_25 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinLeft happy_var_4 happy_var_5 happy_var_6
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
		 (JoinRight happy_var_4 happy_var_5 happy_var_6
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
		 (JoinFull happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 7 12 happyReduction_28
happyReduction_28 ((HappyAbsSyn18  happy_var_7) `HappyStk`
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

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 (HappyAbsSyn18  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn13
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 4 14 happyReduction_30
happyReduction_30 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 5 14 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (OrderByCol happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_3  14 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  14 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  14 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Last happy_var_2 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  15 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn15
		 (Asc
	)

happyReduce_36 = happySpecReduce_1  15 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn15
		 (Desc
	)

happyReduce_37 = happySpecReduce_2  16 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (And happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Or happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  16 happyReduction_40
happyReduction_40 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Comparison happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  17 happyReduction_41
happyReduction_41 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  17 happyReduction_42
happyReduction_42 (HappyAbsSyn18  happy_var_3)
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  18 happyReduction_43
happyReduction_43 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  19 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn19
		 (Eq
	)

happyReduce_45 = happySpecReduce_1  19 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn19
		 (LessThan
	)

happyReduce_46 = happySpecReduce_1  19 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn19
		 (GreaterThan
	)

happyReduce_47 = happySpecReduce_1  19 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn19
		 (LessThanEq
	)

happyReduce_48 = happySpecReduce_1  19 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn19
		 (GreaterThanEq
	)

happyReduce_49 = happySpecReduce_1  19 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn19
		 (NotEq
	)

happyReduce_50 = happySpecReduce_2  20 happyReduction_50
happyReduction_50 _
	_
	 =  HappyAbsSyn20
		 ([]
	)

happyReduce_51 = happySpecReduce_3  20 happyReduction_51
happyReduction_51 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_2  21 happyReduction_52
happyReduction_52 _
	_
	 =  HappyAbsSyn21
		 ([]
	)

happyReduce_53 = happySpecReduce_3  21 happyReduction_53
happyReduction_53 _
	(HappyAbsSyn24  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (happy_var_2
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_2  22 happyReduction_54
happyReduction_54 _
	_
	 =  HappyAbsSyn22
		 ([]
	)

happyReduce_55 = happySpecReduce_3  22 happyReduction_55
happyReduction_55 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (happy_var_2
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  23 happyReduction_56
happyReduction_56 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1]
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  23 happyReduction_57
happyReduction_57 (HappyAbsSyn23  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  24 happyReduction_58
happyReduction_58 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1]
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  24 happyReduction_59
happyReduction_59 (HappyAbsSyn24  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  25 happyReduction_60
happyReduction_60 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn25
		 ([happy_var_1]
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  25 happyReduction_61
happyReduction_61 (HappyAbsSyn25  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn25
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 73 73 notHappyAtAll (HappyState action) sts stk []

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
	TokenFull _ -> cont 44;
	TokenOn _ -> cont 45;
	TokenOrder _ -> cont 46;
	TokenBy _ -> cont 47;
	TokenAsc _ -> cont 48;
	TokenDesc _ -> cont 49;
	TokenLimit _ -> cont 50;
	TokenOffset _ -> cont 51;
	TokenLast _ -> cont 52;
	TokenAssign _ -> cont 53;
	TokenEq _ -> cont 54;
	TokenLessThan _ -> cont 55;
	TokenGreaterThan _ -> cont 56;
	TokenLessThanEq _ -> cont 57;
	TokenGreaterThanEq _ -> cont 58;
	TokenNotEq _ -> cont 59;
	TokenSep _ -> cont 60;
	TokenLSquare _ -> cont 61;
	TokenRSquare _ -> cont 62;
	TokenComma _ -> cont 63;
	TokenDot _ -> cont 64;
	TokenAst _ -> cont 65;
	TokenAt _ -> cont 66;
	TokenLParen _ -> cont 67;
	TokenRParen _ -> cont 68;
	TokenInt  _ happy_dollar_dollar -> cont 69;
	TokenFilename _ happy_dollar_dollar -> cont 70;
	TokenStr _ happy_dollar_dollar -> cont 71;
	TokenVar _ happy_dollar_dollar -> cont 72;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 73 tk tks = happyError' (tks, explist)
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

data JoinFunction = JoinInner TableComparison TableType TableType 
                  | JoinLeft TableComparison TableType TableType 
                  | JoinRight TableComparison TableType TableType 
                  | JoinFull TableComparison TableType TableType 
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

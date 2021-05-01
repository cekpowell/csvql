{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,342) ([0,384,0,0,0,64,0,0,0,0,0,2048,0,0,0,0,0,16996,113,528,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,576,0,8192,0,512,0,52352,3624,16912,0,9792,1820,8448,0,0,16,0,0,0,0,256,0,0,0,128,0,0,0,64,0,41266,56,264,0,0,0,0,0,0,16,0,16384,5158,7,33,0,0,0,1,36864,50441,16385,8,51200,57988,8192,4,25600,28994,4096,2,0,1536,64,0,39168,7248,33792,0,19584,3624,16896,0,0,0,0,0,4896,906,4224,0,0,0,2,0,0,0,18,0,0,0,64,0,0,16384,0,0,0,0,16,32768,10444,14,66,16384,5222,7,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,32,0,0,0,0,0,9792,1812,8448,0,0,0,2056,0,0,0,1024,0,0,0,4,0,0,0,1,0,0,0,0,0,20633,28,132,0,256,8192,1,0,0,0,0,8192,35347,32771,16,0,0,0,0,51200,57988,8192,4,0,3072,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,24,0,0,0,41266,56,264,0,0,0,0,0,0,0,0,0,768,8192,0,0,0,0,0,0,0,252,0,0,0,512,0,0,8,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,4896,906,4224,0,0,0,4,0,0,0,0,0,0,0,2,0,0,0,0,0,20633,28,132,32768,10316,14,66,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,1,0,128,32768,0,0,64,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectFunction","DeleteFunction","InsertFunction","UnionFunction","FormatFunction","Direction","Predicate","Comparison","ColumnRef","ComparisonOperator","List__ColumnRef__","List__Predicate__","List__Str__","ListCont__ColumnRef__","ListCont__Predicate__","ListCont__Str__","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Union","All","Order","By","Asc","Desc","Limit","Offset","Last","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'*'","\"@\"","'('","')'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 63
        bit_end = (st Prelude.+ 1) Prelude.* 63
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..62]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (24) = happyShift action_2
action_0 (25) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (24) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (62) = happyShift action_23
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (63) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (23) = happyShift action_12
action_4 (26) = happyShift action_13
action_4 (27) = happyShift action_14
action_4 (30) = happyShift action_15
action_4 (35) = happyShift action_16
action_4 (37) = happyShift action_17
action_4 (41) = happyShift action_18
action_4 (42) = happyShift action_19
action_4 (43) = happyShift action_20
action_4 (57) = happyShift action_21
action_4 (62) = happyShift action_22
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (7) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 (9) = happyGoto action_9
action_4 (10) = happyGoto action_10
action_4 (11) = happyGoto action_11
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (51) = happyShift action_42
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_7

action_8 _ = happyReduce_9

action_9 _ = happyReduce_8

action_10 _ = happyReduce_10

action_11 _ = happyReduce_11

action_12 (60) = happyShift action_41
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (52) = happyShift action_35
action_13 (55) = happyShift action_40
action_13 (17) = happyGoto action_39
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (28) = happyShift action_37
action_14 (56) = happyShift action_38
action_14 (15) = happyGoto action_36
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (23) = happyShift action_12
action_15 (26) = happyShift action_13
action_15 (27) = happyShift action_14
action_15 (30) = happyShift action_15
action_15 (31) = happyShift action_34
action_15 (35) = happyShift action_16
action_15 (37) = happyShift action_17
action_15 (41) = happyShift action_18
action_15 (42) = happyShift action_19
action_15 (43) = happyShift action_20
action_15 (52) = happyShift action_35
action_15 (57) = happyShift action_21
action_15 (62) = happyShift action_22
action_15 (5) = happyGoto action_32
action_15 (6) = happyGoto action_6
action_15 (7) = happyGoto action_7
action_15 (8) = happyGoto action_8
action_15 (9) = happyGoto action_9
action_15 (10) = happyGoto action_10
action_15 (11) = happyGoto action_11
action_15 (17) = happyGoto action_33
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (23) = happyShift action_12
action_16 (26) = happyShift action_13
action_16 (27) = happyShift action_14
action_16 (30) = happyShift action_15
action_16 (35) = happyShift action_16
action_16 (36) = happyShift action_31
action_16 (37) = happyShift action_17
action_16 (41) = happyShift action_18
action_16 (42) = happyShift action_19
action_16 (43) = happyShift action_20
action_16 (57) = happyShift action_21
action_16 (62) = happyShift action_22
action_16 (5) = happyGoto action_30
action_16 (6) = happyGoto action_6
action_16 (7) = happyGoto action_7
action_16 (8) = happyGoto action_8
action_16 (9) = happyGoto action_9
action_16 (10) = happyGoto action_10
action_16 (11) = happyGoto action_11
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (38) = happyShift action_29
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (59) = happyShift action_28
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (59) = happyShift action_27
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (59) = happyShift action_26
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (23) = happyShift action_12
action_21 (26) = happyShift action_13
action_21 (27) = happyShift action_14
action_21 (30) = happyShift action_15
action_21 (35) = happyShift action_16
action_21 (37) = happyShift action_17
action_21 (41) = happyShift action_18
action_21 (42) = happyShift action_19
action_21 (43) = happyShift action_20
action_21 (57) = happyShift action_21
action_21 (62) = happyShift action_22
action_21 (5) = happyGoto action_25
action_21 (6) = happyGoto action_6
action_21 (7) = happyGoto action_7
action_21 (8) = happyGoto action_8
action_21 (9) = happyGoto action_9
action_21 (10) = happyGoto action_10
action_21 (11) = happyGoto action_11
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_4

action_23 (44) = happyShift action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (23) = happyShift action_12
action_24 (26) = happyShift action_13
action_24 (27) = happyShift action_14
action_24 (30) = happyShift action_15
action_24 (35) = happyShift action_16
action_24 (37) = happyShift action_17
action_24 (41) = happyShift action_18
action_24 (42) = happyShift action_19
action_24 (43) = happyShift action_20
action_24 (57) = happyShift action_21
action_24 (62) = happyShift action_22
action_24 (5) = happyGoto action_67
action_24 (6) = happyGoto action_6
action_24 (7) = happyGoto action_7
action_24 (8) = happyGoto action_8
action_24 (9) = happyGoto action_9
action_24 (10) = happyGoto action_10
action_24 (11) = happyGoto action_11
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (58) = happyShift action_66
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (23) = happyShift action_12
action_26 (26) = happyShift action_13
action_26 (27) = happyShift action_14
action_26 (30) = happyShift action_15
action_26 (35) = happyShift action_16
action_26 (37) = happyShift action_17
action_26 (41) = happyShift action_18
action_26 (42) = happyShift action_19
action_26 (43) = happyShift action_20
action_26 (57) = happyShift action_21
action_26 (62) = happyShift action_22
action_26 (5) = happyGoto action_65
action_26 (6) = happyGoto action_6
action_26 (7) = happyGoto action_7
action_26 (8) = happyGoto action_8
action_26 (9) = happyGoto action_9
action_26 (10) = happyGoto action_10
action_26 (11) = happyGoto action_11
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (23) = happyShift action_12
action_27 (26) = happyShift action_13
action_27 (27) = happyShift action_14
action_27 (30) = happyShift action_15
action_27 (35) = happyShift action_16
action_27 (37) = happyShift action_17
action_27 (41) = happyShift action_18
action_27 (42) = happyShift action_19
action_27 (43) = happyShift action_20
action_27 (57) = happyShift action_21
action_27 (62) = happyShift action_22
action_27 (5) = happyGoto action_64
action_27 (6) = happyGoto action_6
action_27 (7) = happyGoto action_7
action_27 (8) = happyGoto action_8
action_27 (9) = happyGoto action_9
action_27 (10) = happyGoto action_10
action_27 (11) = happyGoto action_11
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (23) = happyShift action_12
action_28 (26) = happyShift action_13
action_28 (27) = happyShift action_14
action_28 (30) = happyShift action_15
action_28 (35) = happyShift action_16
action_28 (37) = happyShift action_17
action_28 (41) = happyShift action_18
action_28 (42) = happyShift action_19
action_28 (43) = happyShift action_20
action_28 (57) = happyShift action_21
action_28 (62) = happyShift action_22
action_28 (5) = happyGoto action_63
action_28 (6) = happyGoto action_6
action_28 (7) = happyGoto action_7
action_28 (8) = happyGoto action_8
action_28 (9) = happyGoto action_9
action_28 (10) = happyGoto action_10
action_28 (11) = happyGoto action_11
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (39) = happyShift action_61
action_29 (40) = happyShift action_62
action_29 (52) = happyShift action_35
action_29 (12) = happyGoto action_59
action_29 (17) = happyGoto action_60
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (23) = happyShift action_12
action_30 (26) = happyShift action_13
action_30 (27) = happyShift action_14
action_30 (30) = happyShift action_15
action_30 (35) = happyShift action_16
action_30 (37) = happyShift action_17
action_30 (41) = happyShift action_18
action_30 (42) = happyShift action_19
action_30 (43) = happyShift action_20
action_30 (57) = happyShift action_21
action_30 (62) = happyShift action_22
action_30 (5) = happyGoto action_58
action_30 (6) = happyGoto action_6
action_30 (7) = happyGoto action_7
action_30 (8) = happyGoto action_8
action_30 (9) = happyGoto action_9
action_30 (10) = happyGoto action_10
action_30 (11) = happyGoto action_11
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (23) = happyShift action_12
action_31 (26) = happyShift action_13
action_31 (27) = happyShift action_14
action_31 (30) = happyShift action_15
action_31 (35) = happyShift action_16
action_31 (37) = happyShift action_17
action_31 (41) = happyShift action_18
action_31 (42) = happyShift action_19
action_31 (43) = happyShift action_20
action_31 (57) = happyShift action_21
action_31 (62) = happyShift action_22
action_31 (5) = happyGoto action_57
action_31 (6) = happyGoto action_6
action_31 (7) = happyGoto action_7
action_31 (8) = happyGoto action_8
action_31 (9) = happyGoto action_9
action_31 (10) = happyGoto action_10
action_31 (11) = happyGoto action_11
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_16

action_33 (23) = happyShift action_12
action_33 (26) = happyShift action_13
action_33 (27) = happyShift action_14
action_33 (30) = happyShift action_15
action_33 (35) = happyShift action_16
action_33 (37) = happyShift action_17
action_33 (41) = happyShift action_18
action_33 (42) = happyShift action_19
action_33 (43) = happyShift action_20
action_33 (57) = happyShift action_21
action_33 (62) = happyShift action_22
action_33 (5) = happyGoto action_56
action_33 (6) = happyGoto action_6
action_33 (7) = happyGoto action_7
action_33 (8) = happyGoto action_8
action_33 (9) = happyGoto action_9
action_33 (10) = happyGoto action_10
action_33 (11) = happyGoto action_11
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (52) = happyShift action_55
action_34 (18) = happyGoto action_54
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (53) = happyShift action_53
action_35 (56) = happyShift action_38
action_35 (15) = happyGoto action_51
action_35 (20) = happyGoto action_52
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (59) = happyShift action_50
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (52) = happyShift action_49
action_37 (19) = happyGoto action_48
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (59) = happyShift action_47
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (23) = happyShift action_12
action_39 (26) = happyShift action_13
action_39 (27) = happyShift action_14
action_39 (30) = happyShift action_15
action_39 (31) = happyShift action_46
action_39 (35) = happyShift action_16
action_39 (37) = happyShift action_17
action_39 (41) = happyShift action_18
action_39 (42) = happyShift action_19
action_39 (43) = happyShift action_20
action_39 (57) = happyShift action_21
action_39 (62) = happyShift action_22
action_39 (5) = happyGoto action_45
action_39 (6) = happyGoto action_6
action_39 (7) = happyGoto action_7
action_39 (8) = happyGoto action_8
action_39 (9) = happyGoto action_9
action_39 (10) = happyGoto action_10
action_39 (11) = happyGoto action_11
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (23) = happyShift action_12
action_40 (26) = happyShift action_13
action_40 (27) = happyShift action_14
action_40 (30) = happyShift action_15
action_40 (31) = happyShift action_44
action_40 (35) = happyShift action_16
action_40 (37) = happyShift action_17
action_40 (41) = happyShift action_18
action_40 (42) = happyShift action_19
action_40 (43) = happyShift action_20
action_40 (57) = happyShift action_21
action_40 (62) = happyShift action_22
action_40 (5) = happyGoto action_43
action_40 (6) = happyGoto action_6
action_40 (7) = happyGoto action_7
action_40 (8) = happyGoto action_8
action_40 (9) = happyGoto action_9
action_40 (10) = happyGoto action_10
action_40 (11) = happyGoto action_11
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_3

action_42 _ = happyReduce_2

action_43 _ = happyReduce_12

action_44 (52) = happyShift action_55
action_44 (18) = happyGoto action_87
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_13

action_46 (52) = happyShift action_55
action_46 (18) = happyGoto action_86
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_36

action_48 (23) = happyShift action_12
action_48 (26) = happyShift action_13
action_48 (27) = happyShift action_14
action_48 (30) = happyShift action_15
action_48 (35) = happyShift action_16
action_48 (37) = happyShift action_17
action_48 (41) = happyShift action_18
action_48 (42) = happyShift action_19
action_48 (43) = happyShift action_20
action_48 (57) = happyShift action_21
action_48 (62) = happyShift action_22
action_48 (5) = happyGoto action_85
action_48 (6) = happyGoto action_6
action_48 (7) = happyGoto action_7
action_48 (8) = happyGoto action_8
action_48 (9) = happyGoto action_9
action_48 (10) = happyGoto action_10
action_48 (11) = happyGoto action_11
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (53) = happyShift action_83
action_49 (61) = happyShift action_84
action_49 (22) = happyGoto action_82
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (61) = happyShift action_81
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (54) = happyShift action_80
action_51 _ = happyReduce_49

action_52 (53) = happyShift action_79
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_43

action_54 (23) = happyShift action_12
action_54 (26) = happyShift action_13
action_54 (27) = happyShift action_14
action_54 (30) = happyShift action_15
action_54 (35) = happyShift action_16
action_54 (37) = happyShift action_17
action_54 (41) = happyShift action_18
action_54 (42) = happyShift action_19
action_54 (43) = happyShift action_20
action_54 (57) = happyShift action_21
action_54 (62) = happyShift action_22
action_54 (5) = happyGoto action_78
action_54 (6) = happyGoto action_6
action_54 (7) = happyGoto action_7
action_54 (8) = happyGoto action_8
action_54 (9) = happyGoto action_9
action_54 (10) = happyGoto action_10
action_54 (11) = happyGoto action_11
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (32) = happyShift action_76
action_55 (53) = happyShift action_77
action_55 (56) = happyShift action_38
action_55 (13) = happyGoto action_72
action_55 (14) = happyGoto action_73
action_55 (15) = happyGoto action_74
action_55 (21) = happyGoto action_75
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_17

action_57 (23) = happyShift action_12
action_57 (26) = happyShift action_13
action_57 (27) = happyShift action_14
action_57 (30) = happyShift action_15
action_57 (35) = happyShift action_16
action_57 (37) = happyShift action_17
action_57 (41) = happyShift action_18
action_57 (42) = happyShift action_19
action_57 (43) = happyShift action_20
action_57 (57) = happyShift action_21
action_57 (62) = happyShift action_22
action_57 (5) = happyGoto action_71
action_57 (6) = happyGoto action_6
action_57 (7) = happyGoto action_7
action_57 (8) = happyGoto action_8
action_57 (9) = happyGoto action_9
action_57 (10) = happyGoto action_10
action_57 (11) = happyGoto action_11
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_21

action_59 (23) = happyShift action_12
action_59 (26) = happyShift action_13
action_59 (27) = happyShift action_14
action_59 (30) = happyShift action_15
action_59 (35) = happyShift action_16
action_59 (37) = happyShift action_17
action_59 (41) = happyShift action_18
action_59 (42) = happyShift action_19
action_59 (43) = happyShift action_20
action_59 (57) = happyShift action_21
action_59 (62) = happyShift action_22
action_59 (5) = happyGoto action_70
action_59 (6) = happyGoto action_6
action_59 (7) = happyGoto action_7
action_59 (8) = happyGoto action_8
action_59 (9) = happyGoto action_9
action_59 (10) = happyGoto action_10
action_59 (11) = happyGoto action_11
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (39) = happyShift action_61
action_60 (40) = happyShift action_62
action_60 (12) = happyGoto action_69
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_28

action_62 _ = happyReduce_29

action_63 _ = happyReduce_25

action_64 _ = happyReduce_26

action_65 _ = happyReduce_27

action_66 _ = happyReduce_6

action_67 (51) = happyShift action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (24) = happyShift action_2
action_68 (25) = happyShift action_4
action_68 (4) = happyGoto action_107
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (23) = happyShift action_12
action_69 (26) = happyShift action_13
action_69 (27) = happyShift action_14
action_69 (30) = happyShift action_15
action_69 (35) = happyShift action_16
action_69 (37) = happyShift action_17
action_69 (41) = happyShift action_18
action_69 (42) = happyShift action_19
action_69 (43) = happyShift action_20
action_69 (57) = happyShift action_21
action_69 (62) = happyShift action_22
action_69 (5) = happyGoto action_106
action_69 (6) = happyGoto action_6
action_69 (7) = happyGoto action_7
action_69 (8) = happyGoto action_8
action_69 (9) = happyGoto action_9
action_69 (10) = happyGoto action_10
action_69 (11) = happyGoto action_11
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_23

action_71 _ = happyReduce_22

action_72 (33) = happyShift action_103
action_72 (34) = happyShift action_104
action_72 (54) = happyShift action_105
action_72 _ = happyReduce_51

action_73 _ = happyReduce_33

action_74 (45) = happyShift action_97
action_74 (46) = happyShift action_98
action_74 (47) = happyShift action_99
action_74 (48) = happyShift action_100
action_74 (49) = happyShift action_101
action_74 (50) = happyShift action_102
action_74 (16) = happyGoto action_96
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (53) = happyShift action_95
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (32) = happyShift action_76
action_76 (56) = happyShift action_38
action_76 (13) = happyGoto action_94
action_76 (14) = happyGoto action_73
action_76 (15) = happyGoto action_74
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_45

action_78 _ = happyReduce_18

action_79 _ = happyReduce_44

action_80 (56) = happyShift action_38
action_80 (15) = happyGoto action_51
action_80 (20) = happyGoto action_93
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (23) = happyShift action_12
action_81 (26) = happyShift action_13
action_81 (27) = happyShift action_14
action_81 (30) = happyShift action_15
action_81 (35) = happyShift action_16
action_81 (37) = happyShift action_17
action_81 (41) = happyShift action_18
action_81 (42) = happyShift action_19
action_81 (43) = happyShift action_20
action_81 (57) = happyShift action_21
action_81 (62) = happyShift action_22
action_81 (5) = happyGoto action_92
action_81 (6) = happyGoto action_6
action_81 (7) = happyGoto action_7
action_81 (8) = happyGoto action_8
action_81 (9) = happyGoto action_9
action_81 (10) = happyGoto action_10
action_81 (11) = happyGoto action_11
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (53) = happyShift action_91
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_47

action_84 (54) = happyShift action_90
action_84 _ = happyReduce_53

action_85 _ = happyReduce_19

action_86 (23) = happyShift action_12
action_86 (26) = happyShift action_13
action_86 (27) = happyShift action_14
action_86 (30) = happyShift action_15
action_86 (35) = happyShift action_16
action_86 (37) = happyShift action_17
action_86 (41) = happyShift action_18
action_86 (42) = happyShift action_19
action_86 (43) = happyShift action_20
action_86 (57) = happyShift action_21
action_86 (62) = happyShift action_22
action_86 (5) = happyGoto action_89
action_86 (6) = happyGoto action_6
action_86 (7) = happyGoto action_7
action_86 (8) = happyGoto action_8
action_86 (9) = happyGoto action_9
action_86 (10) = happyGoto action_10
action_86 (11) = happyGoto action_11
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (23) = happyShift action_12
action_87 (26) = happyShift action_13
action_87 (27) = happyShift action_14
action_87 (30) = happyShift action_15
action_87 (35) = happyShift action_16
action_87 (37) = happyShift action_17
action_87 (41) = happyShift action_18
action_87 (42) = happyShift action_19
action_87 (43) = happyShift action_20
action_87 (57) = happyShift action_21
action_87 (62) = happyShift action_22
action_87 (5) = happyGoto action_88
action_87 (6) = happyGoto action_6
action_87 (7) = happyGoto action_7
action_87 (8) = happyGoto action_8
action_87 (9) = happyGoto action_9
action_87 (10) = happyGoto action_10
action_87 (11) = happyGoto action_11
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_14

action_89 _ = happyReduce_15

action_90 (61) = happyShift action_84
action_90 (22) = happyGoto action_113
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_48

action_92 _ = happyReduce_20

action_93 _ = happyReduce_50

action_94 (33) = happyShift action_103
action_94 (34) = happyShift action_104
action_94 _ = happyReduce_30

action_95 _ = happyReduce_46

action_96 (56) = happyShift action_38
action_96 (61) = happyShift action_112
action_96 (15) = happyGoto action_111
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_37

action_98 _ = happyReduce_38

action_99 _ = happyReduce_39

action_100 _ = happyReduce_40

action_101 _ = happyReduce_41

action_102 _ = happyReduce_42

action_103 (32) = happyShift action_76
action_103 (56) = happyShift action_38
action_103 (13) = happyGoto action_110
action_103 (14) = happyGoto action_73
action_103 (15) = happyGoto action_74
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (32) = happyShift action_76
action_104 (56) = happyShift action_38
action_104 (13) = happyGoto action_109
action_104 (14) = happyGoto action_73
action_104 (15) = happyGoto action_74
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (32) = happyShift action_76
action_105 (56) = happyShift action_38
action_105 (13) = happyGoto action_72
action_105 (14) = happyGoto action_73
action_105 (15) = happyGoto action_74
action_105 (21) = happyGoto action_108
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_24

action_107 _ = happyReduce_1

action_108 _ = happyReduce_52

action_109 (33) = happyShift action_103
action_109 (34) = happyShift action_104
action_109 _ = happyReduce_32

action_110 (33) = happyShift action_103
action_110 (34) = happyShift action_104
action_110 _ = happyReduce_31

action_111 _ = happyReduce_35

action_112 _ = happyReduce_34

action_113 _ = happyReduce_54

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
		 (Format happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	_
	 =  HappyAbsSyn7
		 (SelectAll happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (SelectCol happy_var_2 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 5 7 happyReduction_14
happyReduction_14 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectAllWhere happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 5 7 happyReduction_15
happyReduction_15 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectColWhere happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_2  8 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (DeleteAll happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  8 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (DeleteCol happy_var_2 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 8 happyReduction_18
happyReduction_18 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (DeleteAllWhere happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 9 happyReduction_19
happyReduction_19 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (InsertValues happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 5 9 happyReduction_20
happyReduction_20 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyTerminal (TokenStr _ happy_var_4)) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (InsertColumn happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (UnionUnique happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 10 happyReduction_22
happyReduction_22 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (UnionAll happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 4 11 happyReduction_23
happyReduction_23 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 5 11 happyReduction_24
happyReduction_24 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (OrderByCol happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn11
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  11 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn11
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  11 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn11
		 (Last happy_var_2 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  12 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn12
		 (Asc
	)

happyReduce_29 = happySpecReduce_1  12 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn12
		 (Desc
	)

happyReduce_30 = happySpecReduce_2  13 happyReduction_30
happyReduction_30 (HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Not happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  13 happyReduction_31
happyReduction_31 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (And happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  13 happyReduction_32
happyReduction_32 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Or happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  13 happyReduction_33
happyReduction_33 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (Comparison happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  14 happyReduction_34
happyReduction_34 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  14 happyReduction_35
happyReduction_35 (HappyAbsSyn15  happy_var_3)
	(HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  15 happyReduction_36
happyReduction_36 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  16 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn16
		 (Eq
	)

happyReduce_38 = happySpecReduce_1  16 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn16
		 (LessThan
	)

happyReduce_39 = happySpecReduce_1  16 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn16
		 (GreaterThan
	)

happyReduce_40 = happySpecReduce_1  16 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn16
		 (LessThanEq
	)

happyReduce_41 = happySpecReduce_1  16 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn16
		 (GreaterThanEq
	)

happyReduce_42 = happySpecReduce_1  16 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn16
		 (NotEq
	)

happyReduce_43 = happySpecReduce_2  17 happyReduction_43
happyReduction_43 _
	_
	 =  HappyAbsSyn17
		 ([]
	)

happyReduce_44 = happySpecReduce_3  17 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  18 happyReduction_45
happyReduction_45 _
	_
	 =  HappyAbsSyn18
		 ([]
	)

happyReduce_46 = happySpecReduce_3  18 happyReduction_46
happyReduction_46 _
	(HappyAbsSyn21  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  19 happyReduction_47
happyReduction_47 _
	_
	 =  HappyAbsSyn19
		 ([]
	)

happyReduce_48 = happySpecReduce_3  19 happyReduction_48
happyReduction_48 _
	(HappyAbsSyn22  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (happy_var_2
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  20 happyReduction_49
happyReduction_49 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn20
		 ([happy_var_1]
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  20 happyReduction_50
happyReduction_50 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn20
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  21 happyReduction_51
happyReduction_51 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn21
		 ([happy_var_1]
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  21 happyReduction_52
happyReduction_52 (HappyAbsSyn21  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn21
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  22 happyReduction_53
happyReduction_53 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn22
		 ([happy_var_1]
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  22 happyReduction_54
happyReduction_54 (HappyAbsSyn22  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn22
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 63 63 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenRead _ -> cont 23;
	TokenLet _ -> cont 24;
	TokenReturn _ -> cont 25;
	TokenSelect _ -> cont 26;
	TokenInsert _ -> cont 27;
	TokenValues _ -> cont 28;
	TokenColumn _ -> cont 29;
	TokenDelete _ -> cont 30;
	TokenWhere _ -> cont 31;
	TokenNot _ -> cont 32;
	TokenAnd _ -> cont 33;
	TokenOr _ -> cont 34;
	TokenUnion _ -> cont 35;
	TokenAll _ -> cont 36;
	TokenOrder _ -> cont 37;
	TokenBy _ -> cont 38;
	TokenAsc _ -> cont 39;
	TokenDesc _ -> cont 40;
	TokenLimit _ -> cont 41;
	TokenOffset _ -> cont 42;
	TokenLast _ -> cont 43;
	TokenAssign _ -> cont 44;
	TokenEq _ -> cont 45;
	TokenLessThan _ -> cont 46;
	TokenGreaterThan _ -> cont 47;
	TokenLessThanEq _ -> cont 48;
	TokenGreaterThanEq _ -> cont 49;
	TokenNotEq _ -> cont 50;
	TokenSep _ -> cont 51;
	TokenLSquare _ -> cont 52;
	TokenRSquare _ -> cont 53;
	TokenComma _ -> cont 54;
	TokenAst _ -> cont 55;
	TokenAt _ -> cont 56;
	TokenLParen _ -> cont 57;
	TokenRParen _ -> cont 58;
	TokenInt  _ happy_dollar_dollar -> cont 59;
	TokenFilename _ happy_dollar_dollar -> cont 60;
	TokenStr _ happy_dollar_dollar -> cont 61;
	TokenVar _ happy_dollar_dollar -> cont 62;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 63 tk tks = happyError' (tks, explist)
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

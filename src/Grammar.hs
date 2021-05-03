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
happyExpList = Happy_Data_Array.listArray (0,570) ([0,3072,0,0,0,0,128,0,0,0,0,0,0,0,32,0,0,0,0,0,8192,14867,3856,33792,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,1088,0,0,6,0,0,0,12800,931,241,2113,0,9792,8308,30,264,0,33992,50190,3,33,0,53401,30849,8192,4,8192,64019,3863,33792,0,0,0,4,0,0,0,0,0,64,0,0,0,0,8,0,0,0,0,1,16384,29734,7712,2048,1,51200,3716,964,8448,0,0,0,0,0,0,0,0,16,0,0,16996,57863,32769,16,0,0,0,8192,0,0,0,0,0,0,12800,929,241,2112,0,9792,8308,30,264,0,33992,50190,3,33,0,0,1536,128,0,8192,14867,3856,33792,0,0,0,1,0,0,0,8192,0,0,0,0,1024,0,0,0,0,128,0,0,16384,29734,7712,2048,1,51200,3716,964,8448,0,39168,33232,120,1056,0,4896,4154,15,132,0,0,0,0,0,32768,59468,15424,4096,2,0,0,0,8,0,0,0,0,34,0,0,0,8192,0,0,0,0,32768,0,0,53657,30849,8192,4,8192,14899,3856,33792,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,4,0,0,0,0,512,0,0,0,0,16,0,16996,57863,32769,16,0,0,0,128,1,0,0,0,32,0,0,0,0,2,0,0,0,0,0,0,33992,50190,3,33,0,512,0,4352,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,41266,61699,16384,8,0,0,1,0,0,0,8192,0,0,0,0,1024,0,0,0,0,128,0,0,0,0,0,0,0,32768,59468,15424,4096,2,0,0,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,96,0,0,0,0,41266,61699,16384,8,0,0,0,0,0,51200,3716,964,8448,0,0,0,0,4,0,4896,4154,15,132,0,16996,57863,32769,16,32768,59468,15424,4096,2,0,0,0,0,0,0,24,0,4,0,0,0,0,0,0,0,0,504,0,0,0,0,256,0,0,64,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,64,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,32768,59468,15424,4096,2,36864,7433,1928,16896,0,12800,929,241,2112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33792,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,32,0,32768,0,0,4,0,4096,0,32768,0,0,53401,30849,8192,4,8192,14867,3856,33792,0,25600,1858,482,4224,0,0,0,0,8,0,2448,34845,7,66,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,2,0,0,0,0,1,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectFunction","DeleteFunction","InsertFunction","SetFunction","JoinFunction","TableComparison","TableColumnRef","FormatFunction","Direction","Predicate","Comparison","ColumnRef","ComparisonOperator","List__ColumnRef__","List__Predicate__","List__Str__","ListCont__ColumnRef__","ListCont__Predicate__","ListCont__Str__","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Union","All","Intersection","Difference","Join","Inner","Left","Right","Outer","Full","On","Order","By","Asc","Desc","Limit","Offset","Last","Unique","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'.'","'*'","\"@\"","'('","')'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 77
        bit_end = (st Prelude.+ 1) Prelude.* 77
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..76]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (27) = happyShift action_2
action_0 (28) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (27) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (76) = happyShift action_28
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (77) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (26) = happyShift action_13
action_4 (29) = happyShift action_14
action_4 (30) = happyShift action_15
action_4 (33) = happyShift action_16
action_4 (38) = happyShift action_17
action_4 (40) = happyShift action_18
action_4 (41) = happyShift action_19
action_4 (42) = happyShift action_20
action_4 (49) = happyShift action_21
action_4 (53) = happyShift action_22
action_4 (54) = happyShift action_23
action_4 (55) = happyShift action_24
action_4 (56) = happyShift action_25
action_4 (71) = happyShift action_26
action_4 (76) = happyShift action_27
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (7) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 (9) = happyGoto action_9
action_4 (10) = happyGoto action_10
action_4 (11) = happyGoto action_11
action_4 (14) = happyGoto action_12
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (64) = happyShift action_54
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_7

action_8 _ = happyReduce_9

action_9 _ = happyReduce_8

action_10 _ = happyReduce_10

action_11 _ = happyReduce_11

action_12 _ = happyReduce_12

action_13 (74) = happyShift action_53
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (65) = happyShift action_48
action_14 (69) = happyShift action_52
action_14 (20) = happyGoto action_51
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (31) = happyShift action_49
action_15 (32) = happyShift action_50
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_13
action_16 (29) = happyShift action_14
action_16 (30) = happyShift action_15
action_16 (33) = happyShift action_16
action_16 (34) = happyShift action_47
action_16 (38) = happyShift action_17
action_16 (40) = happyShift action_18
action_16 (41) = happyShift action_19
action_16 (42) = happyShift action_20
action_16 (49) = happyShift action_21
action_16 (53) = happyShift action_22
action_16 (54) = happyShift action_23
action_16 (55) = happyShift action_24
action_16 (56) = happyShift action_25
action_16 (65) = happyShift action_48
action_16 (71) = happyShift action_26
action_16 (76) = happyShift action_27
action_16 (5) = happyGoto action_45
action_16 (6) = happyGoto action_6
action_16 (7) = happyGoto action_7
action_16 (8) = happyGoto action_8
action_16 (9) = happyGoto action_9
action_16 (10) = happyGoto action_10
action_16 (11) = happyGoto action_11
action_16 (14) = happyGoto action_12
action_16 (20) = happyGoto action_46
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (26) = happyShift action_13
action_17 (29) = happyShift action_14
action_17 (30) = happyShift action_15
action_17 (33) = happyShift action_16
action_17 (38) = happyShift action_17
action_17 (40) = happyShift action_18
action_17 (41) = happyShift action_19
action_17 (42) = happyShift action_20
action_17 (49) = happyShift action_21
action_17 (53) = happyShift action_22
action_17 (54) = happyShift action_23
action_17 (55) = happyShift action_24
action_17 (56) = happyShift action_25
action_17 (71) = happyShift action_26
action_17 (76) = happyShift action_27
action_17 (5) = happyGoto action_44
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
action_18 (41) = happyShift action_19
action_18 (42) = happyShift action_20
action_18 (49) = happyShift action_21
action_18 (53) = happyShift action_22
action_18 (54) = happyShift action_23
action_18 (55) = happyShift action_24
action_18 (56) = happyShift action_25
action_18 (71) = happyShift action_26
action_18 (76) = happyShift action_27
action_18 (5) = happyGoto action_43
action_18 (6) = happyGoto action_6
action_18 (7) = happyGoto action_7
action_18 (8) = happyGoto action_8
action_18 (9) = happyGoto action_9
action_18 (10) = happyGoto action_10
action_18 (11) = happyGoto action_11
action_18 (14) = happyGoto action_12
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (26) = happyShift action_13
action_19 (29) = happyShift action_14
action_19 (30) = happyShift action_15
action_19 (33) = happyShift action_16
action_19 (38) = happyShift action_17
action_19 (40) = happyShift action_18
action_19 (41) = happyShift action_19
action_19 (42) = happyShift action_20
action_19 (49) = happyShift action_21
action_19 (53) = happyShift action_22
action_19 (54) = happyShift action_23
action_19 (55) = happyShift action_24
action_19 (56) = happyShift action_25
action_19 (71) = happyShift action_26
action_19 (76) = happyShift action_27
action_19 (5) = happyGoto action_42
action_19 (6) = happyGoto action_6
action_19 (7) = happyGoto action_7
action_19 (8) = happyGoto action_8
action_19 (9) = happyGoto action_9
action_19 (10) = happyGoto action_10
action_19 (11) = happyGoto action_11
action_19 (14) = happyGoto action_12
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (26) = happyShift action_13
action_20 (29) = happyShift action_14
action_20 (30) = happyShift action_15
action_20 (33) = happyShift action_16
action_20 (38) = happyShift action_17
action_20 (40) = happyShift action_18
action_20 (41) = happyShift action_19
action_20 (42) = happyShift action_20
action_20 (43) = happyShift action_37
action_20 (44) = happyShift action_38
action_20 (45) = happyShift action_39
action_20 (46) = happyShift action_40
action_20 (47) = happyShift action_41
action_20 (49) = happyShift action_21
action_20 (53) = happyShift action_22
action_20 (54) = happyShift action_23
action_20 (55) = happyShift action_24
action_20 (56) = happyShift action_25
action_20 (71) = happyShift action_26
action_20 (76) = happyShift action_27
action_20 (5) = happyGoto action_36
action_20 (6) = happyGoto action_6
action_20 (7) = happyGoto action_7
action_20 (8) = happyGoto action_8
action_20 (9) = happyGoto action_9
action_20 (10) = happyGoto action_10
action_20 (11) = happyGoto action_11
action_20 (14) = happyGoto action_12
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (50) = happyShift action_35
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (73) = happyShift action_34
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (73) = happyShift action_33
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (73) = happyShift action_32
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (26) = happyShift action_13
action_25 (29) = happyShift action_14
action_25 (30) = happyShift action_15
action_25 (33) = happyShift action_16
action_25 (38) = happyShift action_17
action_25 (40) = happyShift action_18
action_25 (41) = happyShift action_19
action_25 (42) = happyShift action_20
action_25 (49) = happyShift action_21
action_25 (53) = happyShift action_22
action_25 (54) = happyShift action_23
action_25 (55) = happyShift action_24
action_25 (56) = happyShift action_25
action_25 (71) = happyShift action_26
action_25 (76) = happyShift action_27
action_25 (5) = happyGoto action_31
action_25 (6) = happyGoto action_6
action_25 (7) = happyGoto action_7
action_25 (8) = happyGoto action_8
action_25 (9) = happyGoto action_9
action_25 (10) = happyGoto action_10
action_25 (11) = happyGoto action_11
action_25 (14) = happyGoto action_12
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (26) = happyShift action_13
action_26 (29) = happyShift action_14
action_26 (30) = happyShift action_15
action_26 (33) = happyShift action_16
action_26 (38) = happyShift action_17
action_26 (40) = happyShift action_18
action_26 (41) = happyShift action_19
action_26 (42) = happyShift action_20
action_26 (49) = happyShift action_21
action_26 (53) = happyShift action_22
action_26 (54) = happyShift action_23
action_26 (55) = happyShift action_24
action_26 (56) = happyShift action_25
action_26 (71) = happyShift action_26
action_26 (76) = happyShift action_27
action_26 (5) = happyGoto action_30
action_26 (6) = happyGoto action_6
action_26 (7) = happyGoto action_7
action_26 (8) = happyGoto action_8
action_26 (9) = happyGoto action_9
action_26 (10) = happyGoto action_10
action_26 (11) = happyGoto action_11
action_26 (14) = happyGoto action_12
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_4

action_28 (57) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (26) = happyShift action_13
action_29 (29) = happyShift action_14
action_29 (30) = happyShift action_15
action_29 (33) = happyShift action_16
action_29 (38) = happyShift action_17
action_29 (40) = happyShift action_18
action_29 (41) = happyShift action_19
action_29 (42) = happyShift action_20
action_29 (49) = happyShift action_21
action_29 (53) = happyShift action_22
action_29 (54) = happyShift action_23
action_29 (55) = happyShift action_24
action_29 (56) = happyShift action_25
action_29 (71) = happyShift action_26
action_29 (76) = happyShift action_27
action_29 (5) = happyGoto action_86
action_29 (6) = happyGoto action_6
action_29 (7) = happyGoto action_7
action_29 (8) = happyGoto action_8
action_29 (9) = happyGoto action_9
action_29 (10) = happyGoto action_10
action_29 (11) = happyGoto action_11
action_29 (14) = happyGoto action_12
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (72) = happyShift action_85
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_38

action_32 (26) = happyShift action_13
action_32 (29) = happyShift action_14
action_32 (30) = happyShift action_15
action_32 (33) = happyShift action_16
action_32 (38) = happyShift action_17
action_32 (40) = happyShift action_18
action_32 (41) = happyShift action_19
action_32 (42) = happyShift action_20
action_32 (49) = happyShift action_21
action_32 (53) = happyShift action_22
action_32 (54) = happyShift action_23
action_32 (55) = happyShift action_24
action_32 (56) = happyShift action_25
action_32 (71) = happyShift action_26
action_32 (76) = happyShift action_27
action_32 (5) = happyGoto action_84
action_32 (6) = happyGoto action_6
action_32 (7) = happyGoto action_7
action_32 (8) = happyGoto action_8
action_32 (9) = happyGoto action_9
action_32 (10) = happyGoto action_10
action_32 (11) = happyGoto action_11
action_32 (14) = happyGoto action_12
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (26) = happyShift action_13
action_33 (29) = happyShift action_14
action_33 (30) = happyShift action_15
action_33 (33) = happyShift action_16
action_33 (38) = happyShift action_17
action_33 (40) = happyShift action_18
action_33 (41) = happyShift action_19
action_33 (42) = happyShift action_20
action_33 (49) = happyShift action_21
action_33 (53) = happyShift action_22
action_33 (54) = happyShift action_23
action_33 (55) = happyShift action_24
action_33 (56) = happyShift action_25
action_33 (71) = happyShift action_26
action_33 (76) = happyShift action_27
action_33 (5) = happyGoto action_83
action_33 (6) = happyGoto action_6
action_33 (7) = happyGoto action_7
action_33 (8) = happyGoto action_8
action_33 (9) = happyGoto action_9
action_33 (10) = happyGoto action_10
action_33 (11) = happyGoto action_11
action_33 (14) = happyGoto action_12
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (26) = happyShift action_13
action_34 (29) = happyShift action_14
action_34 (30) = happyShift action_15
action_34 (33) = happyShift action_16
action_34 (38) = happyShift action_17
action_34 (40) = happyShift action_18
action_34 (41) = happyShift action_19
action_34 (42) = happyShift action_20
action_34 (49) = happyShift action_21
action_34 (53) = happyShift action_22
action_34 (54) = happyShift action_23
action_34 (55) = happyShift action_24
action_34 (56) = happyShift action_25
action_34 (71) = happyShift action_26
action_34 (76) = happyShift action_27
action_34 (5) = happyGoto action_82
action_34 (6) = happyGoto action_6
action_34 (7) = happyGoto action_7
action_34 (8) = happyGoto action_8
action_34 (9) = happyGoto action_9
action_34 (10) = happyGoto action_10
action_34 (11) = happyGoto action_11
action_34 (14) = happyGoto action_12
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (51) = happyShift action_80
action_35 (52) = happyShift action_81
action_35 (65) = happyShift action_48
action_35 (15) = happyGoto action_78
action_35 (20) = happyGoto action_79
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (26) = happyShift action_13
action_36 (29) = happyShift action_14
action_36 (30) = happyShift action_15
action_36 (33) = happyShift action_16
action_36 (38) = happyShift action_17
action_36 (40) = happyShift action_18
action_36 (41) = happyShift action_19
action_36 (42) = happyShift action_20
action_36 (49) = happyShift action_21
action_36 (53) = happyShift action_22
action_36 (54) = happyShift action_23
action_36 (55) = happyShift action_24
action_36 (56) = happyShift action_25
action_36 (71) = happyShift action_26
action_36 (76) = happyShift action_27
action_36 (5) = happyGoto action_77
action_36 (6) = happyGoto action_6
action_36 (7) = happyGoto action_7
action_36 (8) = happyGoto action_8
action_36 (9) = happyGoto action_9
action_36 (10) = happyGoto action_10
action_36 (11) = happyGoto action_11
action_36 (14) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (48) = happyShift action_76
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (48) = happyShift action_75
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (48) = happyShift action_74
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (48) = happyShift action_73
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (26) = happyShift action_13
action_41 (29) = happyShift action_14
action_41 (30) = happyShift action_15
action_41 (33) = happyShift action_16
action_41 (38) = happyShift action_17
action_41 (40) = happyShift action_18
action_41 (41) = happyShift action_19
action_41 (42) = happyShift action_20
action_41 (49) = happyShift action_21
action_41 (53) = happyShift action_22
action_41 (54) = happyShift action_23
action_41 (55) = happyShift action_24
action_41 (56) = happyShift action_25
action_41 (71) = happyShift action_26
action_41 (76) = happyShift action_27
action_41 (5) = happyGoto action_72
action_41 (6) = happyGoto action_6
action_41 (7) = happyGoto action_7
action_41 (8) = happyGoto action_8
action_41 (9) = happyGoto action_9
action_41 (10) = happyGoto action_10
action_41 (11) = happyGoto action_11
action_41 (14) = happyGoto action_12
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (26) = happyShift action_13
action_42 (29) = happyShift action_14
action_42 (30) = happyShift action_15
action_42 (33) = happyShift action_16
action_42 (38) = happyShift action_17
action_42 (40) = happyShift action_18
action_42 (41) = happyShift action_19
action_42 (42) = happyShift action_20
action_42 (49) = happyShift action_21
action_42 (53) = happyShift action_22
action_42 (54) = happyShift action_23
action_42 (55) = happyShift action_24
action_42 (56) = happyShift action_25
action_42 (71) = happyShift action_26
action_42 (76) = happyShift action_27
action_42 (5) = happyGoto action_71
action_42 (6) = happyGoto action_6
action_42 (7) = happyGoto action_7
action_42 (8) = happyGoto action_8
action_42 (9) = happyGoto action_9
action_42 (10) = happyGoto action_10
action_42 (11) = happyGoto action_11
action_42 (14) = happyGoto action_12
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (26) = happyShift action_13
action_43 (29) = happyShift action_14
action_43 (30) = happyShift action_15
action_43 (33) = happyShift action_16
action_43 (38) = happyShift action_17
action_43 (40) = happyShift action_18
action_43 (41) = happyShift action_19
action_43 (42) = happyShift action_20
action_43 (49) = happyShift action_21
action_43 (53) = happyShift action_22
action_43 (54) = happyShift action_23
action_43 (55) = happyShift action_24
action_43 (56) = happyShift action_25
action_43 (71) = happyShift action_26
action_43 (76) = happyShift action_27
action_43 (5) = happyGoto action_70
action_43 (6) = happyGoto action_6
action_43 (7) = happyGoto action_7
action_43 (8) = happyGoto action_8
action_43 (9) = happyGoto action_9
action_43 (10) = happyGoto action_10
action_43 (11) = happyGoto action_11
action_43 (14) = happyGoto action_12
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (26) = happyShift action_13
action_44 (29) = happyShift action_14
action_44 (30) = happyShift action_15
action_44 (33) = happyShift action_16
action_44 (38) = happyShift action_17
action_44 (40) = happyShift action_18
action_44 (41) = happyShift action_19
action_44 (42) = happyShift action_20
action_44 (49) = happyShift action_21
action_44 (53) = happyShift action_22
action_44 (54) = happyShift action_23
action_44 (55) = happyShift action_24
action_44 (56) = happyShift action_25
action_44 (71) = happyShift action_26
action_44 (76) = happyShift action_27
action_44 (5) = happyGoto action_69
action_44 (6) = happyGoto action_6
action_44 (7) = happyGoto action_7
action_44 (8) = happyGoto action_8
action_44 (9) = happyGoto action_9
action_44 (10) = happyGoto action_10
action_44 (11) = happyGoto action_11
action_44 (14) = happyGoto action_12
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_17

action_46 (26) = happyShift action_13
action_46 (29) = happyShift action_14
action_46 (30) = happyShift action_15
action_46 (33) = happyShift action_16
action_46 (38) = happyShift action_17
action_46 (40) = happyShift action_18
action_46 (41) = happyShift action_19
action_46 (42) = happyShift action_20
action_46 (49) = happyShift action_21
action_46 (53) = happyShift action_22
action_46 (54) = happyShift action_23
action_46 (55) = happyShift action_24
action_46 (56) = happyShift action_25
action_46 (71) = happyShift action_26
action_46 (76) = happyShift action_27
action_46 (5) = happyGoto action_68
action_46 (6) = happyGoto action_6
action_46 (7) = happyGoto action_7
action_46 (8) = happyGoto action_8
action_46 (9) = happyGoto action_9
action_46 (10) = happyGoto action_10
action_46 (11) = happyGoto action_11
action_46 (14) = happyGoto action_12
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (65) = happyShift action_67
action_47 (21) = happyGoto action_66
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (66) = happyShift action_65
action_48 (70) = happyShift action_60
action_48 (18) = happyGoto action_63
action_48 (23) = happyGoto action_64
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (65) = happyShift action_62
action_49 (22) = happyGoto action_61
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (70) = happyShift action_60
action_50 (18) = happyGoto action_59
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (26) = happyShift action_13
action_51 (29) = happyShift action_14
action_51 (30) = happyShift action_15
action_51 (33) = happyShift action_16
action_51 (34) = happyShift action_58
action_51 (38) = happyShift action_17
action_51 (40) = happyShift action_18
action_51 (41) = happyShift action_19
action_51 (42) = happyShift action_20
action_51 (49) = happyShift action_21
action_51 (53) = happyShift action_22
action_51 (54) = happyShift action_23
action_51 (55) = happyShift action_24
action_51 (56) = happyShift action_25
action_51 (71) = happyShift action_26
action_51 (76) = happyShift action_27
action_51 (5) = happyGoto action_57
action_51 (6) = happyGoto action_6
action_51 (7) = happyGoto action_7
action_51 (8) = happyGoto action_8
action_51 (9) = happyGoto action_9
action_51 (10) = happyGoto action_10
action_51 (11) = happyGoto action_11
action_51 (14) = happyGoto action_12
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (26) = happyShift action_13
action_52 (29) = happyShift action_14
action_52 (30) = happyShift action_15
action_52 (33) = happyShift action_16
action_52 (34) = happyShift action_56
action_52 (38) = happyShift action_17
action_52 (40) = happyShift action_18
action_52 (41) = happyShift action_19
action_52 (42) = happyShift action_20
action_52 (49) = happyShift action_21
action_52 (53) = happyShift action_22
action_52 (54) = happyShift action_23
action_52 (55) = happyShift action_24
action_52 (56) = happyShift action_25
action_52 (71) = happyShift action_26
action_52 (76) = happyShift action_27
action_52 (5) = happyGoto action_55
action_52 (6) = happyGoto action_6
action_52 (7) = happyGoto action_7
action_52 (8) = happyGoto action_8
action_52 (9) = happyGoto action_9
action_52 (10) = happyGoto action_10
action_52 (11) = happyGoto action_11
action_52 (14) = happyGoto action_12
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_3

action_54 _ = happyReduce_2

action_55 _ = happyReduce_13

action_56 (65) = happyShift action_67
action_56 (21) = happyGoto action_112
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_14

action_58 (65) = happyShift action_67
action_58 (21) = happyGoto action_111
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (75) = happyShift action_110
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (73) = happyShift action_109
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (26) = happyShift action_13
action_61 (29) = happyShift action_14
action_61 (30) = happyShift action_15
action_61 (33) = happyShift action_16
action_61 (38) = happyShift action_17
action_61 (40) = happyShift action_18
action_61 (41) = happyShift action_19
action_61 (42) = happyShift action_20
action_61 (49) = happyShift action_21
action_61 (53) = happyShift action_22
action_61 (54) = happyShift action_23
action_61 (55) = happyShift action_24
action_61 (56) = happyShift action_25
action_61 (71) = happyShift action_26
action_61 (76) = happyShift action_27
action_61 (5) = happyGoto action_108
action_61 (6) = happyGoto action_6
action_61 (7) = happyGoto action_7
action_61 (8) = happyGoto action_8
action_61 (9) = happyGoto action_9
action_61 (10) = happyGoto action_10
action_61 (11) = happyGoto action_11
action_61 (14) = happyGoto action_12
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (66) = happyShift action_106
action_62 (75) = happyShift action_107
action_62 (25) = happyGoto action_105
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (67) = happyShift action_104
action_63 _ = happyReduce_60

action_64 (66) = happyShift action_103
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_54

action_66 (26) = happyShift action_13
action_66 (29) = happyShift action_14
action_66 (30) = happyShift action_15
action_66 (33) = happyShift action_16
action_66 (38) = happyShift action_17
action_66 (40) = happyShift action_18
action_66 (41) = happyShift action_19
action_66 (42) = happyShift action_20
action_66 (49) = happyShift action_21
action_66 (53) = happyShift action_22
action_66 (54) = happyShift action_23
action_66 (55) = happyShift action_24
action_66 (56) = happyShift action_25
action_66 (71) = happyShift action_26
action_66 (76) = happyShift action_27
action_66 (5) = happyGoto action_102
action_66 (6) = happyGoto action_6
action_66 (7) = happyGoto action_7
action_66 (8) = happyGoto action_8
action_66 (9) = happyGoto action_9
action_66 (10) = happyGoto action_10
action_66 (11) = happyGoto action_11
action_66 (14) = happyGoto action_12
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (35) = happyShift action_100
action_67 (66) = happyShift action_101
action_67 (70) = happyShift action_60
action_67 (16) = happyGoto action_96
action_67 (17) = happyGoto action_97
action_67 (18) = happyGoto action_98
action_67 (24) = happyGoto action_99
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_18

action_69 _ = happyReduce_22

action_70 _ = happyReduce_23

action_71 _ = happyReduce_24

action_72 (26) = happyShift action_13
action_72 (29) = happyShift action_14
action_72 (30) = happyShift action_15
action_72 (33) = happyShift action_16
action_72 (38) = happyShift action_17
action_72 (40) = happyShift action_18
action_72 (41) = happyShift action_19
action_72 (42) = happyShift action_20
action_72 (49) = happyShift action_21
action_72 (53) = happyShift action_22
action_72 (54) = happyShift action_23
action_72 (55) = happyShift action_24
action_72 (56) = happyShift action_25
action_72 (71) = happyShift action_26
action_72 (76) = happyShift action_27
action_72 (5) = happyGoto action_95
action_72 (6) = happyGoto action_6
action_72 (7) = happyGoto action_7
action_72 (8) = happyGoto action_8
action_72 (9) = happyGoto action_9
action_72 (10) = happyGoto action_10
action_72 (11) = happyGoto action_11
action_72 (14) = happyGoto action_12
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (44) = happyShift action_91
action_73 (12) = happyGoto action_94
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (44) = happyShift action_91
action_74 (12) = happyGoto action_93
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (44) = happyShift action_91
action_75 (12) = happyGoto action_92
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (44) = happyShift action_91
action_76 (12) = happyGoto action_90
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_25

action_78 (26) = happyShift action_13
action_78 (29) = happyShift action_14
action_78 (30) = happyShift action_15
action_78 (33) = happyShift action_16
action_78 (38) = happyShift action_17
action_78 (40) = happyShift action_18
action_78 (41) = happyShift action_19
action_78 (42) = happyShift action_20
action_78 (49) = happyShift action_21
action_78 (53) = happyShift action_22
action_78 (54) = happyShift action_23
action_78 (55) = happyShift action_24
action_78 (56) = happyShift action_25
action_78 (71) = happyShift action_26
action_78 (76) = happyShift action_27
action_78 (5) = happyGoto action_89
action_78 (6) = happyGoto action_6
action_78 (7) = happyGoto action_7
action_78 (8) = happyGoto action_8
action_78 (9) = happyGoto action_9
action_78 (10) = happyGoto action_10
action_78 (11) = happyGoto action_11
action_78 (14) = happyGoto action_12
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (51) = happyShift action_80
action_79 (52) = happyShift action_81
action_79 (15) = happyGoto action_88
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_39

action_81 _ = happyReduce_40

action_82 _ = happyReduce_35

action_83 _ = happyReduce_36

action_84 _ = happyReduce_37

action_85 _ = happyReduce_6

action_86 (64) = happyShift action_87
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (27) = happyShift action_2
action_87 (28) = happyShift action_4
action_87 (4) = happyGoto action_137
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (26) = happyShift action_13
action_88 (29) = happyShift action_14
action_88 (30) = happyShift action_15
action_88 (33) = happyShift action_16
action_88 (38) = happyShift action_17
action_88 (40) = happyShift action_18
action_88 (41) = happyShift action_19
action_88 (42) = happyShift action_20
action_88 (49) = happyShift action_21
action_88 (53) = happyShift action_22
action_88 (54) = happyShift action_23
action_88 (55) = happyShift action_24
action_88 (56) = happyShift action_25
action_88 (71) = happyShift action_26
action_88 (76) = happyShift action_27
action_88 (5) = happyGoto action_136
action_88 (6) = happyGoto action_6
action_88 (7) = happyGoto action_7
action_88 (8) = happyGoto action_8
action_88 (9) = happyGoto action_9
action_88 (10) = happyGoto action_10
action_88 (11) = happyGoto action_11
action_88 (14) = happyGoto action_12
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_33

action_90 (26) = happyShift action_13
action_90 (29) = happyShift action_14
action_90 (30) = happyShift action_15
action_90 (33) = happyShift action_16
action_90 (38) = happyShift action_17
action_90 (40) = happyShift action_18
action_90 (41) = happyShift action_19
action_90 (42) = happyShift action_20
action_90 (49) = happyShift action_21
action_90 (53) = happyShift action_22
action_90 (54) = happyShift action_23
action_90 (55) = happyShift action_24
action_90 (56) = happyShift action_25
action_90 (71) = happyShift action_26
action_90 (76) = happyShift action_27
action_90 (5) = happyGoto action_135
action_90 (6) = happyGoto action_6
action_90 (7) = happyGoto action_7
action_90 (8) = happyGoto action_8
action_90 (9) = happyGoto action_9
action_90 (10) = happyGoto action_10
action_90 (11) = happyGoto action_11
action_90 (14) = happyGoto action_12
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (68) = happyShift action_134
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (26) = happyShift action_13
action_92 (29) = happyShift action_14
action_92 (30) = happyShift action_15
action_92 (33) = happyShift action_16
action_92 (38) = happyShift action_17
action_92 (40) = happyShift action_18
action_92 (41) = happyShift action_19
action_92 (42) = happyShift action_20
action_92 (49) = happyShift action_21
action_92 (53) = happyShift action_22
action_92 (54) = happyShift action_23
action_92 (55) = happyShift action_24
action_92 (56) = happyShift action_25
action_92 (71) = happyShift action_26
action_92 (76) = happyShift action_27
action_92 (5) = happyGoto action_133
action_92 (6) = happyGoto action_6
action_92 (7) = happyGoto action_7
action_92 (8) = happyGoto action_8
action_92 (9) = happyGoto action_9
action_92 (10) = happyGoto action_10
action_92 (11) = happyGoto action_11
action_92 (14) = happyGoto action_12
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (26) = happyShift action_13
action_93 (29) = happyShift action_14
action_93 (30) = happyShift action_15
action_93 (33) = happyShift action_16
action_93 (38) = happyShift action_17
action_93 (40) = happyShift action_18
action_93 (41) = happyShift action_19
action_93 (42) = happyShift action_20
action_93 (49) = happyShift action_21
action_93 (53) = happyShift action_22
action_93 (54) = happyShift action_23
action_93 (55) = happyShift action_24
action_93 (56) = happyShift action_25
action_93 (71) = happyShift action_26
action_93 (76) = happyShift action_27
action_93 (5) = happyGoto action_132
action_93 (6) = happyGoto action_6
action_93 (7) = happyGoto action_7
action_93 (8) = happyGoto action_8
action_93 (9) = happyGoto action_9
action_93 (10) = happyGoto action_10
action_93 (11) = happyGoto action_11
action_93 (14) = happyGoto action_12
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (26) = happyShift action_13
action_94 (29) = happyShift action_14
action_94 (30) = happyShift action_15
action_94 (33) = happyShift action_16
action_94 (38) = happyShift action_17
action_94 (40) = happyShift action_18
action_94 (41) = happyShift action_19
action_94 (42) = happyShift action_20
action_94 (49) = happyShift action_21
action_94 (53) = happyShift action_22
action_94 (54) = happyShift action_23
action_94 (55) = happyShift action_24
action_94 (56) = happyShift action_25
action_94 (71) = happyShift action_26
action_94 (76) = happyShift action_27
action_94 (5) = happyGoto action_131
action_94 (6) = happyGoto action_6
action_94 (7) = happyGoto action_7
action_94 (8) = happyGoto action_8
action_94 (9) = happyGoto action_9
action_94 (10) = happyGoto action_10
action_94 (11) = happyGoto action_11
action_94 (14) = happyGoto action_12
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_30

action_96 (36) = happyShift action_128
action_96 (37) = happyShift action_129
action_96 (67) = happyShift action_130
action_96 _ = happyReduce_62

action_97 _ = happyReduce_44

action_98 (58) = happyShift action_122
action_98 (59) = happyShift action_123
action_98 (60) = happyShift action_124
action_98 (61) = happyShift action_125
action_98 (62) = happyShift action_126
action_98 (63) = happyShift action_127
action_98 (19) = happyGoto action_121
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (66) = happyShift action_120
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (35) = happyShift action_100
action_100 (70) = happyShift action_60
action_100 (16) = happyGoto action_119
action_100 (17) = happyGoto action_97
action_100 (18) = happyGoto action_98
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_56

action_102 _ = happyReduce_19

action_103 _ = happyReduce_55

action_104 (70) = happyShift action_60
action_104 (18) = happyGoto action_63
action_104 (23) = happyGoto action_118
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (66) = happyShift action_117
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_58

action_107 (67) = happyShift action_116
action_107 _ = happyReduce_64

action_108 _ = happyReduce_20

action_109 _ = happyReduce_47

action_110 (26) = happyShift action_13
action_110 (29) = happyShift action_14
action_110 (30) = happyShift action_15
action_110 (33) = happyShift action_16
action_110 (38) = happyShift action_17
action_110 (40) = happyShift action_18
action_110 (41) = happyShift action_19
action_110 (42) = happyShift action_20
action_110 (49) = happyShift action_21
action_110 (53) = happyShift action_22
action_110 (54) = happyShift action_23
action_110 (55) = happyShift action_24
action_110 (56) = happyShift action_25
action_110 (71) = happyShift action_26
action_110 (76) = happyShift action_27
action_110 (5) = happyGoto action_115
action_110 (6) = happyGoto action_6
action_110 (7) = happyGoto action_7
action_110 (8) = happyGoto action_8
action_110 (9) = happyGoto action_9
action_110 (10) = happyGoto action_10
action_110 (11) = happyGoto action_11
action_110 (14) = happyGoto action_12
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (26) = happyShift action_13
action_111 (29) = happyShift action_14
action_111 (30) = happyShift action_15
action_111 (33) = happyShift action_16
action_111 (38) = happyShift action_17
action_111 (40) = happyShift action_18
action_111 (41) = happyShift action_19
action_111 (42) = happyShift action_20
action_111 (49) = happyShift action_21
action_111 (53) = happyShift action_22
action_111 (54) = happyShift action_23
action_111 (55) = happyShift action_24
action_111 (56) = happyShift action_25
action_111 (71) = happyShift action_26
action_111 (76) = happyShift action_27
action_111 (5) = happyGoto action_114
action_111 (6) = happyGoto action_6
action_111 (7) = happyGoto action_7
action_111 (8) = happyGoto action_8
action_111 (9) = happyGoto action_9
action_111 (10) = happyGoto action_10
action_111 (11) = happyGoto action_11
action_111 (14) = happyGoto action_12
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (26) = happyShift action_13
action_112 (29) = happyShift action_14
action_112 (30) = happyShift action_15
action_112 (33) = happyShift action_16
action_112 (38) = happyShift action_17
action_112 (40) = happyShift action_18
action_112 (41) = happyShift action_19
action_112 (42) = happyShift action_20
action_112 (49) = happyShift action_21
action_112 (53) = happyShift action_22
action_112 (54) = happyShift action_23
action_112 (55) = happyShift action_24
action_112 (56) = happyShift action_25
action_112 (71) = happyShift action_26
action_112 (76) = happyShift action_27
action_112 (5) = happyGoto action_113
action_112 (6) = happyGoto action_6
action_112 (7) = happyGoto action_7
action_112 (8) = happyGoto action_8
action_112 (9) = happyGoto action_9
action_112 (10) = happyGoto action_10
action_112 (11) = happyGoto action_11
action_112 (14) = happyGoto action_12
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_15

action_114 _ = happyReduce_16

action_115 _ = happyReduce_21

action_116 (75) = happyShift action_107
action_116 (25) = happyGoto action_148
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_59

action_118 _ = happyReduce_61

action_119 (36) = happyShift action_128
action_119 (37) = happyShift action_129
action_119 _ = happyReduce_41

action_120 _ = happyReduce_57

action_121 (70) = happyShift action_60
action_121 (75) = happyShift action_147
action_121 (18) = happyGoto action_146
action_121 _ = happyFail (happyExpListPerState 121)

action_122 _ = happyReduce_48

action_123 _ = happyReduce_49

action_124 _ = happyReduce_50

action_125 _ = happyReduce_51

action_126 _ = happyReduce_52

action_127 _ = happyReduce_53

action_128 (35) = happyShift action_100
action_128 (70) = happyShift action_60
action_128 (16) = happyGoto action_145
action_128 (17) = happyGoto action_97
action_128 (18) = happyGoto action_98
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (35) = happyShift action_100
action_129 (70) = happyShift action_60
action_129 (16) = happyGoto action_144
action_129 (17) = happyGoto action_97
action_129 (18) = happyGoto action_98
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (35) = happyShift action_100
action_130 (70) = happyShift action_60
action_130 (16) = happyGoto action_96
action_130 (17) = happyGoto action_97
action_130 (18) = happyGoto action_98
action_130 (24) = happyGoto action_143
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (26) = happyShift action_13
action_131 (29) = happyShift action_14
action_131 (30) = happyShift action_15
action_131 (33) = happyShift action_16
action_131 (38) = happyShift action_17
action_131 (40) = happyShift action_18
action_131 (41) = happyShift action_19
action_131 (42) = happyShift action_20
action_131 (49) = happyShift action_21
action_131 (53) = happyShift action_22
action_131 (54) = happyShift action_23
action_131 (55) = happyShift action_24
action_131 (56) = happyShift action_25
action_131 (71) = happyShift action_26
action_131 (76) = happyShift action_27
action_131 (5) = happyGoto action_142
action_131 (6) = happyGoto action_6
action_131 (7) = happyGoto action_7
action_131 (8) = happyGoto action_8
action_131 (9) = happyGoto action_9
action_131 (10) = happyGoto action_10
action_131 (11) = happyGoto action_11
action_131 (14) = happyGoto action_12
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (26) = happyShift action_13
action_132 (29) = happyShift action_14
action_132 (30) = happyShift action_15
action_132 (33) = happyShift action_16
action_132 (38) = happyShift action_17
action_132 (40) = happyShift action_18
action_132 (41) = happyShift action_19
action_132 (42) = happyShift action_20
action_132 (49) = happyShift action_21
action_132 (53) = happyShift action_22
action_132 (54) = happyShift action_23
action_132 (55) = happyShift action_24
action_132 (56) = happyShift action_25
action_132 (71) = happyShift action_26
action_132 (76) = happyShift action_27
action_132 (5) = happyGoto action_141
action_132 (6) = happyGoto action_6
action_132 (7) = happyGoto action_7
action_132 (8) = happyGoto action_8
action_132 (9) = happyGoto action_9
action_132 (10) = happyGoto action_10
action_132 (11) = happyGoto action_11
action_132 (14) = happyGoto action_12
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (26) = happyShift action_13
action_133 (29) = happyShift action_14
action_133 (30) = happyShift action_15
action_133 (33) = happyShift action_16
action_133 (38) = happyShift action_17
action_133 (40) = happyShift action_18
action_133 (41) = happyShift action_19
action_133 (42) = happyShift action_20
action_133 (49) = happyShift action_21
action_133 (53) = happyShift action_22
action_133 (54) = happyShift action_23
action_133 (55) = happyShift action_24
action_133 (56) = happyShift action_25
action_133 (71) = happyShift action_26
action_133 (76) = happyShift action_27
action_133 (5) = happyGoto action_140
action_133 (6) = happyGoto action_6
action_133 (7) = happyGoto action_7
action_133 (8) = happyGoto action_8
action_133 (9) = happyGoto action_9
action_133 (10) = happyGoto action_10
action_133 (11) = happyGoto action_11
action_133 (14) = happyGoto action_12
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (70) = happyShift action_60
action_134 (18) = happyGoto action_139
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (26) = happyShift action_13
action_135 (29) = happyShift action_14
action_135 (30) = happyShift action_15
action_135 (33) = happyShift action_16
action_135 (38) = happyShift action_17
action_135 (40) = happyShift action_18
action_135 (41) = happyShift action_19
action_135 (42) = happyShift action_20
action_135 (49) = happyShift action_21
action_135 (53) = happyShift action_22
action_135 (54) = happyShift action_23
action_135 (55) = happyShift action_24
action_135 (56) = happyShift action_25
action_135 (71) = happyShift action_26
action_135 (76) = happyShift action_27
action_135 (5) = happyGoto action_138
action_135 (6) = happyGoto action_6
action_135 (7) = happyGoto action_7
action_135 (8) = happyGoto action_8
action_135 (9) = happyGoto action_9
action_135 (10) = happyGoto action_10
action_135 (11) = happyGoto action_11
action_135 (14) = happyGoto action_12
action_135 _ = happyFail (happyExpListPerState 135)

action_136 _ = happyReduce_34

action_137 _ = happyReduce_1

action_138 _ = happyReduce_26

action_139 (58) = happyShift action_149
action_139 _ = happyFail (happyExpListPerState 139)

action_140 _ = happyReduce_27

action_141 _ = happyReduce_28

action_142 _ = happyReduce_29

action_143 _ = happyReduce_63

action_144 (36) = happyShift action_128
action_144 (37) = happyShift action_129
action_144 _ = happyReduce_43

action_145 (36) = happyShift action_128
action_145 (37) = happyShift action_129
action_145 _ = happyReduce_42

action_146 _ = happyReduce_46

action_147 _ = happyReduce_45

action_148 _ = happyReduce_65

action_149 (45) = happyShift action_150
action_149 _ = happyFail (happyExpListPerState 149)

action_150 (68) = happyShift action_151
action_150 _ = happyFail (happyExpListPerState 150)

action_151 (70) = happyShift action_60
action_151 (18) = happyGoto action_152
action_151 _ = happyFail (happyExpListPerState 151)

action_152 _ = happyReduce_31

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
		 (Set happy_var_1
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
	(HappyAbsSyn18  happy_var_3) `HappyStk`
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
		 (Union happy_var_2 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Intersection happy_var_2 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Difference happy_var_2 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (JoinStandard happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 6 11 happyReduction_26
happyReduction_26 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinInner happy_var_4 happy_var_5 happy_var_6
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
		 (JoinLeft happy_var_4 happy_var_5 happy_var_6
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
		 (JoinRight happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 6 11 happyReduction_29
happyReduction_29 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinOuter happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 11 happyReduction_30
happyReduction_30 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (JoinFull happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 7 12 happyReduction_31
happyReduction_31 ((HappyAbsSyn18  happy_var_7) `HappyStk`
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

happyReduce_32 = happySpecReduce_3  13 happyReduction_32
happyReduction_32 (HappyAbsSyn18  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn13
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 4 14 happyReduction_33
happyReduction_33 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 5 14 happyReduction_34
happyReduction_34 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (OrderByCol happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_3  14 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  14 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  14 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (Last happy_var_2 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_2  14 happyReduction_38
happyReduction_38 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (Unique happy_var_2
	)
happyReduction_38 _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  15 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn15
		 (Asc
	)

happyReduce_40 = happySpecReduce_1  15 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn15
		 (Desc
	)

happyReduce_41 = happySpecReduce_2  16 happyReduction_41
happyReduction_41 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  16 happyReduction_42
happyReduction_42 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (And happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  16 happyReduction_43
happyReduction_43 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Or happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  16 happyReduction_44
happyReduction_44 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Comparison happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  17 happyReduction_45
happyReduction_45 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  17 happyReduction_46
happyReduction_46 (HappyAbsSyn18  happy_var_3)
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  18 happyReduction_47
happyReduction_47 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  19 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn19
		 (Eq
	)

happyReduce_49 = happySpecReduce_1  19 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn19
		 (LessThan
	)

happyReduce_50 = happySpecReduce_1  19 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn19
		 (GreaterThan
	)

happyReduce_51 = happySpecReduce_1  19 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn19
		 (LessThanEq
	)

happyReduce_52 = happySpecReduce_1  19 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn19
		 (GreaterThanEq
	)

happyReduce_53 = happySpecReduce_1  19 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn19
		 (NotEq
	)

happyReduce_54 = happySpecReduce_2  20 happyReduction_54
happyReduction_54 _
	_
	 =  HappyAbsSyn20
		 ([]
	)

happyReduce_55 = happySpecReduce_3  20 happyReduction_55
happyReduction_55 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_2  21 happyReduction_56
happyReduction_56 _
	_
	 =  HappyAbsSyn21
		 ([]
	)

happyReduce_57 = happySpecReduce_3  21 happyReduction_57
happyReduction_57 _
	(HappyAbsSyn24  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (happy_var_2
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_2  22 happyReduction_58
happyReduction_58 _
	_
	 =  HappyAbsSyn22
		 ([]
	)

happyReduce_59 = happySpecReduce_3  22 happyReduction_59
happyReduction_59 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (happy_var_2
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  23 happyReduction_60
happyReduction_60 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1]
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  23 happyReduction_61
happyReduction_61 (HappyAbsSyn23  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  24 happyReduction_62
happyReduction_62 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1]
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  24 happyReduction_63
happyReduction_63 (HappyAbsSyn24  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  25 happyReduction_64
happyReduction_64 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn25
		 ([happy_var_1]
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_3  25 happyReduction_65
happyReduction_65 (HappyAbsSyn25  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn25
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 77 77 notHappyAtAll (HappyState action) sts stk []

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
	TokenIntersection _ -> cont 40;
	TokenDifference _ -> cont 41;
	TokenJoin _ -> cont 42;
	TokenInner _ -> cont 43;
	TokenLeft _ -> cont 44;
	TokenRight _ -> cont 45;
	TokenOuter _ -> cont 46;
	TokenFull _ -> cont 47;
	TokenOn _ -> cont 48;
	TokenOrder _ -> cont 49;
	TokenBy _ -> cont 50;
	TokenAsc _ -> cont 51;
	TokenDesc _ -> cont 52;
	TokenLimit _ -> cont 53;
	TokenOffset _ -> cont 54;
	TokenLast _ -> cont 55;
	TokenUnique _ -> cont 56;
	TokenAssign _ -> cont 57;
	TokenEq _ -> cont 58;
	TokenLessThan _ -> cont 59;
	TokenGreaterThan _ -> cont 60;
	TokenLessThanEq _ -> cont 61;
	TokenGreaterThanEq _ -> cont 62;
	TokenNotEq _ -> cont 63;
	TokenSep _ -> cont 64;
	TokenLSquare _ -> cont 65;
	TokenRSquare _ -> cont 66;
	TokenComma _ -> cont 67;
	TokenDot _ -> cont 68;
	TokenAst _ -> cont 69;
	TokenAt _ -> cont 70;
	TokenLParen _ -> cont 71;
	TokenRParen _ -> cont 72;
	TokenInt  _ happy_dollar_dollar -> cont 73;
	TokenFilename _ happy_dollar_dollar -> cont 74;
	TokenStr _ happy_dollar_dollar -> cont 75;
	TokenVar _ happy_dollar_dollar -> cont 76;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 77 tk tks = happyError' (tks, explist)
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
                   | Set SetFunction
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

data SetFunction = Union TableType TableType
                 | Intersection TableType TableType
                 | Difference TableType TableType
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
                    | Unique TableType
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

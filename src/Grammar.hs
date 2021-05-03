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
happyExpList = Happy_Data_Array.listArray (0,586) ([0,3072,0,0,0,0,256,0,0,0,0,0,0,0,256,0,0,0,0,0,0,41266,61699,32769,16,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,544,0,0,3,0,0,0,12800,931,497,4226,0,19584,16616,124,1056,0,4896,4154,31,264,0,33992,50190,7,66,0,41266,61823,32769,16,0,0,128,0,0,0,0,0,8192,0,0,0,0,2048,0,0,0,0,512,0,19584,16616,124,1056,0,4896,4154,31,264,0,33992,50190,7,66,0,0,0,0,0,0,0,32768,0,0,8192,14867,7952,2048,1,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,4896,4154,31,264,0,33992,50190,7,66,0,41266,61699,32769,16,0,0,768,128,0,8192,14867,7952,2048,1,0,0,2,0,0,0,32768,0,0,0,0,8192,0,0,0,0,2048,0,0,0,33992,50190,7,66,0,41266,61699,32769,16,32768,59468,31808,8192,4,8192,14867,7952,2048,1,0,0,0,0,0,12800,929,497,4224,0,0,0,32768,0,0,0,0,16384,4,0,0,0,2048,0,0,0,0,16384,0,32768,59596,31808,8192,4,8192,14899,7952,2048,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,2,0,0,0,8192,0,51200,3716,1988,16896,0,0,0,0,2052,0,0,0,0,2,0,0,0,16384,0,0,0,0,0,0,0,41266,61699,32769,16,0,256,0,4352,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4896,4154,31,264,0,0,32,0,0,0,0,8,0,0,0,0,2,0,0,0,32768,0,0,0,0,0,0,0,0,12800,929,497,4224,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,768,0,0,0,0,4896,4154,31,264,0,0,0,0,0,0,41266,61699,32769,16,0,0,0,1024,0,8192,14867,7952,2048,1,51200,3716,1988,16896,0,12800,929,497,4224,0,0,0,0,0,0,32768,1,32768,0,0,0,0,0,0,0,0,0,252,0,0,0,0,256,0,0,64,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,4096,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,12800,929,497,4224,0,19584,16616,124,1056,0,4896,4154,31,264,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,4,0,4096,0,0,1,0,1024,0,16384,0,32768,59468,31808,8192,4,8192,14867,7952,2048,1,51200,3716,1988,16896,0,0,0,0,64,0,19584,16616,124,1056,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,16,0,0,0,0,16,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectFunction","DeleteFunction","InsertFunction","SetFunction","JoinFunction","TableComparison","TableColumnRef","FormatFunction","Direction","Predicate","Comparison","ColumnRef","ComparisonOperator","List__ColumnRef__","List__Predicate__","List__Str__","ListCont__ColumnRef__","ListCont__Predicate__","ListCont__Str__","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Union","All","Intersection","Difference","Join","Inner","Left","Right","Outer","Full","On","Order","By","Asc","Desc","Limit","Offset","Last","Unique","Transpose","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'.'","'*'","\"@\"","'('","')'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 78
        bit_end = (st Prelude.+ 1) Prelude.* 78
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..77]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (27) = happyShift action_2
action_0 (28) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (27) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (77) = happyShift action_29
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (78) = happyAccept
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
action_4 (57) = happyShift action_26
action_4 (72) = happyShift action_27
action_4 (77) = happyShift action_28
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (7) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 (9) = happyGoto action_9
action_4 (10) = happyGoto action_10
action_4 (11) = happyGoto action_11
action_4 (14) = happyGoto action_12
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (65) = happyShift action_56
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_7

action_8 _ = happyReduce_9

action_9 _ = happyReduce_8

action_10 _ = happyReduce_10

action_11 _ = happyReduce_11

action_12 _ = happyReduce_12

action_13 (75) = happyShift action_55
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (66) = happyShift action_50
action_14 (70) = happyShift action_54
action_14 (20) = happyGoto action_53
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (31) = happyShift action_51
action_15 (32) = happyShift action_52
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_13
action_16 (29) = happyShift action_14
action_16 (30) = happyShift action_15
action_16 (33) = happyShift action_16
action_16 (34) = happyShift action_49
action_16 (38) = happyShift action_17
action_16 (40) = happyShift action_18
action_16 (41) = happyShift action_19
action_16 (42) = happyShift action_20
action_16 (49) = happyShift action_21
action_16 (53) = happyShift action_22
action_16 (54) = happyShift action_23
action_16 (55) = happyShift action_24
action_16 (56) = happyShift action_25
action_16 (57) = happyShift action_26
action_16 (66) = happyShift action_50
action_16 (72) = happyShift action_27
action_16 (77) = happyShift action_28
action_16 (5) = happyGoto action_47
action_16 (6) = happyGoto action_6
action_16 (7) = happyGoto action_7
action_16 (8) = happyGoto action_8
action_16 (9) = happyGoto action_9
action_16 (10) = happyGoto action_10
action_16 (11) = happyGoto action_11
action_16 (14) = happyGoto action_12
action_16 (20) = happyGoto action_48
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
action_17 (57) = happyShift action_26
action_17 (72) = happyShift action_27
action_17 (77) = happyShift action_28
action_17 (5) = happyGoto action_46
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
action_18 (57) = happyShift action_26
action_18 (72) = happyShift action_27
action_18 (77) = happyShift action_28
action_18 (5) = happyGoto action_45
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
action_19 (57) = happyShift action_26
action_19 (72) = happyShift action_27
action_19 (77) = happyShift action_28
action_19 (5) = happyGoto action_44
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
action_20 (43) = happyShift action_39
action_20 (44) = happyShift action_40
action_20 (45) = happyShift action_41
action_20 (46) = happyShift action_42
action_20 (47) = happyShift action_43
action_20 (49) = happyShift action_21
action_20 (53) = happyShift action_22
action_20 (54) = happyShift action_23
action_20 (55) = happyShift action_24
action_20 (56) = happyShift action_25
action_20 (57) = happyShift action_26
action_20 (72) = happyShift action_27
action_20 (77) = happyShift action_28
action_20 (5) = happyGoto action_38
action_20 (6) = happyGoto action_6
action_20 (7) = happyGoto action_7
action_20 (8) = happyGoto action_8
action_20 (9) = happyGoto action_9
action_20 (10) = happyGoto action_10
action_20 (11) = happyGoto action_11
action_20 (14) = happyGoto action_12
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (50) = happyShift action_37
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (74) = happyShift action_36
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (74) = happyShift action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (74) = happyShift action_34
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
action_25 (57) = happyShift action_26
action_25 (72) = happyShift action_27
action_25 (77) = happyShift action_28
action_25 (5) = happyGoto action_33
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
action_26 (57) = happyShift action_26
action_26 (72) = happyShift action_27
action_26 (77) = happyShift action_28
action_26 (5) = happyGoto action_32
action_26 (6) = happyGoto action_6
action_26 (7) = happyGoto action_7
action_26 (8) = happyGoto action_8
action_26 (9) = happyGoto action_9
action_26 (10) = happyGoto action_10
action_26 (11) = happyGoto action_11
action_26 (14) = happyGoto action_12
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (26) = happyShift action_13
action_27 (29) = happyShift action_14
action_27 (30) = happyShift action_15
action_27 (33) = happyShift action_16
action_27 (38) = happyShift action_17
action_27 (40) = happyShift action_18
action_27 (41) = happyShift action_19
action_27 (42) = happyShift action_20
action_27 (49) = happyShift action_21
action_27 (53) = happyShift action_22
action_27 (54) = happyShift action_23
action_27 (55) = happyShift action_24
action_27 (56) = happyShift action_25
action_27 (57) = happyShift action_26
action_27 (72) = happyShift action_27
action_27 (77) = happyShift action_28
action_27 (5) = happyGoto action_31
action_27 (6) = happyGoto action_6
action_27 (7) = happyGoto action_7
action_27 (8) = happyGoto action_8
action_27 (9) = happyGoto action_9
action_27 (10) = happyGoto action_10
action_27 (11) = happyGoto action_11
action_27 (14) = happyGoto action_12
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_4

action_29 (58) = happyShift action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (26) = happyShift action_13
action_30 (29) = happyShift action_14
action_30 (30) = happyShift action_15
action_30 (33) = happyShift action_16
action_30 (38) = happyShift action_17
action_30 (40) = happyShift action_18
action_30 (41) = happyShift action_19
action_30 (42) = happyShift action_20
action_30 (49) = happyShift action_21
action_30 (53) = happyShift action_22
action_30 (54) = happyShift action_23
action_30 (55) = happyShift action_24
action_30 (56) = happyShift action_25
action_30 (57) = happyShift action_26
action_30 (72) = happyShift action_27
action_30 (77) = happyShift action_28
action_30 (5) = happyGoto action_88
action_30 (6) = happyGoto action_6
action_30 (7) = happyGoto action_7
action_30 (8) = happyGoto action_8
action_30 (9) = happyGoto action_9
action_30 (10) = happyGoto action_10
action_30 (11) = happyGoto action_11
action_30 (14) = happyGoto action_12
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (73) = happyShift action_87
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_39

action_33 _ = happyReduce_38

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
action_34 (57) = happyShift action_26
action_34 (72) = happyShift action_27
action_34 (77) = happyShift action_28
action_34 (5) = happyGoto action_86
action_34 (6) = happyGoto action_6
action_34 (7) = happyGoto action_7
action_34 (8) = happyGoto action_8
action_34 (9) = happyGoto action_9
action_34 (10) = happyGoto action_10
action_34 (11) = happyGoto action_11
action_34 (14) = happyGoto action_12
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (26) = happyShift action_13
action_35 (29) = happyShift action_14
action_35 (30) = happyShift action_15
action_35 (33) = happyShift action_16
action_35 (38) = happyShift action_17
action_35 (40) = happyShift action_18
action_35 (41) = happyShift action_19
action_35 (42) = happyShift action_20
action_35 (49) = happyShift action_21
action_35 (53) = happyShift action_22
action_35 (54) = happyShift action_23
action_35 (55) = happyShift action_24
action_35 (56) = happyShift action_25
action_35 (57) = happyShift action_26
action_35 (72) = happyShift action_27
action_35 (77) = happyShift action_28
action_35 (5) = happyGoto action_85
action_35 (6) = happyGoto action_6
action_35 (7) = happyGoto action_7
action_35 (8) = happyGoto action_8
action_35 (9) = happyGoto action_9
action_35 (10) = happyGoto action_10
action_35 (11) = happyGoto action_11
action_35 (14) = happyGoto action_12
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
action_36 (57) = happyShift action_26
action_36 (72) = happyShift action_27
action_36 (77) = happyShift action_28
action_36 (5) = happyGoto action_84
action_36 (6) = happyGoto action_6
action_36 (7) = happyGoto action_7
action_36 (8) = happyGoto action_8
action_36 (9) = happyGoto action_9
action_36 (10) = happyGoto action_10
action_36 (11) = happyGoto action_11
action_36 (14) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (51) = happyShift action_82
action_37 (52) = happyShift action_83
action_37 (66) = happyShift action_50
action_37 (15) = happyGoto action_80
action_37 (20) = happyGoto action_81
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (26) = happyShift action_13
action_38 (29) = happyShift action_14
action_38 (30) = happyShift action_15
action_38 (33) = happyShift action_16
action_38 (38) = happyShift action_17
action_38 (40) = happyShift action_18
action_38 (41) = happyShift action_19
action_38 (42) = happyShift action_20
action_38 (49) = happyShift action_21
action_38 (53) = happyShift action_22
action_38 (54) = happyShift action_23
action_38 (55) = happyShift action_24
action_38 (56) = happyShift action_25
action_38 (57) = happyShift action_26
action_38 (72) = happyShift action_27
action_38 (77) = happyShift action_28
action_38 (5) = happyGoto action_79
action_38 (6) = happyGoto action_6
action_38 (7) = happyGoto action_7
action_38 (8) = happyGoto action_8
action_38 (9) = happyGoto action_9
action_38 (10) = happyGoto action_10
action_38 (11) = happyGoto action_11
action_38 (14) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (48) = happyShift action_78
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (48) = happyShift action_77
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (48) = happyShift action_76
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (48) = happyShift action_75
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
action_43 (57) = happyShift action_26
action_43 (72) = happyShift action_27
action_43 (77) = happyShift action_28
action_43 (5) = happyGoto action_74
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
action_44 (57) = happyShift action_26
action_44 (72) = happyShift action_27
action_44 (77) = happyShift action_28
action_44 (5) = happyGoto action_73
action_44 (6) = happyGoto action_6
action_44 (7) = happyGoto action_7
action_44 (8) = happyGoto action_8
action_44 (9) = happyGoto action_9
action_44 (10) = happyGoto action_10
action_44 (11) = happyGoto action_11
action_44 (14) = happyGoto action_12
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (26) = happyShift action_13
action_45 (29) = happyShift action_14
action_45 (30) = happyShift action_15
action_45 (33) = happyShift action_16
action_45 (38) = happyShift action_17
action_45 (40) = happyShift action_18
action_45 (41) = happyShift action_19
action_45 (42) = happyShift action_20
action_45 (49) = happyShift action_21
action_45 (53) = happyShift action_22
action_45 (54) = happyShift action_23
action_45 (55) = happyShift action_24
action_45 (56) = happyShift action_25
action_45 (57) = happyShift action_26
action_45 (72) = happyShift action_27
action_45 (77) = happyShift action_28
action_45 (5) = happyGoto action_72
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
action_46 (38) = happyShift action_17
action_46 (40) = happyShift action_18
action_46 (41) = happyShift action_19
action_46 (42) = happyShift action_20
action_46 (49) = happyShift action_21
action_46 (53) = happyShift action_22
action_46 (54) = happyShift action_23
action_46 (55) = happyShift action_24
action_46 (56) = happyShift action_25
action_46 (57) = happyShift action_26
action_46 (72) = happyShift action_27
action_46 (77) = happyShift action_28
action_46 (5) = happyGoto action_71
action_46 (6) = happyGoto action_6
action_46 (7) = happyGoto action_7
action_46 (8) = happyGoto action_8
action_46 (9) = happyGoto action_9
action_46 (10) = happyGoto action_10
action_46 (11) = happyGoto action_11
action_46 (14) = happyGoto action_12
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_17

action_48 (26) = happyShift action_13
action_48 (29) = happyShift action_14
action_48 (30) = happyShift action_15
action_48 (33) = happyShift action_16
action_48 (38) = happyShift action_17
action_48 (40) = happyShift action_18
action_48 (41) = happyShift action_19
action_48 (42) = happyShift action_20
action_48 (49) = happyShift action_21
action_48 (53) = happyShift action_22
action_48 (54) = happyShift action_23
action_48 (55) = happyShift action_24
action_48 (56) = happyShift action_25
action_48 (57) = happyShift action_26
action_48 (72) = happyShift action_27
action_48 (77) = happyShift action_28
action_48 (5) = happyGoto action_70
action_48 (6) = happyGoto action_6
action_48 (7) = happyGoto action_7
action_48 (8) = happyGoto action_8
action_48 (9) = happyGoto action_9
action_48 (10) = happyGoto action_10
action_48 (11) = happyGoto action_11
action_48 (14) = happyGoto action_12
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (66) = happyShift action_69
action_49 (21) = happyGoto action_68
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (67) = happyShift action_67
action_50 (71) = happyShift action_62
action_50 (18) = happyGoto action_65
action_50 (23) = happyGoto action_66
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (66) = happyShift action_64
action_51 (22) = happyGoto action_63
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (71) = happyShift action_62
action_52 (18) = happyGoto action_61
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (26) = happyShift action_13
action_53 (29) = happyShift action_14
action_53 (30) = happyShift action_15
action_53 (33) = happyShift action_16
action_53 (34) = happyShift action_60
action_53 (38) = happyShift action_17
action_53 (40) = happyShift action_18
action_53 (41) = happyShift action_19
action_53 (42) = happyShift action_20
action_53 (49) = happyShift action_21
action_53 (53) = happyShift action_22
action_53 (54) = happyShift action_23
action_53 (55) = happyShift action_24
action_53 (56) = happyShift action_25
action_53 (57) = happyShift action_26
action_53 (72) = happyShift action_27
action_53 (77) = happyShift action_28
action_53 (5) = happyGoto action_59
action_53 (6) = happyGoto action_6
action_53 (7) = happyGoto action_7
action_53 (8) = happyGoto action_8
action_53 (9) = happyGoto action_9
action_53 (10) = happyGoto action_10
action_53 (11) = happyGoto action_11
action_53 (14) = happyGoto action_12
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (26) = happyShift action_13
action_54 (29) = happyShift action_14
action_54 (30) = happyShift action_15
action_54 (33) = happyShift action_16
action_54 (34) = happyShift action_58
action_54 (38) = happyShift action_17
action_54 (40) = happyShift action_18
action_54 (41) = happyShift action_19
action_54 (42) = happyShift action_20
action_54 (49) = happyShift action_21
action_54 (53) = happyShift action_22
action_54 (54) = happyShift action_23
action_54 (55) = happyShift action_24
action_54 (56) = happyShift action_25
action_54 (57) = happyShift action_26
action_54 (72) = happyShift action_27
action_54 (77) = happyShift action_28
action_54 (5) = happyGoto action_57
action_54 (6) = happyGoto action_6
action_54 (7) = happyGoto action_7
action_54 (8) = happyGoto action_8
action_54 (9) = happyGoto action_9
action_54 (10) = happyGoto action_10
action_54 (11) = happyGoto action_11
action_54 (14) = happyGoto action_12
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_3

action_56 _ = happyReduce_2

action_57 _ = happyReduce_13

action_58 (66) = happyShift action_69
action_58 (21) = happyGoto action_114
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_14

action_60 (66) = happyShift action_69
action_60 (21) = happyGoto action_113
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (76) = happyShift action_112
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (74) = happyShift action_111
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (26) = happyShift action_13
action_63 (29) = happyShift action_14
action_63 (30) = happyShift action_15
action_63 (33) = happyShift action_16
action_63 (38) = happyShift action_17
action_63 (40) = happyShift action_18
action_63 (41) = happyShift action_19
action_63 (42) = happyShift action_20
action_63 (49) = happyShift action_21
action_63 (53) = happyShift action_22
action_63 (54) = happyShift action_23
action_63 (55) = happyShift action_24
action_63 (56) = happyShift action_25
action_63 (57) = happyShift action_26
action_63 (72) = happyShift action_27
action_63 (77) = happyShift action_28
action_63 (5) = happyGoto action_110
action_63 (6) = happyGoto action_6
action_63 (7) = happyGoto action_7
action_63 (8) = happyGoto action_8
action_63 (9) = happyGoto action_9
action_63 (10) = happyGoto action_10
action_63 (11) = happyGoto action_11
action_63 (14) = happyGoto action_12
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (67) = happyShift action_108
action_64 (76) = happyShift action_109
action_64 (25) = happyGoto action_107
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (68) = happyShift action_106
action_65 _ = happyReduce_61

action_66 (67) = happyShift action_105
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_55

action_68 (26) = happyShift action_13
action_68 (29) = happyShift action_14
action_68 (30) = happyShift action_15
action_68 (33) = happyShift action_16
action_68 (38) = happyShift action_17
action_68 (40) = happyShift action_18
action_68 (41) = happyShift action_19
action_68 (42) = happyShift action_20
action_68 (49) = happyShift action_21
action_68 (53) = happyShift action_22
action_68 (54) = happyShift action_23
action_68 (55) = happyShift action_24
action_68 (56) = happyShift action_25
action_68 (57) = happyShift action_26
action_68 (72) = happyShift action_27
action_68 (77) = happyShift action_28
action_68 (5) = happyGoto action_104
action_68 (6) = happyGoto action_6
action_68 (7) = happyGoto action_7
action_68 (8) = happyGoto action_8
action_68 (9) = happyGoto action_9
action_68 (10) = happyGoto action_10
action_68 (11) = happyGoto action_11
action_68 (14) = happyGoto action_12
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (35) = happyShift action_102
action_69 (67) = happyShift action_103
action_69 (71) = happyShift action_62
action_69 (16) = happyGoto action_98
action_69 (17) = happyGoto action_99
action_69 (18) = happyGoto action_100
action_69 (24) = happyGoto action_101
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_18

action_71 _ = happyReduce_22

action_72 _ = happyReduce_23

action_73 _ = happyReduce_24

action_74 (26) = happyShift action_13
action_74 (29) = happyShift action_14
action_74 (30) = happyShift action_15
action_74 (33) = happyShift action_16
action_74 (38) = happyShift action_17
action_74 (40) = happyShift action_18
action_74 (41) = happyShift action_19
action_74 (42) = happyShift action_20
action_74 (49) = happyShift action_21
action_74 (53) = happyShift action_22
action_74 (54) = happyShift action_23
action_74 (55) = happyShift action_24
action_74 (56) = happyShift action_25
action_74 (57) = happyShift action_26
action_74 (72) = happyShift action_27
action_74 (77) = happyShift action_28
action_74 (5) = happyGoto action_97
action_74 (6) = happyGoto action_6
action_74 (7) = happyGoto action_7
action_74 (8) = happyGoto action_8
action_74 (9) = happyGoto action_9
action_74 (10) = happyGoto action_10
action_74 (11) = happyGoto action_11
action_74 (14) = happyGoto action_12
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (44) = happyShift action_93
action_75 (12) = happyGoto action_96
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (44) = happyShift action_93
action_76 (12) = happyGoto action_95
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (44) = happyShift action_93
action_77 (12) = happyGoto action_94
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (44) = happyShift action_93
action_78 (12) = happyGoto action_92
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_25

action_80 (26) = happyShift action_13
action_80 (29) = happyShift action_14
action_80 (30) = happyShift action_15
action_80 (33) = happyShift action_16
action_80 (38) = happyShift action_17
action_80 (40) = happyShift action_18
action_80 (41) = happyShift action_19
action_80 (42) = happyShift action_20
action_80 (49) = happyShift action_21
action_80 (53) = happyShift action_22
action_80 (54) = happyShift action_23
action_80 (55) = happyShift action_24
action_80 (56) = happyShift action_25
action_80 (57) = happyShift action_26
action_80 (72) = happyShift action_27
action_80 (77) = happyShift action_28
action_80 (5) = happyGoto action_91
action_80 (6) = happyGoto action_6
action_80 (7) = happyGoto action_7
action_80 (8) = happyGoto action_8
action_80 (9) = happyGoto action_9
action_80 (10) = happyGoto action_10
action_80 (11) = happyGoto action_11
action_80 (14) = happyGoto action_12
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (51) = happyShift action_82
action_81 (52) = happyShift action_83
action_81 (15) = happyGoto action_90
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_40

action_83 _ = happyReduce_41

action_84 _ = happyReduce_35

action_85 _ = happyReduce_36

action_86 _ = happyReduce_37

action_87 _ = happyReduce_6

action_88 (65) = happyShift action_89
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (27) = happyShift action_2
action_89 (28) = happyShift action_4
action_89 (4) = happyGoto action_139
action_89 _ = happyFail (happyExpListPerState 89)

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
action_90 (57) = happyShift action_26
action_90 (72) = happyShift action_27
action_90 (77) = happyShift action_28
action_90 (5) = happyGoto action_138
action_90 (6) = happyGoto action_6
action_90 (7) = happyGoto action_7
action_90 (8) = happyGoto action_8
action_90 (9) = happyGoto action_9
action_90 (10) = happyGoto action_10
action_90 (11) = happyGoto action_11
action_90 (14) = happyGoto action_12
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_33

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
action_92 (57) = happyShift action_26
action_92 (72) = happyShift action_27
action_92 (77) = happyShift action_28
action_92 (5) = happyGoto action_137
action_92 (6) = happyGoto action_6
action_92 (7) = happyGoto action_7
action_92 (8) = happyGoto action_8
action_92 (9) = happyGoto action_9
action_92 (10) = happyGoto action_10
action_92 (11) = happyGoto action_11
action_92 (14) = happyGoto action_12
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (69) = happyShift action_136
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
action_94 (57) = happyShift action_26
action_94 (72) = happyShift action_27
action_94 (77) = happyShift action_28
action_94 (5) = happyGoto action_135
action_94 (6) = happyGoto action_6
action_94 (7) = happyGoto action_7
action_94 (8) = happyGoto action_8
action_94 (9) = happyGoto action_9
action_94 (10) = happyGoto action_10
action_94 (11) = happyGoto action_11
action_94 (14) = happyGoto action_12
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (26) = happyShift action_13
action_95 (29) = happyShift action_14
action_95 (30) = happyShift action_15
action_95 (33) = happyShift action_16
action_95 (38) = happyShift action_17
action_95 (40) = happyShift action_18
action_95 (41) = happyShift action_19
action_95 (42) = happyShift action_20
action_95 (49) = happyShift action_21
action_95 (53) = happyShift action_22
action_95 (54) = happyShift action_23
action_95 (55) = happyShift action_24
action_95 (56) = happyShift action_25
action_95 (57) = happyShift action_26
action_95 (72) = happyShift action_27
action_95 (77) = happyShift action_28
action_95 (5) = happyGoto action_134
action_95 (6) = happyGoto action_6
action_95 (7) = happyGoto action_7
action_95 (8) = happyGoto action_8
action_95 (9) = happyGoto action_9
action_95 (10) = happyGoto action_10
action_95 (11) = happyGoto action_11
action_95 (14) = happyGoto action_12
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (26) = happyShift action_13
action_96 (29) = happyShift action_14
action_96 (30) = happyShift action_15
action_96 (33) = happyShift action_16
action_96 (38) = happyShift action_17
action_96 (40) = happyShift action_18
action_96 (41) = happyShift action_19
action_96 (42) = happyShift action_20
action_96 (49) = happyShift action_21
action_96 (53) = happyShift action_22
action_96 (54) = happyShift action_23
action_96 (55) = happyShift action_24
action_96 (56) = happyShift action_25
action_96 (57) = happyShift action_26
action_96 (72) = happyShift action_27
action_96 (77) = happyShift action_28
action_96 (5) = happyGoto action_133
action_96 (6) = happyGoto action_6
action_96 (7) = happyGoto action_7
action_96 (8) = happyGoto action_8
action_96 (9) = happyGoto action_9
action_96 (10) = happyGoto action_10
action_96 (11) = happyGoto action_11
action_96 (14) = happyGoto action_12
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_30

action_98 (36) = happyShift action_130
action_98 (37) = happyShift action_131
action_98 (68) = happyShift action_132
action_98 _ = happyReduce_63

action_99 _ = happyReduce_45

action_100 (59) = happyShift action_124
action_100 (60) = happyShift action_125
action_100 (61) = happyShift action_126
action_100 (62) = happyShift action_127
action_100 (63) = happyShift action_128
action_100 (64) = happyShift action_129
action_100 (19) = happyGoto action_123
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (67) = happyShift action_122
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (35) = happyShift action_102
action_102 (71) = happyShift action_62
action_102 (16) = happyGoto action_121
action_102 (17) = happyGoto action_99
action_102 (18) = happyGoto action_100
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_57

action_104 _ = happyReduce_19

action_105 _ = happyReduce_56

action_106 (71) = happyShift action_62
action_106 (18) = happyGoto action_65
action_106 (23) = happyGoto action_120
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (67) = happyShift action_119
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_59

action_109 (68) = happyShift action_118
action_109 _ = happyReduce_65

action_110 _ = happyReduce_20

action_111 _ = happyReduce_48

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
action_112 (57) = happyShift action_26
action_112 (72) = happyShift action_27
action_112 (77) = happyShift action_28
action_112 (5) = happyGoto action_117
action_112 (6) = happyGoto action_6
action_112 (7) = happyGoto action_7
action_112 (8) = happyGoto action_8
action_112 (9) = happyGoto action_9
action_112 (10) = happyGoto action_10
action_112 (11) = happyGoto action_11
action_112 (14) = happyGoto action_12
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (26) = happyShift action_13
action_113 (29) = happyShift action_14
action_113 (30) = happyShift action_15
action_113 (33) = happyShift action_16
action_113 (38) = happyShift action_17
action_113 (40) = happyShift action_18
action_113 (41) = happyShift action_19
action_113 (42) = happyShift action_20
action_113 (49) = happyShift action_21
action_113 (53) = happyShift action_22
action_113 (54) = happyShift action_23
action_113 (55) = happyShift action_24
action_113 (56) = happyShift action_25
action_113 (57) = happyShift action_26
action_113 (72) = happyShift action_27
action_113 (77) = happyShift action_28
action_113 (5) = happyGoto action_116
action_113 (6) = happyGoto action_6
action_113 (7) = happyGoto action_7
action_113 (8) = happyGoto action_8
action_113 (9) = happyGoto action_9
action_113 (10) = happyGoto action_10
action_113 (11) = happyGoto action_11
action_113 (14) = happyGoto action_12
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (26) = happyShift action_13
action_114 (29) = happyShift action_14
action_114 (30) = happyShift action_15
action_114 (33) = happyShift action_16
action_114 (38) = happyShift action_17
action_114 (40) = happyShift action_18
action_114 (41) = happyShift action_19
action_114 (42) = happyShift action_20
action_114 (49) = happyShift action_21
action_114 (53) = happyShift action_22
action_114 (54) = happyShift action_23
action_114 (55) = happyShift action_24
action_114 (56) = happyShift action_25
action_114 (57) = happyShift action_26
action_114 (72) = happyShift action_27
action_114 (77) = happyShift action_28
action_114 (5) = happyGoto action_115
action_114 (6) = happyGoto action_6
action_114 (7) = happyGoto action_7
action_114 (8) = happyGoto action_8
action_114 (9) = happyGoto action_9
action_114 (10) = happyGoto action_10
action_114 (11) = happyGoto action_11
action_114 (14) = happyGoto action_12
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_15

action_116 _ = happyReduce_16

action_117 _ = happyReduce_21

action_118 (76) = happyShift action_109
action_118 (25) = happyGoto action_150
action_118 _ = happyFail (happyExpListPerState 118)

action_119 _ = happyReduce_60

action_120 _ = happyReduce_62

action_121 (36) = happyShift action_130
action_121 (37) = happyShift action_131
action_121 _ = happyReduce_42

action_122 _ = happyReduce_58

action_123 (71) = happyShift action_62
action_123 (76) = happyShift action_149
action_123 (18) = happyGoto action_148
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_49

action_125 _ = happyReduce_50

action_126 _ = happyReduce_51

action_127 _ = happyReduce_52

action_128 _ = happyReduce_53

action_129 _ = happyReduce_54

action_130 (35) = happyShift action_102
action_130 (71) = happyShift action_62
action_130 (16) = happyGoto action_147
action_130 (17) = happyGoto action_99
action_130 (18) = happyGoto action_100
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (35) = happyShift action_102
action_131 (71) = happyShift action_62
action_131 (16) = happyGoto action_146
action_131 (17) = happyGoto action_99
action_131 (18) = happyGoto action_100
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (35) = happyShift action_102
action_132 (71) = happyShift action_62
action_132 (16) = happyGoto action_98
action_132 (17) = happyGoto action_99
action_132 (18) = happyGoto action_100
action_132 (24) = happyGoto action_145
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
action_133 (57) = happyShift action_26
action_133 (72) = happyShift action_27
action_133 (77) = happyShift action_28
action_133 (5) = happyGoto action_144
action_133 (6) = happyGoto action_6
action_133 (7) = happyGoto action_7
action_133 (8) = happyGoto action_8
action_133 (9) = happyGoto action_9
action_133 (10) = happyGoto action_10
action_133 (11) = happyGoto action_11
action_133 (14) = happyGoto action_12
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (26) = happyShift action_13
action_134 (29) = happyShift action_14
action_134 (30) = happyShift action_15
action_134 (33) = happyShift action_16
action_134 (38) = happyShift action_17
action_134 (40) = happyShift action_18
action_134 (41) = happyShift action_19
action_134 (42) = happyShift action_20
action_134 (49) = happyShift action_21
action_134 (53) = happyShift action_22
action_134 (54) = happyShift action_23
action_134 (55) = happyShift action_24
action_134 (56) = happyShift action_25
action_134 (57) = happyShift action_26
action_134 (72) = happyShift action_27
action_134 (77) = happyShift action_28
action_134 (5) = happyGoto action_143
action_134 (6) = happyGoto action_6
action_134 (7) = happyGoto action_7
action_134 (8) = happyGoto action_8
action_134 (9) = happyGoto action_9
action_134 (10) = happyGoto action_10
action_134 (11) = happyGoto action_11
action_134 (14) = happyGoto action_12
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
action_135 (57) = happyShift action_26
action_135 (72) = happyShift action_27
action_135 (77) = happyShift action_28
action_135 (5) = happyGoto action_142
action_135 (6) = happyGoto action_6
action_135 (7) = happyGoto action_7
action_135 (8) = happyGoto action_8
action_135 (9) = happyGoto action_9
action_135 (10) = happyGoto action_10
action_135 (11) = happyGoto action_11
action_135 (14) = happyGoto action_12
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (71) = happyShift action_62
action_136 (18) = happyGoto action_141
action_136 _ = happyFail (happyExpListPerState 136)

action_137 (26) = happyShift action_13
action_137 (29) = happyShift action_14
action_137 (30) = happyShift action_15
action_137 (33) = happyShift action_16
action_137 (38) = happyShift action_17
action_137 (40) = happyShift action_18
action_137 (41) = happyShift action_19
action_137 (42) = happyShift action_20
action_137 (49) = happyShift action_21
action_137 (53) = happyShift action_22
action_137 (54) = happyShift action_23
action_137 (55) = happyShift action_24
action_137 (56) = happyShift action_25
action_137 (57) = happyShift action_26
action_137 (72) = happyShift action_27
action_137 (77) = happyShift action_28
action_137 (5) = happyGoto action_140
action_137 (6) = happyGoto action_6
action_137 (7) = happyGoto action_7
action_137 (8) = happyGoto action_8
action_137 (9) = happyGoto action_9
action_137 (10) = happyGoto action_10
action_137 (11) = happyGoto action_11
action_137 (14) = happyGoto action_12
action_137 _ = happyFail (happyExpListPerState 137)

action_138 _ = happyReduce_34

action_139 _ = happyReduce_1

action_140 _ = happyReduce_26

action_141 (59) = happyShift action_151
action_141 _ = happyFail (happyExpListPerState 141)

action_142 _ = happyReduce_27

action_143 _ = happyReduce_28

action_144 _ = happyReduce_29

action_145 _ = happyReduce_64

action_146 (36) = happyShift action_130
action_146 (37) = happyShift action_131
action_146 _ = happyReduce_44

action_147 (36) = happyShift action_130
action_147 (37) = happyShift action_131
action_147 _ = happyReduce_43

action_148 _ = happyReduce_47

action_149 _ = happyReduce_46

action_150 _ = happyReduce_66

action_151 (45) = happyShift action_152
action_151 _ = happyFail (happyExpListPerState 151)

action_152 (69) = happyShift action_153
action_152 _ = happyFail (happyExpListPerState 152)

action_153 (71) = happyShift action_62
action_153 (18) = happyGoto action_154
action_153 _ = happyFail (happyExpListPerState 153)

action_154 _ = happyReduce_31

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

happyReduce_39 = happySpecReduce_2  14 happyReduction_39
happyReduction_39 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (Transpose happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  15 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn15
		 (Asc
	)

happyReduce_41 = happySpecReduce_1  15 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn15
		 (Desc
	)

happyReduce_42 = happySpecReduce_2  16 happyReduction_42
happyReduction_42 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  16 happyReduction_43
happyReduction_43 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (And happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  16 happyReduction_44
happyReduction_44 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Or happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  16 happyReduction_45
happyReduction_45 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Comparison happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  17 happyReduction_46
happyReduction_46 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  17 happyReduction_47
happyReduction_47 (HappyAbsSyn18  happy_var_3)
	(HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  18 happyReduction_48
happyReduction_48 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  19 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn19
		 (Eq
	)

happyReduce_50 = happySpecReduce_1  19 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn19
		 (LessThan
	)

happyReduce_51 = happySpecReduce_1  19 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn19
		 (GreaterThan
	)

happyReduce_52 = happySpecReduce_1  19 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn19
		 (LessThanEq
	)

happyReduce_53 = happySpecReduce_1  19 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn19
		 (GreaterThanEq
	)

happyReduce_54 = happySpecReduce_1  19 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn19
		 (NotEq
	)

happyReduce_55 = happySpecReduce_2  20 happyReduction_55
happyReduction_55 _
	_
	 =  HappyAbsSyn20
		 ([]
	)

happyReduce_56 = happySpecReduce_3  20 happyReduction_56
happyReduction_56 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_2  21 happyReduction_57
happyReduction_57 _
	_
	 =  HappyAbsSyn21
		 ([]
	)

happyReduce_58 = happySpecReduce_3  21 happyReduction_58
happyReduction_58 _
	(HappyAbsSyn24  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (happy_var_2
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_2  22 happyReduction_59
happyReduction_59 _
	_
	 =  HappyAbsSyn22
		 ([]
	)

happyReduce_60 = happySpecReduce_3  22 happyReduction_60
happyReduction_60 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (happy_var_2
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  23 happyReduction_61
happyReduction_61 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1]
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  23 happyReduction_62
happyReduction_62 (HappyAbsSyn23  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  24 happyReduction_63
happyReduction_63 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1]
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_3  24 happyReduction_64
happyReduction_64 (HappyAbsSyn24  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  25 happyReduction_65
happyReduction_65 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn25
		 ([happy_var_1]
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_3  25 happyReduction_66
happyReduction_66 (HappyAbsSyn25  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn25
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_66 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 78 78 notHappyAtAll (HappyState action) sts stk []

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
	TokenTranspose _ -> cont 57;
	TokenAssign _ -> cont 58;
	TokenEq _ -> cont 59;
	TokenLessThan _ -> cont 60;
	TokenGreaterThan _ -> cont 61;
	TokenLessThanEq _ -> cont 62;
	TokenGreaterThanEq _ -> cont 63;
	TokenNotEq _ -> cont 64;
	TokenSep _ -> cont 65;
	TokenLSquare _ -> cont 66;
	TokenRSquare _ -> cont 67;
	TokenComma _ -> cont 68;
	TokenDot _ -> cont 69;
	TokenAst _ -> cont 70;
	TokenAt _ -> cont 71;
	TokenLParen _ -> cont 72;
	TokenRParen _ -> cont 73;
	TokenInt  _ happy_dollar_dollar -> cont 74;
	TokenFilename _ happy_dollar_dollar -> cont 75;
	TokenStr _ happy_dollar_dollar -> cont 76;
	TokenVar _ happy_dollar_dollar -> cont 77;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 78 tk tks = happyError' (tks, explist)
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
                    | Transpose TableType
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

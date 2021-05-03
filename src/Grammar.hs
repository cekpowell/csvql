{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,680) ([0,0,12,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,4896,33236,248,33792,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,32768,8,0,0,192,0,0,0,0,16384,43110,61699,513,264,0,0,0,0,64,0,0,39168,3744,1988,8192,4,0,4896,33236,248,33792,0,0,33380,4154,31,4224,0,32768,20556,58111,3,528,0,0,0,128,0,0,0,0,0,0,0,1,0,0,0,0,8192,0,0,0,0,0,1024,0,0,41113,50190,7,1056,0,8192,54291,63617,0,132,0,25600,14978,7952,32768,16,0,0,0,0,0,0,0,0,0,128,0,0,0,16690,34845,15,2112,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,4896,33236,248,33792,0,0,33380,4154,31,4224,0,32768,20556,57863,3,528,0,0,0,768,128,0,0,12800,7489,3976,16384,8,0,0,32768,0,0,0,0,0,4096,0,0,0,0,0,512,0,0,0,0,0,64,0,0,0,25600,14978,7952,32768,16,0,19584,1872,994,4096,2,0,2448,16618,124,16896,0,0,16690,34845,15,2112,0,16384,43110,61699,1,264,0,0,0,0,32896,0,0,0,0,0,0,0,0,4896,33236,248,33792,0,0,0,0,8192,0,0,0,0,0,2048,8,0,0,0,0,128,0,0,0,0,0,8192,0,0,26176,936,497,2048,1,0,3272,8309,62,8448,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,4096,0,0,16384,43046,61699,1,264,0,0,0,0,0,4,0,39168,3744,1988,8192,4,0,0,0,0,16386,0,0,0,0,32768,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,12800,7489,3976,16384,8,0,32768,4,0,1028,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,1024,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4896,33236,248,33792,0,0,0,0,8192,0,0,0,0,0,1024,0,0,0,0,0,128,0,0,0,0,0,16,0,0,0,0,0,0,0,0,1224,8309,62,8448,0,0,0,12288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,1536,0,0,0,0,0,4896,33236,248,33792,0,0,0,0,0,0,0,32768,20556,57863,3,528,0,0,32,2,256,0,0,12800,7489,3976,16384,8,0,9792,936,497,2048,1,0,1224,8309,62,8448,0,0,0,0,0,0,0,8192,54291,63617,0,132,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,252,0,0,0,96,0,256,0,0,0,0,0,16,0,0,16384,2,0,512,0,0,0,0,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16690,34845,15,2112,0,16384,43046,61699,1,264,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,1,0,256,0,0,9216,0,0,32,0,0,1152,0,0,4,0,0,0,0,32768,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,54291,63617,0,132,0,25600,14978,7952,32768,16,0,19584,1872,994,4096,2,0,0,0,0,0,0,0,6144,0,16384,0,0,0,0,0,1024,0,0,0,16,1,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,33380,4154,31,4224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,4,0,0,0,0,32776,0,0,0,0,0,4097,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,15,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,4,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectFunction","InsertFunction","DeleteFunction","UpdateFunction","SetFunction","JoinFunction","FormatFunction","ColumnComparison","ColumnRef","TableComparison","TableColumnRef","ComparisonOperator","Operator","Assignment","Direction","List__Assignment__","List__ColumnRef__","List__Predicate__ColumnComparison____","List__Predicate__TableComparison____","List__Str__","Predicate__ColumnComparison__","Predicate__TableComparison__","ListCont__Assignment__","ListCont__ColumnRef__","ListCont__Predicate__ColumnComparison____","ListCont__Predicate__TableComparison____","ListCont__Str__","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Index","Update","Set","Union","All","Intersection","Difference","Join","Inner","Left","Right","Outer","Full","On","Order","By","Asc","Desc","Limit","Offset","Last","Unique","Transpose","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'.'","'*'","'+'","'-'","\"/\"","'%'","\"@\"","'('","')'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 93
        bit_end = (st Prelude.+ 1) Prelude.* 93
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..92]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (35) = happyShift action_2
action_0 (36) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (35) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (92) = happyShift action_31
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (93) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (34) = happyShift action_14
action_4 (37) = happyShift action_15
action_4 (38) = happyShift action_16
action_4 (41) = happyShift action_17
action_4 (47) = happyShift action_18
action_4 (49) = happyShift action_19
action_4 (51) = happyShift action_20
action_4 (52) = happyShift action_21
action_4 (53) = happyShift action_22
action_4 (60) = happyShift action_23
action_4 (64) = happyShift action_24
action_4 (65) = happyShift action_25
action_4 (66) = happyShift action_26
action_4 (67) = happyShift action_27
action_4 (68) = happyShift action_28
action_4 (87) = happyShift action_29
action_4 (92) = happyShift action_30
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (7) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 (9) = happyGoto action_9
action_4 (10) = happyGoto action_10
action_4 (11) = happyGoto action_11
action_4 (12) = happyGoto action_12
action_4 (13) = happyGoto action_13
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (76) = happyShift action_60
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_7

action_8 _ = happyReduce_8

action_9 _ = happyReduce_9

action_10 _ = happyReduce_10

action_11 _ = happyReduce_11

action_12 _ = happyReduce_12

action_13 _ = happyReduce_13

action_14 (90) = happyShift action_59
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (77) = happyShift action_54
action_15 (81) = happyShift action_58
action_15 (23) = happyGoto action_57
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (39) = happyShift action_55
action_16 (40) = happyShift action_56
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (34) = happyShift action_14
action_17 (37) = happyShift action_15
action_17 (38) = happyShift action_16
action_17 (41) = happyShift action_17
action_17 (42) = happyShift action_53
action_17 (47) = happyShift action_18
action_17 (49) = happyShift action_19
action_17 (51) = happyShift action_20
action_17 (52) = happyShift action_21
action_17 (53) = happyShift action_22
action_17 (60) = happyShift action_23
action_17 (64) = happyShift action_24
action_17 (65) = happyShift action_25
action_17 (66) = happyShift action_26
action_17 (67) = happyShift action_27
action_17 (68) = happyShift action_28
action_17 (77) = happyShift action_54
action_17 (87) = happyShift action_29
action_17 (92) = happyShift action_30
action_17 (5) = happyGoto action_51
action_17 (6) = happyGoto action_6
action_17 (7) = happyGoto action_7
action_17 (8) = happyGoto action_8
action_17 (9) = happyGoto action_9
action_17 (10) = happyGoto action_10
action_17 (11) = happyGoto action_11
action_17 (12) = happyGoto action_12
action_17 (13) = happyGoto action_13
action_17 (23) = happyGoto action_52
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (77) = happyShift action_50
action_18 (22) = happyGoto action_49
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (34) = happyShift action_14
action_19 (37) = happyShift action_15
action_19 (38) = happyShift action_16
action_19 (41) = happyShift action_17
action_19 (47) = happyShift action_18
action_19 (49) = happyShift action_19
action_19 (51) = happyShift action_20
action_19 (52) = happyShift action_21
action_19 (53) = happyShift action_22
action_19 (60) = happyShift action_23
action_19 (64) = happyShift action_24
action_19 (65) = happyShift action_25
action_19 (66) = happyShift action_26
action_19 (67) = happyShift action_27
action_19 (68) = happyShift action_28
action_19 (87) = happyShift action_29
action_19 (92) = happyShift action_30
action_19 (5) = happyGoto action_48
action_19 (6) = happyGoto action_6
action_19 (7) = happyGoto action_7
action_19 (8) = happyGoto action_8
action_19 (9) = happyGoto action_9
action_19 (10) = happyGoto action_10
action_19 (11) = happyGoto action_11
action_19 (12) = happyGoto action_12
action_19 (13) = happyGoto action_13
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (34) = happyShift action_14
action_20 (37) = happyShift action_15
action_20 (38) = happyShift action_16
action_20 (41) = happyShift action_17
action_20 (47) = happyShift action_18
action_20 (49) = happyShift action_19
action_20 (51) = happyShift action_20
action_20 (52) = happyShift action_21
action_20 (53) = happyShift action_22
action_20 (60) = happyShift action_23
action_20 (64) = happyShift action_24
action_20 (65) = happyShift action_25
action_20 (66) = happyShift action_26
action_20 (67) = happyShift action_27
action_20 (68) = happyShift action_28
action_20 (87) = happyShift action_29
action_20 (92) = happyShift action_30
action_20 (5) = happyGoto action_47
action_20 (6) = happyGoto action_6
action_20 (7) = happyGoto action_7
action_20 (8) = happyGoto action_8
action_20 (9) = happyGoto action_9
action_20 (10) = happyGoto action_10
action_20 (11) = happyGoto action_11
action_20 (12) = happyGoto action_12
action_20 (13) = happyGoto action_13
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (34) = happyShift action_14
action_21 (37) = happyShift action_15
action_21 (38) = happyShift action_16
action_21 (41) = happyShift action_17
action_21 (47) = happyShift action_18
action_21 (49) = happyShift action_19
action_21 (51) = happyShift action_20
action_21 (52) = happyShift action_21
action_21 (53) = happyShift action_22
action_21 (60) = happyShift action_23
action_21 (64) = happyShift action_24
action_21 (65) = happyShift action_25
action_21 (66) = happyShift action_26
action_21 (67) = happyShift action_27
action_21 (68) = happyShift action_28
action_21 (87) = happyShift action_29
action_21 (92) = happyShift action_30
action_21 (5) = happyGoto action_46
action_21 (6) = happyGoto action_6
action_21 (7) = happyGoto action_7
action_21 (8) = happyGoto action_8
action_21 (9) = happyGoto action_9
action_21 (10) = happyGoto action_10
action_21 (11) = happyGoto action_11
action_21 (12) = happyGoto action_12
action_21 (13) = happyGoto action_13
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (34) = happyShift action_14
action_22 (37) = happyShift action_15
action_22 (38) = happyShift action_16
action_22 (41) = happyShift action_17
action_22 (47) = happyShift action_18
action_22 (49) = happyShift action_19
action_22 (51) = happyShift action_20
action_22 (52) = happyShift action_21
action_22 (53) = happyShift action_22
action_22 (54) = happyShift action_41
action_22 (55) = happyShift action_42
action_22 (56) = happyShift action_43
action_22 (57) = happyShift action_44
action_22 (58) = happyShift action_45
action_22 (60) = happyShift action_23
action_22 (64) = happyShift action_24
action_22 (65) = happyShift action_25
action_22 (66) = happyShift action_26
action_22 (67) = happyShift action_27
action_22 (68) = happyShift action_28
action_22 (87) = happyShift action_29
action_22 (92) = happyShift action_30
action_22 (5) = happyGoto action_40
action_22 (6) = happyGoto action_6
action_22 (7) = happyGoto action_7
action_22 (8) = happyGoto action_8
action_22 (9) = happyGoto action_9
action_22 (10) = happyGoto action_10
action_22 (11) = happyGoto action_11
action_22 (12) = happyGoto action_12
action_22 (13) = happyGoto action_13
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (61) = happyShift action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (89) = happyShift action_38
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (89) = happyShift action_37
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (89) = happyShift action_36
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (34) = happyShift action_14
action_27 (37) = happyShift action_15
action_27 (38) = happyShift action_16
action_27 (41) = happyShift action_17
action_27 (47) = happyShift action_18
action_27 (49) = happyShift action_19
action_27 (51) = happyShift action_20
action_27 (52) = happyShift action_21
action_27 (53) = happyShift action_22
action_27 (60) = happyShift action_23
action_27 (64) = happyShift action_24
action_27 (65) = happyShift action_25
action_27 (66) = happyShift action_26
action_27 (67) = happyShift action_27
action_27 (68) = happyShift action_28
action_27 (87) = happyShift action_29
action_27 (92) = happyShift action_30
action_27 (5) = happyGoto action_35
action_27 (6) = happyGoto action_6
action_27 (7) = happyGoto action_7
action_27 (8) = happyGoto action_8
action_27 (9) = happyGoto action_9
action_27 (10) = happyGoto action_10
action_27 (11) = happyGoto action_11
action_27 (12) = happyGoto action_12
action_27 (13) = happyGoto action_13
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (34) = happyShift action_14
action_28 (37) = happyShift action_15
action_28 (38) = happyShift action_16
action_28 (41) = happyShift action_17
action_28 (47) = happyShift action_18
action_28 (49) = happyShift action_19
action_28 (51) = happyShift action_20
action_28 (52) = happyShift action_21
action_28 (53) = happyShift action_22
action_28 (60) = happyShift action_23
action_28 (64) = happyShift action_24
action_28 (65) = happyShift action_25
action_28 (66) = happyShift action_26
action_28 (67) = happyShift action_27
action_28 (68) = happyShift action_28
action_28 (87) = happyShift action_29
action_28 (92) = happyShift action_30
action_28 (5) = happyGoto action_34
action_28 (6) = happyGoto action_6
action_28 (7) = happyGoto action_7
action_28 (8) = happyGoto action_8
action_28 (9) = happyGoto action_9
action_28 (10) = happyGoto action_10
action_28 (11) = happyGoto action_11
action_28 (12) = happyGoto action_12
action_28 (13) = happyGoto action_13
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (34) = happyShift action_14
action_29 (37) = happyShift action_15
action_29 (38) = happyShift action_16
action_29 (41) = happyShift action_17
action_29 (47) = happyShift action_18
action_29 (49) = happyShift action_19
action_29 (51) = happyShift action_20
action_29 (52) = happyShift action_21
action_29 (53) = happyShift action_22
action_29 (60) = happyShift action_23
action_29 (64) = happyShift action_24
action_29 (65) = happyShift action_25
action_29 (66) = happyShift action_26
action_29 (67) = happyShift action_27
action_29 (68) = happyShift action_28
action_29 (87) = happyShift action_29
action_29 (92) = happyShift action_30
action_29 (5) = happyGoto action_33
action_29 (6) = happyGoto action_6
action_29 (7) = happyGoto action_7
action_29 (8) = happyGoto action_8
action_29 (9) = happyGoto action_9
action_29 (10) = happyGoto action_10
action_29 (11) = happyGoto action_11
action_29 (12) = happyGoto action_12
action_29 (13) = happyGoto action_13
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_4

action_31 (69) = happyShift action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (34) = happyShift action_14
action_32 (37) = happyShift action_15
action_32 (38) = happyShift action_16
action_32 (41) = happyShift action_17
action_32 (47) = happyShift action_18
action_32 (49) = happyShift action_19
action_32 (51) = happyShift action_20
action_32 (52) = happyShift action_21
action_32 (53) = happyShift action_22
action_32 (60) = happyShift action_23
action_32 (64) = happyShift action_24
action_32 (65) = happyShift action_25
action_32 (66) = happyShift action_26
action_32 (67) = happyShift action_27
action_32 (68) = happyShift action_28
action_32 (87) = happyShift action_29
action_32 (92) = happyShift action_30
action_32 (5) = happyGoto action_98
action_32 (6) = happyGoto action_6
action_32 (7) = happyGoto action_7
action_32 (8) = happyGoto action_8
action_32 (9) = happyGoto action_9
action_32 (10) = happyGoto action_10
action_32 (11) = happyGoto action_11
action_32 (12) = happyGoto action_12
action_32 (13) = happyGoto action_13
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (88) = happyShift action_97
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_40

action_35 _ = happyReduce_39

action_36 (34) = happyShift action_14
action_36 (37) = happyShift action_15
action_36 (38) = happyShift action_16
action_36 (41) = happyShift action_17
action_36 (47) = happyShift action_18
action_36 (49) = happyShift action_19
action_36 (51) = happyShift action_20
action_36 (52) = happyShift action_21
action_36 (53) = happyShift action_22
action_36 (60) = happyShift action_23
action_36 (64) = happyShift action_24
action_36 (65) = happyShift action_25
action_36 (66) = happyShift action_26
action_36 (67) = happyShift action_27
action_36 (68) = happyShift action_28
action_36 (87) = happyShift action_29
action_36 (92) = happyShift action_30
action_36 (5) = happyGoto action_96
action_36 (6) = happyGoto action_6
action_36 (7) = happyGoto action_7
action_36 (8) = happyGoto action_8
action_36 (9) = happyGoto action_9
action_36 (10) = happyGoto action_10
action_36 (11) = happyGoto action_11
action_36 (12) = happyGoto action_12
action_36 (13) = happyGoto action_13
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (34) = happyShift action_14
action_37 (37) = happyShift action_15
action_37 (38) = happyShift action_16
action_37 (41) = happyShift action_17
action_37 (47) = happyShift action_18
action_37 (49) = happyShift action_19
action_37 (51) = happyShift action_20
action_37 (52) = happyShift action_21
action_37 (53) = happyShift action_22
action_37 (60) = happyShift action_23
action_37 (64) = happyShift action_24
action_37 (65) = happyShift action_25
action_37 (66) = happyShift action_26
action_37 (67) = happyShift action_27
action_37 (68) = happyShift action_28
action_37 (87) = happyShift action_29
action_37 (92) = happyShift action_30
action_37 (5) = happyGoto action_95
action_37 (6) = happyGoto action_6
action_37 (7) = happyGoto action_7
action_37 (8) = happyGoto action_8
action_37 (9) = happyGoto action_9
action_37 (10) = happyGoto action_10
action_37 (11) = happyGoto action_11
action_37 (12) = happyGoto action_12
action_37 (13) = happyGoto action_13
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (34) = happyShift action_14
action_38 (37) = happyShift action_15
action_38 (38) = happyShift action_16
action_38 (41) = happyShift action_17
action_38 (47) = happyShift action_18
action_38 (49) = happyShift action_19
action_38 (51) = happyShift action_20
action_38 (52) = happyShift action_21
action_38 (53) = happyShift action_22
action_38 (60) = happyShift action_23
action_38 (64) = happyShift action_24
action_38 (65) = happyShift action_25
action_38 (66) = happyShift action_26
action_38 (67) = happyShift action_27
action_38 (68) = happyShift action_28
action_38 (87) = happyShift action_29
action_38 (92) = happyShift action_30
action_38 (5) = happyGoto action_94
action_38 (6) = happyGoto action_6
action_38 (7) = happyGoto action_7
action_38 (8) = happyGoto action_8
action_38 (9) = happyGoto action_9
action_38 (10) = happyGoto action_10
action_38 (11) = happyGoto action_11
action_38 (12) = happyGoto action_12
action_38 (13) = happyGoto action_13
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (62) = happyShift action_92
action_39 (63) = happyShift action_93
action_39 (77) = happyShift action_54
action_39 (21) = happyGoto action_90
action_39 (23) = happyGoto action_91
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (34) = happyShift action_14
action_40 (37) = happyShift action_15
action_40 (38) = happyShift action_16
action_40 (41) = happyShift action_17
action_40 (47) = happyShift action_18
action_40 (49) = happyShift action_19
action_40 (51) = happyShift action_20
action_40 (52) = happyShift action_21
action_40 (53) = happyShift action_22
action_40 (60) = happyShift action_23
action_40 (64) = happyShift action_24
action_40 (65) = happyShift action_25
action_40 (66) = happyShift action_26
action_40 (67) = happyShift action_27
action_40 (68) = happyShift action_28
action_40 (87) = happyShift action_29
action_40 (92) = happyShift action_30
action_40 (5) = happyGoto action_89
action_40 (6) = happyGoto action_6
action_40 (7) = happyGoto action_7
action_40 (8) = happyGoto action_8
action_40 (9) = happyGoto action_9
action_40 (10) = happyGoto action_10
action_40 (11) = happyGoto action_11
action_40 (12) = happyGoto action_12
action_40 (13) = happyGoto action_13
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (59) = happyShift action_88
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (59) = happyShift action_87
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (59) = happyShift action_86
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (59) = happyShift action_85
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (34) = happyShift action_14
action_45 (37) = happyShift action_15
action_45 (38) = happyShift action_16
action_45 (41) = happyShift action_17
action_45 (47) = happyShift action_18
action_45 (49) = happyShift action_19
action_45 (51) = happyShift action_20
action_45 (52) = happyShift action_21
action_45 (53) = happyShift action_22
action_45 (60) = happyShift action_23
action_45 (64) = happyShift action_24
action_45 (65) = happyShift action_25
action_45 (66) = happyShift action_26
action_45 (67) = happyShift action_27
action_45 (68) = happyShift action_28
action_45 (87) = happyShift action_29
action_45 (92) = happyShift action_30
action_45 (5) = happyGoto action_84
action_45 (6) = happyGoto action_6
action_45 (7) = happyGoto action_7
action_45 (8) = happyGoto action_8
action_45 (9) = happyGoto action_9
action_45 (10) = happyGoto action_10
action_45 (11) = happyGoto action_11
action_45 (12) = happyGoto action_12
action_45 (13) = happyGoto action_13
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (34) = happyShift action_14
action_46 (37) = happyShift action_15
action_46 (38) = happyShift action_16
action_46 (41) = happyShift action_17
action_46 (47) = happyShift action_18
action_46 (49) = happyShift action_19
action_46 (51) = happyShift action_20
action_46 (52) = happyShift action_21
action_46 (53) = happyShift action_22
action_46 (60) = happyShift action_23
action_46 (64) = happyShift action_24
action_46 (65) = happyShift action_25
action_46 (66) = happyShift action_26
action_46 (67) = happyShift action_27
action_46 (68) = happyShift action_28
action_46 (87) = happyShift action_29
action_46 (92) = happyShift action_30
action_46 (5) = happyGoto action_83
action_46 (6) = happyGoto action_6
action_46 (7) = happyGoto action_7
action_46 (8) = happyGoto action_8
action_46 (9) = happyGoto action_9
action_46 (10) = happyGoto action_10
action_46 (11) = happyGoto action_11
action_46 (12) = happyGoto action_12
action_46 (13) = happyGoto action_13
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (34) = happyShift action_14
action_47 (37) = happyShift action_15
action_47 (38) = happyShift action_16
action_47 (41) = happyShift action_17
action_47 (47) = happyShift action_18
action_47 (49) = happyShift action_19
action_47 (51) = happyShift action_20
action_47 (52) = happyShift action_21
action_47 (53) = happyShift action_22
action_47 (60) = happyShift action_23
action_47 (64) = happyShift action_24
action_47 (65) = happyShift action_25
action_47 (66) = happyShift action_26
action_47 (67) = happyShift action_27
action_47 (68) = happyShift action_28
action_47 (87) = happyShift action_29
action_47 (92) = happyShift action_30
action_47 (5) = happyGoto action_82
action_47 (6) = happyGoto action_6
action_47 (7) = happyGoto action_7
action_47 (8) = happyGoto action_8
action_47 (9) = happyGoto action_9
action_47 (10) = happyGoto action_10
action_47 (11) = happyGoto action_11
action_47 (12) = happyGoto action_12
action_47 (13) = happyGoto action_13
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (34) = happyShift action_14
action_48 (37) = happyShift action_15
action_48 (38) = happyShift action_16
action_48 (41) = happyShift action_17
action_48 (47) = happyShift action_18
action_48 (49) = happyShift action_19
action_48 (51) = happyShift action_20
action_48 (52) = happyShift action_21
action_48 (53) = happyShift action_22
action_48 (60) = happyShift action_23
action_48 (64) = happyShift action_24
action_48 (65) = happyShift action_25
action_48 (66) = happyShift action_26
action_48 (67) = happyShift action_27
action_48 (68) = happyShift action_28
action_48 (87) = happyShift action_29
action_48 (92) = happyShift action_30
action_48 (5) = happyGoto action_81
action_48 (6) = happyGoto action_6
action_48 (7) = happyGoto action_7
action_48 (8) = happyGoto action_8
action_48 (9) = happyGoto action_9
action_48 (10) = happyGoto action_10
action_48 (11) = happyGoto action_11
action_48 (12) = happyGoto action_12
action_48 (13) = happyGoto action_13
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (34) = happyShift action_14
action_49 (37) = happyShift action_15
action_49 (38) = happyShift action_16
action_49 (41) = happyShift action_17
action_49 (42) = happyShift action_80
action_49 (47) = happyShift action_18
action_49 (49) = happyShift action_19
action_49 (51) = happyShift action_20
action_49 (52) = happyShift action_21
action_49 (53) = happyShift action_22
action_49 (60) = happyShift action_23
action_49 (64) = happyShift action_24
action_49 (65) = happyShift action_25
action_49 (66) = happyShift action_26
action_49 (67) = happyShift action_27
action_49 (68) = happyShift action_28
action_49 (87) = happyShift action_29
action_49 (92) = happyShift action_30
action_49 (5) = happyGoto action_79
action_49 (6) = happyGoto action_6
action_49 (7) = happyGoto action_7
action_49 (8) = happyGoto action_8
action_49 (9) = happyGoto action_9
action_49 (10) = happyGoto action_10
action_49 (11) = happyGoto action_11
action_49 (12) = happyGoto action_12
action_49 (13) = happyGoto action_13
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (78) = happyShift action_78
action_50 (86) = happyShift action_66
action_50 (15) = happyGoto action_75
action_50 (20) = happyGoto action_76
action_50 (29) = happyGoto action_77
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_20

action_52 (34) = happyShift action_14
action_52 (37) = happyShift action_15
action_52 (38) = happyShift action_16
action_52 (41) = happyShift action_17
action_52 (47) = happyShift action_18
action_52 (49) = happyShift action_19
action_52 (51) = happyShift action_20
action_52 (52) = happyShift action_21
action_52 (53) = happyShift action_22
action_52 (60) = happyShift action_23
action_52 (64) = happyShift action_24
action_52 (65) = happyShift action_25
action_52 (66) = happyShift action_26
action_52 (67) = happyShift action_27
action_52 (68) = happyShift action_28
action_52 (87) = happyShift action_29
action_52 (92) = happyShift action_30
action_52 (5) = happyGoto action_74
action_52 (6) = happyGoto action_6
action_52 (7) = happyGoto action_7
action_52 (8) = happyGoto action_8
action_52 (9) = happyGoto action_9
action_52 (10) = happyGoto action_10
action_52 (11) = happyGoto action_11
action_52 (12) = happyGoto action_12
action_52 (13) = happyGoto action_13
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (77) = happyShift action_73
action_53 (24) = happyGoto action_72
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (78) = happyShift action_71
action_54 (86) = happyShift action_66
action_54 (15) = happyGoto action_69
action_54 (30) = happyGoto action_70
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (77) = happyShift action_68
action_55 (26) = happyGoto action_67
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (86) = happyShift action_66
action_56 (15) = happyGoto action_65
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (34) = happyShift action_14
action_57 (37) = happyShift action_15
action_57 (38) = happyShift action_16
action_57 (41) = happyShift action_17
action_57 (42) = happyShift action_64
action_57 (47) = happyShift action_18
action_57 (49) = happyShift action_19
action_57 (51) = happyShift action_20
action_57 (52) = happyShift action_21
action_57 (53) = happyShift action_22
action_57 (60) = happyShift action_23
action_57 (64) = happyShift action_24
action_57 (65) = happyShift action_25
action_57 (66) = happyShift action_26
action_57 (67) = happyShift action_27
action_57 (68) = happyShift action_28
action_57 (87) = happyShift action_29
action_57 (92) = happyShift action_30
action_57 (5) = happyGoto action_63
action_57 (6) = happyGoto action_6
action_57 (7) = happyGoto action_7
action_57 (8) = happyGoto action_8
action_57 (9) = happyGoto action_9
action_57 (10) = happyGoto action_10
action_57 (11) = happyGoto action_11
action_57 (12) = happyGoto action_12
action_57 (13) = happyGoto action_13
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (34) = happyShift action_14
action_58 (37) = happyShift action_15
action_58 (38) = happyShift action_16
action_58 (41) = happyShift action_17
action_58 (42) = happyShift action_62
action_58 (47) = happyShift action_18
action_58 (49) = happyShift action_19
action_58 (51) = happyShift action_20
action_58 (52) = happyShift action_21
action_58 (53) = happyShift action_22
action_58 (60) = happyShift action_23
action_58 (64) = happyShift action_24
action_58 (65) = happyShift action_25
action_58 (66) = happyShift action_26
action_58 (67) = happyShift action_27
action_58 (68) = happyShift action_28
action_58 (87) = happyShift action_29
action_58 (92) = happyShift action_30
action_58 (5) = happyGoto action_61
action_58 (6) = happyGoto action_6
action_58 (7) = happyGoto action_7
action_58 (8) = happyGoto action_8
action_58 (9) = happyGoto action_9
action_58 (10) = happyGoto action_10
action_58 (11) = happyGoto action_11
action_58 (12) = happyGoto action_12
action_58 (13) = happyGoto action_13
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_3

action_60 _ = happyReduce_2

action_61 _ = happyReduce_14

action_62 (77) = happyShift action_73
action_62 (24) = happyGoto action_129
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_15

action_64 (77) = happyShift action_73
action_64 (24) = happyGoto action_128
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (34) = happyShift action_14
action_65 (37) = happyShift action_15
action_65 (38) = happyShift action_16
action_65 (41) = happyShift action_17
action_65 (47) = happyShift action_18
action_65 (49) = happyShift action_19
action_65 (51) = happyShift action_20
action_65 (52) = happyShift action_21
action_65 (53) = happyShift action_22
action_65 (60) = happyShift action_23
action_65 (64) = happyShift action_24
action_65 (65) = happyShift action_25
action_65 (66) = happyShift action_26
action_65 (67) = happyShift action_27
action_65 (68) = happyShift action_28
action_65 (87) = happyShift action_29
action_65 (92) = happyShift action_30
action_65 (5) = happyGoto action_127
action_65 (6) = happyGoto action_6
action_65 (7) = happyGoto action_7
action_65 (8) = happyGoto action_8
action_65 (9) = happyGoto action_9
action_65 (10) = happyGoto action_10
action_65 (11) = happyGoto action_11
action_65 (12) = happyGoto action_12
action_65 (13) = happyGoto action_13
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (89) = happyShift action_126
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (34) = happyShift action_14
action_67 (37) = happyShift action_15
action_67 (38) = happyShift action_16
action_67 (41) = happyShift action_17
action_67 (47) = happyShift action_18
action_67 (49) = happyShift action_19
action_67 (51) = happyShift action_20
action_67 (52) = happyShift action_21
action_67 (53) = happyShift action_22
action_67 (60) = happyShift action_23
action_67 (64) = happyShift action_24
action_67 (65) = happyShift action_25
action_67 (66) = happyShift action_26
action_67 (67) = happyShift action_27
action_67 (68) = happyShift action_28
action_67 (87) = happyShift action_29
action_67 (92) = happyShift action_30
action_67 (5) = happyGoto action_125
action_67 (6) = happyGoto action_6
action_67 (7) = happyGoto action_7
action_67 (8) = happyGoto action_8
action_67 (9) = happyGoto action_9
action_67 (10) = happyGoto action_10
action_67 (11) = happyGoto action_11
action_67 (12) = happyGoto action_12
action_67 (13) = happyGoto action_13
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (78) = happyShift action_123
action_68 (91) = happyShift action_124
action_68 (33) = happyGoto action_122
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (79) = happyShift action_121
action_69 _ = happyReduce_81

action_70 (78) = happyShift action_120
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_63

action_72 (34) = happyShift action_14
action_72 (37) = happyShift action_15
action_72 (38) = happyShift action_16
action_72 (41) = happyShift action_17
action_72 (47) = happyShift action_18
action_72 (49) = happyShift action_19
action_72 (51) = happyShift action_20
action_72 (52) = happyShift action_21
action_72 (53) = happyShift action_22
action_72 (60) = happyShift action_23
action_72 (64) = happyShift action_24
action_72 (65) = happyShift action_25
action_72 (66) = happyShift action_26
action_72 (67) = happyShift action_27
action_72 (68) = happyShift action_28
action_72 (87) = happyShift action_29
action_72 (92) = happyShift action_30
action_72 (5) = happyGoto action_119
action_72 (6) = happyGoto action_6
action_72 (7) = happyGoto action_7
action_72 (8) = happyGoto action_8
action_72 (9) = happyGoto action_9
action_72 (10) = happyGoto action_10
action_72 (11) = happyGoto action_11
action_72 (12) = happyGoto action_12
action_72 (13) = happyGoto action_13
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (43) = happyShift action_116
action_73 (46) = happyShift action_117
action_73 (78) = happyShift action_118
action_73 (86) = happyShift action_66
action_73 (14) = happyGoto action_112
action_73 (15) = happyGoto action_113
action_73 (27) = happyGoto action_114
action_73 (31) = happyGoto action_115
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_21

action_75 (69) = happyShift action_111
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (79) = happyShift action_110
action_76 _ = happyReduce_79

action_77 (78) = happyShift action_109
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_61

action_79 _ = happyReduce_23

action_80 (77) = happyShift action_73
action_80 (24) = happyGoto action_108
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_25

action_82 _ = happyReduce_26

action_83 _ = happyReduce_27

action_84 (34) = happyShift action_14
action_84 (37) = happyShift action_15
action_84 (38) = happyShift action_16
action_84 (41) = happyShift action_17
action_84 (47) = happyShift action_18
action_84 (49) = happyShift action_19
action_84 (51) = happyShift action_20
action_84 (52) = happyShift action_21
action_84 (53) = happyShift action_22
action_84 (60) = happyShift action_23
action_84 (64) = happyShift action_24
action_84 (65) = happyShift action_25
action_84 (66) = happyShift action_26
action_84 (67) = happyShift action_27
action_84 (68) = happyShift action_28
action_84 (87) = happyShift action_29
action_84 (92) = happyShift action_30
action_84 (5) = happyGoto action_107
action_84 (6) = happyGoto action_6
action_84 (7) = happyGoto action_7
action_84 (8) = happyGoto action_8
action_84 (9) = happyGoto action_9
action_84 (10) = happyGoto action_10
action_84 (11) = happyGoto action_11
action_84 (12) = happyGoto action_12
action_84 (13) = happyGoto action_13
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (77) = happyShift action_103
action_85 (25) = happyGoto action_106
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (77) = happyShift action_103
action_86 (25) = happyGoto action_105
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (77) = happyShift action_103
action_87 (25) = happyGoto action_104
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (77) = happyShift action_103
action_88 (25) = happyGoto action_102
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_28

action_90 (34) = happyShift action_14
action_90 (37) = happyShift action_15
action_90 (38) = happyShift action_16
action_90 (41) = happyShift action_17
action_90 (47) = happyShift action_18
action_90 (49) = happyShift action_19
action_90 (51) = happyShift action_20
action_90 (52) = happyShift action_21
action_90 (53) = happyShift action_22
action_90 (60) = happyShift action_23
action_90 (64) = happyShift action_24
action_90 (65) = happyShift action_25
action_90 (66) = happyShift action_26
action_90 (67) = happyShift action_27
action_90 (68) = happyShift action_28
action_90 (87) = happyShift action_29
action_90 (92) = happyShift action_30
action_90 (5) = happyGoto action_101
action_90 (6) = happyGoto action_6
action_90 (7) = happyGoto action_7
action_90 (8) = happyGoto action_8
action_90 (9) = happyGoto action_9
action_90 (10) = happyGoto action_10
action_90 (11) = happyGoto action_11
action_90 (12) = happyGoto action_12
action_90 (13) = happyGoto action_13
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (62) = happyShift action_92
action_91 (63) = happyShift action_93
action_91 (21) = happyGoto action_100
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_59

action_93 _ = happyReduce_60

action_94 _ = happyReduce_36

action_95 _ = happyReduce_37

action_96 _ = happyReduce_38

action_97 _ = happyReduce_6

action_98 (76) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (35) = happyShift action_2
action_99 (36) = happyShift action_4
action_99 (4) = happyGoto action_167
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (34) = happyShift action_14
action_100 (37) = happyShift action_15
action_100 (38) = happyShift action_16
action_100 (41) = happyShift action_17
action_100 (47) = happyShift action_18
action_100 (49) = happyShift action_19
action_100 (51) = happyShift action_20
action_100 (52) = happyShift action_21
action_100 (53) = happyShift action_22
action_100 (60) = happyShift action_23
action_100 (64) = happyShift action_24
action_100 (65) = happyShift action_25
action_100 (66) = happyShift action_26
action_100 (67) = happyShift action_27
action_100 (68) = happyShift action_28
action_100 (87) = happyShift action_29
action_100 (92) = happyShift action_30
action_100 (5) = happyGoto action_166
action_100 (6) = happyGoto action_6
action_100 (7) = happyGoto action_7
action_100 (8) = happyGoto action_8
action_100 (9) = happyGoto action_9
action_100 (10) = happyGoto action_10
action_100 (11) = happyGoto action_11
action_100 (12) = happyGoto action_12
action_100 (13) = happyGoto action_13
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_34

action_102 (34) = happyShift action_14
action_102 (37) = happyShift action_15
action_102 (38) = happyShift action_16
action_102 (41) = happyShift action_17
action_102 (47) = happyShift action_18
action_102 (49) = happyShift action_19
action_102 (51) = happyShift action_20
action_102 (52) = happyShift action_21
action_102 (53) = happyShift action_22
action_102 (60) = happyShift action_23
action_102 (64) = happyShift action_24
action_102 (65) = happyShift action_25
action_102 (66) = happyShift action_26
action_102 (67) = happyShift action_27
action_102 (68) = happyShift action_28
action_102 (87) = happyShift action_29
action_102 (92) = happyShift action_30
action_102 (5) = happyGoto action_165
action_102 (6) = happyGoto action_6
action_102 (7) = happyGoto action_7
action_102 (8) = happyGoto action_8
action_102 (9) = happyGoto action_9
action_102 (10) = happyGoto action_10
action_102 (11) = happyGoto action_11
action_102 (12) = happyGoto action_12
action_102 (13) = happyGoto action_13
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (43) = happyShift action_162
action_103 (55) = happyShift action_163
action_103 (78) = happyShift action_164
action_103 (16) = happyGoto action_159
action_103 (28) = happyGoto action_160
action_103 (32) = happyGoto action_161
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (34) = happyShift action_14
action_104 (37) = happyShift action_15
action_104 (38) = happyShift action_16
action_104 (41) = happyShift action_17
action_104 (47) = happyShift action_18
action_104 (49) = happyShift action_19
action_104 (51) = happyShift action_20
action_104 (52) = happyShift action_21
action_104 (53) = happyShift action_22
action_104 (60) = happyShift action_23
action_104 (64) = happyShift action_24
action_104 (65) = happyShift action_25
action_104 (66) = happyShift action_26
action_104 (67) = happyShift action_27
action_104 (68) = happyShift action_28
action_104 (87) = happyShift action_29
action_104 (92) = happyShift action_30
action_104 (5) = happyGoto action_158
action_104 (6) = happyGoto action_6
action_104 (7) = happyGoto action_7
action_104 (8) = happyGoto action_8
action_104 (9) = happyGoto action_9
action_104 (10) = happyGoto action_10
action_104 (11) = happyGoto action_11
action_104 (12) = happyGoto action_12
action_104 (13) = happyGoto action_13
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (34) = happyShift action_14
action_105 (37) = happyShift action_15
action_105 (38) = happyShift action_16
action_105 (41) = happyShift action_17
action_105 (47) = happyShift action_18
action_105 (49) = happyShift action_19
action_105 (51) = happyShift action_20
action_105 (52) = happyShift action_21
action_105 (53) = happyShift action_22
action_105 (60) = happyShift action_23
action_105 (64) = happyShift action_24
action_105 (65) = happyShift action_25
action_105 (66) = happyShift action_26
action_105 (67) = happyShift action_27
action_105 (68) = happyShift action_28
action_105 (87) = happyShift action_29
action_105 (92) = happyShift action_30
action_105 (5) = happyGoto action_157
action_105 (6) = happyGoto action_6
action_105 (7) = happyGoto action_7
action_105 (8) = happyGoto action_8
action_105 (9) = happyGoto action_9
action_105 (10) = happyGoto action_10
action_105 (11) = happyGoto action_11
action_105 (12) = happyGoto action_12
action_105 (13) = happyGoto action_13
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (34) = happyShift action_14
action_106 (37) = happyShift action_15
action_106 (38) = happyShift action_16
action_106 (41) = happyShift action_17
action_106 (47) = happyShift action_18
action_106 (49) = happyShift action_19
action_106 (51) = happyShift action_20
action_106 (52) = happyShift action_21
action_106 (53) = happyShift action_22
action_106 (60) = happyShift action_23
action_106 (64) = happyShift action_24
action_106 (65) = happyShift action_25
action_106 (66) = happyShift action_26
action_106 (67) = happyShift action_27
action_106 (68) = happyShift action_28
action_106 (87) = happyShift action_29
action_106 (92) = happyShift action_30
action_106 (5) = happyGoto action_156
action_106 (6) = happyGoto action_6
action_106 (7) = happyGoto action_7
action_106 (8) = happyGoto action_8
action_106 (9) = happyGoto action_9
action_106 (10) = happyGoto action_10
action_106 (11) = happyGoto action_11
action_106 (12) = happyGoto action_12
action_106 (13) = happyGoto action_13
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_33

action_108 (34) = happyShift action_14
action_108 (37) = happyShift action_15
action_108 (38) = happyShift action_16
action_108 (41) = happyShift action_17
action_108 (47) = happyShift action_18
action_108 (49) = happyShift action_19
action_108 (51) = happyShift action_20
action_108 (52) = happyShift action_21
action_108 (53) = happyShift action_22
action_108 (60) = happyShift action_23
action_108 (64) = happyShift action_24
action_108 (65) = happyShift action_25
action_108 (66) = happyShift action_26
action_108 (67) = happyShift action_27
action_108 (68) = happyShift action_28
action_108 (87) = happyShift action_29
action_108 (92) = happyShift action_30
action_108 (5) = happyGoto action_155
action_108 (6) = happyGoto action_6
action_108 (7) = happyGoto action_7
action_108 (8) = happyGoto action_8
action_108 (9) = happyGoto action_9
action_108 (10) = happyGoto action_10
action_108 (11) = happyGoto action_11
action_108 (12) = happyGoto action_12
action_108 (13) = happyGoto action_13
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_62

action_110 (86) = happyShift action_66
action_110 (15) = happyGoto action_75
action_110 (20) = happyGoto action_76
action_110 (29) = happyGoto action_154
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (91) = happyShift action_153
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_74

action_113 (70) = happyShift action_147
action_113 (71) = happyShift action_148
action_113 (72) = happyShift action_149
action_113 (73) = happyShift action_150
action_113 (74) = happyShift action_151
action_113 (75) = happyShift action_152
action_113 (18) = happyGoto action_146
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (44) = happyShift action_143
action_114 (45) = happyShift action_144
action_114 (79) = happyShift action_145
action_114 _ = happyReduce_83

action_115 (78) = happyShift action_142
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (43) = happyShift action_116
action_116 (46) = happyShift action_117
action_116 (86) = happyShift action_66
action_116 (14) = happyGoto action_112
action_116 (15) = happyGoto action_113
action_116 (27) = happyGoto action_141
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (81) = happyShift action_136
action_117 (82) = happyShift action_137
action_117 (83) = happyShift action_138
action_117 (84) = happyShift action_139
action_117 (85) = happyShift action_140
action_117 (19) = happyGoto action_135
action_117 _ = happyFail (happyExpListPerState 117)

action_118 _ = happyReduce_65

action_119 _ = happyReduce_22

action_120 _ = happyReduce_64

action_121 (86) = happyShift action_66
action_121 (15) = happyGoto action_69
action_121 (30) = happyGoto action_134
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (78) = happyShift action_133
action_122 _ = happyFail (happyExpListPerState 122)

action_123 _ = happyReduce_69

action_124 (79) = happyShift action_132
action_124 _ = happyReduce_87

action_125 _ = happyReduce_18

action_126 _ = happyReduce_44

action_127 _ = happyReduce_19

action_128 (34) = happyShift action_14
action_128 (37) = happyShift action_15
action_128 (38) = happyShift action_16
action_128 (41) = happyShift action_17
action_128 (47) = happyShift action_18
action_128 (49) = happyShift action_19
action_128 (51) = happyShift action_20
action_128 (52) = happyShift action_21
action_128 (53) = happyShift action_22
action_128 (60) = happyShift action_23
action_128 (64) = happyShift action_24
action_128 (65) = happyShift action_25
action_128 (66) = happyShift action_26
action_128 (67) = happyShift action_27
action_128 (68) = happyShift action_28
action_128 (87) = happyShift action_29
action_128 (92) = happyShift action_30
action_128 (5) = happyGoto action_131
action_128 (6) = happyGoto action_6
action_128 (7) = happyGoto action_7
action_128 (8) = happyGoto action_8
action_128 (9) = happyGoto action_9
action_128 (10) = happyGoto action_10
action_128 (11) = happyGoto action_11
action_128 (12) = happyGoto action_12
action_128 (13) = happyGoto action_13
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (34) = happyShift action_14
action_129 (37) = happyShift action_15
action_129 (38) = happyShift action_16
action_129 (41) = happyShift action_17
action_129 (47) = happyShift action_18
action_129 (49) = happyShift action_19
action_129 (51) = happyShift action_20
action_129 (52) = happyShift action_21
action_129 (53) = happyShift action_22
action_129 (60) = happyShift action_23
action_129 (64) = happyShift action_24
action_129 (65) = happyShift action_25
action_129 (66) = happyShift action_26
action_129 (67) = happyShift action_27
action_129 (68) = happyShift action_28
action_129 (87) = happyShift action_29
action_129 (92) = happyShift action_30
action_129 (5) = happyGoto action_130
action_129 (6) = happyGoto action_6
action_129 (7) = happyGoto action_7
action_129 (8) = happyGoto action_8
action_129 (9) = happyGoto action_9
action_129 (10) = happyGoto action_10
action_129 (11) = happyGoto action_11
action_129 (12) = happyGoto action_12
action_129 (13) = happyGoto action_13
action_129 _ = happyFail (happyExpListPerState 129)

action_130 _ = happyReduce_16

action_131 _ = happyReduce_17

action_132 (91) = happyShift action_124
action_132 (33) = happyGoto action_184
action_132 _ = happyFail (happyExpListPerState 132)

action_133 _ = happyReduce_70

action_134 _ = happyReduce_82

action_135 (89) = happyShift action_183
action_135 _ = happyFail (happyExpListPerState 135)

action_136 _ = happyReduce_56

action_137 _ = happyReduce_53

action_138 _ = happyReduce_54

action_139 _ = happyReduce_55

action_140 _ = happyReduce_57

action_141 (44) = happyShift action_143
action_141 (45) = happyShift action_144
action_141 _ = happyReduce_71

action_142 _ = happyReduce_66

action_143 (43) = happyShift action_116
action_143 (46) = happyShift action_117
action_143 (86) = happyShift action_66
action_143 (14) = happyGoto action_112
action_143 (15) = happyGoto action_113
action_143 (27) = happyGoto action_182
action_143 _ = happyFail (happyExpListPerState 143)

action_144 (43) = happyShift action_116
action_144 (46) = happyShift action_117
action_144 (86) = happyShift action_66
action_144 (14) = happyGoto action_112
action_144 (15) = happyGoto action_113
action_144 (27) = happyGoto action_181
action_144 _ = happyFail (happyExpListPerState 144)

action_145 (43) = happyShift action_116
action_145 (46) = happyShift action_117
action_145 (86) = happyShift action_66
action_145 (14) = happyGoto action_112
action_145 (15) = happyGoto action_113
action_145 (27) = happyGoto action_114
action_145 (31) = happyGoto action_180
action_145 _ = happyFail (happyExpListPerState 145)

action_146 (86) = happyShift action_66
action_146 (91) = happyShift action_179
action_146 (15) = happyGoto action_178
action_146 _ = happyFail (happyExpListPerState 146)

action_147 _ = happyReduce_47

action_148 _ = happyReduce_48

action_149 _ = happyReduce_49

action_150 _ = happyReduce_50

action_151 _ = happyReduce_51

action_152 _ = happyReduce_52

action_153 _ = happyReduce_58

action_154 _ = happyReduce_80

action_155 _ = happyReduce_24

action_156 (34) = happyShift action_14
action_156 (37) = happyShift action_15
action_156 (38) = happyShift action_16
action_156 (41) = happyShift action_17
action_156 (47) = happyShift action_18
action_156 (49) = happyShift action_19
action_156 (51) = happyShift action_20
action_156 (52) = happyShift action_21
action_156 (53) = happyShift action_22
action_156 (60) = happyShift action_23
action_156 (64) = happyShift action_24
action_156 (65) = happyShift action_25
action_156 (66) = happyShift action_26
action_156 (67) = happyShift action_27
action_156 (68) = happyShift action_28
action_156 (87) = happyShift action_29
action_156 (92) = happyShift action_30
action_156 (5) = happyGoto action_177
action_156 (6) = happyGoto action_6
action_156 (7) = happyGoto action_7
action_156 (8) = happyGoto action_8
action_156 (9) = happyGoto action_9
action_156 (10) = happyGoto action_10
action_156 (11) = happyGoto action_11
action_156 (12) = happyGoto action_12
action_156 (13) = happyGoto action_13
action_156 _ = happyFail (happyExpListPerState 156)

action_157 (34) = happyShift action_14
action_157 (37) = happyShift action_15
action_157 (38) = happyShift action_16
action_157 (41) = happyShift action_17
action_157 (47) = happyShift action_18
action_157 (49) = happyShift action_19
action_157 (51) = happyShift action_20
action_157 (52) = happyShift action_21
action_157 (53) = happyShift action_22
action_157 (60) = happyShift action_23
action_157 (64) = happyShift action_24
action_157 (65) = happyShift action_25
action_157 (66) = happyShift action_26
action_157 (67) = happyShift action_27
action_157 (68) = happyShift action_28
action_157 (87) = happyShift action_29
action_157 (92) = happyShift action_30
action_157 (5) = happyGoto action_176
action_157 (6) = happyGoto action_6
action_157 (7) = happyGoto action_7
action_157 (8) = happyGoto action_8
action_157 (9) = happyGoto action_9
action_157 (10) = happyGoto action_10
action_157 (11) = happyGoto action_11
action_157 (12) = happyGoto action_12
action_157 (13) = happyGoto action_13
action_157 _ = happyFail (happyExpListPerState 157)

action_158 (34) = happyShift action_14
action_158 (37) = happyShift action_15
action_158 (38) = happyShift action_16
action_158 (41) = happyShift action_17
action_158 (47) = happyShift action_18
action_158 (49) = happyShift action_19
action_158 (51) = happyShift action_20
action_158 (52) = happyShift action_21
action_158 (53) = happyShift action_22
action_158 (60) = happyShift action_23
action_158 (64) = happyShift action_24
action_158 (65) = happyShift action_25
action_158 (66) = happyShift action_26
action_158 (67) = happyShift action_27
action_158 (68) = happyShift action_28
action_158 (87) = happyShift action_29
action_158 (92) = happyShift action_30
action_158 (5) = happyGoto action_175
action_158 (6) = happyGoto action_6
action_158 (7) = happyGoto action_7
action_158 (8) = happyGoto action_8
action_158 (9) = happyGoto action_9
action_158 (10) = happyGoto action_10
action_158 (11) = happyGoto action_11
action_158 (12) = happyGoto action_12
action_158 (13) = happyGoto action_13
action_158 _ = happyFail (happyExpListPerState 158)

action_159 _ = happyReduce_78

action_160 (44) = happyShift action_172
action_160 (45) = happyShift action_173
action_160 (79) = happyShift action_174
action_160 _ = happyReduce_85

action_161 (78) = happyShift action_171
action_161 _ = happyFail (happyExpListPerState 161)

action_162 (43) = happyShift action_162
action_162 (55) = happyShift action_163
action_162 (16) = happyGoto action_159
action_162 (28) = happyGoto action_170
action_162 _ = happyFail (happyExpListPerState 162)

action_163 (80) = happyShift action_169
action_163 _ = happyFail (happyExpListPerState 163)

action_164 _ = happyReduce_67

action_165 (34) = happyShift action_14
action_165 (37) = happyShift action_15
action_165 (38) = happyShift action_16
action_165 (41) = happyShift action_17
action_165 (47) = happyShift action_18
action_165 (49) = happyShift action_19
action_165 (51) = happyShift action_20
action_165 (52) = happyShift action_21
action_165 (53) = happyShift action_22
action_165 (60) = happyShift action_23
action_165 (64) = happyShift action_24
action_165 (65) = happyShift action_25
action_165 (66) = happyShift action_26
action_165 (67) = happyShift action_27
action_165 (68) = happyShift action_28
action_165 (87) = happyShift action_29
action_165 (92) = happyShift action_30
action_165 (5) = happyGoto action_168
action_165 (6) = happyGoto action_6
action_165 (7) = happyGoto action_7
action_165 (8) = happyGoto action_8
action_165 (9) = happyGoto action_9
action_165 (10) = happyGoto action_10
action_165 (11) = happyGoto action_11
action_165 (12) = happyGoto action_12
action_165 (13) = happyGoto action_13
action_165 _ = happyFail (happyExpListPerState 165)

action_166 _ = happyReduce_35

action_167 _ = happyReduce_1

action_168 _ = happyReduce_29

action_169 (86) = happyShift action_66
action_169 (15) = happyGoto action_189
action_169 _ = happyFail (happyExpListPerState 169)

action_170 (44) = happyShift action_172
action_170 (45) = happyShift action_173
action_170 _ = happyReduce_75

action_171 _ = happyReduce_68

action_172 (43) = happyShift action_162
action_172 (55) = happyShift action_163
action_172 (16) = happyGoto action_159
action_172 (28) = happyGoto action_188
action_172 _ = happyFail (happyExpListPerState 172)

action_173 (43) = happyShift action_162
action_173 (55) = happyShift action_163
action_173 (16) = happyGoto action_159
action_173 (28) = happyGoto action_187
action_173 _ = happyFail (happyExpListPerState 173)

action_174 (43) = happyShift action_162
action_174 (55) = happyShift action_163
action_174 (16) = happyGoto action_159
action_174 (28) = happyGoto action_160
action_174 (32) = happyGoto action_186
action_174 _ = happyFail (happyExpListPerState 174)

action_175 _ = happyReduce_30

action_176 _ = happyReduce_31

action_177 _ = happyReduce_32

action_178 _ = happyReduce_42

action_179 _ = happyReduce_41

action_180 _ = happyReduce_84

action_181 (44) = happyShift action_143
action_181 (45) = happyShift action_144
action_181 _ = happyReduce_73

action_182 (44) = happyShift action_143
action_182 (45) = happyShift action_144
action_182 _ = happyReduce_72

action_183 (70) = happyShift action_147
action_183 (71) = happyShift action_148
action_183 (72) = happyShift action_149
action_183 (73) = happyShift action_150
action_183 (74) = happyShift action_151
action_183 (75) = happyShift action_152
action_183 (18) = happyGoto action_185
action_183 _ = happyFail (happyExpListPerState 183)

action_184 _ = happyReduce_88

action_185 (89) = happyShift action_191
action_185 _ = happyFail (happyExpListPerState 185)

action_186 _ = happyReduce_86

action_187 (44) = happyShift action_172
action_187 (45) = happyShift action_173
action_187 _ = happyReduce_77

action_188 (44) = happyShift action_172
action_188 (45) = happyShift action_173
action_188 _ = happyReduce_76

action_189 (70) = happyShift action_147
action_189 (71) = happyShift action_148
action_189 (72) = happyShift action_149
action_189 (73) = happyShift action_150
action_189 (74) = happyShift action_151
action_189 (75) = happyShift action_152
action_189 (18) = happyGoto action_190
action_189 _ = happyFail (happyExpListPerState 189)

action_190 (56) = happyShift action_192
action_190 _ = happyFail (happyExpListPerState 190)

action_191 _ = happyReduce_43

action_192 (80) = happyShift action_193
action_192 _ = happyFail (happyExpListPerState 192)

action_193 (86) = happyShift action_66
action_193 (15) = happyGoto action_194
action_193 _ = happyFail (happyExpListPerState 193)

action_194 _ = happyReduce_45

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
happyReduction_8 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (Insert happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (Delete happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (Update happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (Set happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (Join happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (Format happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	_
	 =  HappyAbsSyn7
		 (SelectAll happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (SelectCol happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 5 7 happyReduction_16
happyReduction_16 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn24  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectAllWhere happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 5 7 happyReduction_17
happyReduction_17 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn24  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectColWhere happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 4 8 happyReduction_18
happyReduction_18 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn26  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (InsertValues happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 8 happyReduction_19
happyReduction_19 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (InsertColumn happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_2  9 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (DeleteAll happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (DeleteCol happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 9 happyReduction_22
happyReduction_22 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn24  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (DeleteAllWhere happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn22  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (UpdateAll happy_var_2 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 5 10 happyReduction_24
happyReduction_24 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn24  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (UpdateWhere happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Union happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  11 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Intersection happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  11 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Difference happy_var_2 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  12 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (JoinStandard happy_var_2 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 6 12 happyReduction_29
happyReduction_29 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn25  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (JoinInner happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 6 12 happyReduction_30
happyReduction_30 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn25  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (JoinLeft happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 6 12 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn25  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (JoinRight happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 6 12 happyReduction_32
happyReduction_32 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn25  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (JoinOuter happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 12 happyReduction_33
happyReduction_33 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (JoinFull happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 4 13 happyReduction_34
happyReduction_34 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 5 13 happyReduction_35
happyReduction_35 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn21  happy_var_4) `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (OrderByCol happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_3  13 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn13
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  13 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn13
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  13 happyReduction_38
happyReduction_38 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn13
		 (Last happy_var_2 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  13 happyReduction_39
happyReduction_39 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Unique happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  13 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Transpose happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  14 happyReduction_41
happyReduction_41 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn18  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  14 happyReduction_42
happyReduction_42 (HappyAbsSyn15  happy_var_3)
	(HappyAbsSyn18  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happyReduce 5 14 happyReduction_43
happyReduction_43 ((HappyTerminal (TokenInt  _ happy_var_5)) `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_3)) `HappyStk`
	(HappyAbsSyn19  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (IndexVal happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_44 = happySpecReduce_2  15 happyReduction_44
happyReduction_44 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn15
		 (happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happyReduce 7 16 happyReduction_45
happyReduction_45 ((HappyAbsSyn15  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (TableComparison happy_var_3 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_3  17 happyReduction_46
happyReduction_46 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn17
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  18 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn18
		 (Eq
	)

happyReduce_48 = happySpecReduce_1  18 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn18
		 (LessThan
	)

happyReduce_49 = happySpecReduce_1  18 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn18
		 (GreaterThan
	)

happyReduce_50 = happySpecReduce_1  18 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn18
		 (LessThanEq
	)

happyReduce_51 = happySpecReduce_1  18 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn18
		 (GreaterThanEq
	)

happyReduce_52 = happySpecReduce_1  18 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn18
		 (NotEq
	)

happyReduce_53 = happySpecReduce_1  19 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn19
		 (Add
	)

happyReduce_54 = happySpecReduce_1  19 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn19
		 (Subtract
	)

happyReduce_55 = happySpecReduce_1  19 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn19
		 (Divide
	)

happyReduce_56 = happySpecReduce_1  19 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn19
		 (Multiply
	)

happyReduce_57 = happySpecReduce_1  19 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn19
		 (Modulo
	)

happyReduce_58 = happySpecReduce_3  20 happyReduction_58
happyReduction_58 (HappyTerminal (TokenStr _ happy_var_3))
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn20
		 (Assignment happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  21 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn21
		 (Asc
	)

happyReduce_60 = happySpecReduce_1  21 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn21
		 (Desc
	)

happyReduce_61 = happySpecReduce_2  22 happyReduction_61
happyReduction_61 _
	_
	 =  HappyAbsSyn22
		 ([]
	)

happyReduce_62 = happySpecReduce_3  22 happyReduction_62
happyReduction_62 _
	(HappyAbsSyn29  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (happy_var_2
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  23 happyReduction_63
happyReduction_63 _
	_
	 =  HappyAbsSyn23
		 ([]
	)

happyReduce_64 = happySpecReduce_3  23 happyReduction_64
happyReduction_64 _
	(HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn23
		 (happy_var_2
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_2  24 happyReduction_65
happyReduction_65 _
	_
	 =  HappyAbsSyn24
		 ([]
	)

happyReduce_66 = happySpecReduce_3  24 happyReduction_66
happyReduction_66 _
	(HappyAbsSyn31  happy_var_2)
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
	(HappyAbsSyn32  happy_var_2)
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
	(HappyAbsSyn33  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (happy_var_2
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_2  27 happyReduction_71
happyReduction_71 (HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn27
		 (Not happy_var_2
	)
happyReduction_71 _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  27 happyReduction_72
happyReduction_72 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (And happy_var_1 happy_var_3
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_3  27 happyReduction_73
happyReduction_73 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (Or happy_var_1 happy_var_3
	)
happyReduction_73 _ _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_1  27 happyReduction_74
happyReduction_74 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn27
		 (Comparison happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_2  28 happyReduction_75
happyReduction_75 (HappyAbsSyn28  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (Not happy_var_2
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_3  28 happyReduction_76
happyReduction_76 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (And happy_var_1 happy_var_3
	)
happyReduction_76 _ _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  28 happyReduction_77
happyReduction_77 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Or happy_var_1 happy_var_3
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_1  28 happyReduction_78
happyReduction_78 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn28
		 (Comparison happy_var_1
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  29 happyReduction_79
happyReduction_79 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn29
		 ([happy_var_1]
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  29 happyReduction_80
happyReduction_80 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn29
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  30 happyReduction_81
happyReduction_81 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn30
		 ([happy_var_1]
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  30 happyReduction_82
happyReduction_82 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn30
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  31 happyReduction_83
happyReduction_83 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn31
		 ([happy_var_1]
	)
happyReduction_83 _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  31 happyReduction_84
happyReduction_84 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn31
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_1  32 happyReduction_85
happyReduction_85 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1]
	)
happyReduction_85 _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  32 happyReduction_86
happyReduction_86 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_1  33 happyReduction_87
happyReduction_87 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn33
		 ([happy_var_1]
	)
happyReduction_87 _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_3  33 happyReduction_88
happyReduction_88 (HappyAbsSyn33  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn33
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_88 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 93 93 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenRead _ -> cont 34;
	TokenLet _ -> cont 35;
	TokenReturn _ -> cont 36;
	TokenSelect _ -> cont 37;
	TokenInsert _ -> cont 38;
	TokenValues _ -> cont 39;
	TokenColumn _ -> cont 40;
	TokenDelete _ -> cont 41;
	TokenWhere _ -> cont 42;
	TokenNot _ -> cont 43;
	TokenAnd _ -> cont 44;
	TokenOr _ -> cont 45;
	TokenIndex _ -> cont 46;
	TokenUpdate _ -> cont 47;
	TokenSet _ -> cont 48;
	TokenUnion _ -> cont 49;
	TokenAll _ -> cont 50;
	TokenIntersection _ -> cont 51;
	TokenDifference _ -> cont 52;
	TokenJoin _ -> cont 53;
	TokenInner _ -> cont 54;
	TokenLeft _ -> cont 55;
	TokenRight _ -> cont 56;
	TokenOuter _ -> cont 57;
	TokenFull _ -> cont 58;
	TokenOn _ -> cont 59;
	TokenOrder _ -> cont 60;
	TokenBy _ -> cont 61;
	TokenAsc _ -> cont 62;
	TokenDesc _ -> cont 63;
	TokenLimit _ -> cont 64;
	TokenOffset _ -> cont 65;
	TokenLast _ -> cont 66;
	TokenUnique _ -> cont 67;
	TokenTranspose _ -> cont 68;
	TokenAssign _ -> cont 69;
	TokenEq _ -> cont 70;
	TokenLessThan _ -> cont 71;
	TokenGreaterThan _ -> cont 72;
	TokenLessThanEq _ -> cont 73;
	TokenGreaterThanEq _ -> cont 74;
	TokenNotEq _ -> cont 75;
	TokenSep _ -> cont 76;
	TokenLSquare _ -> cont 77;
	TokenRSquare _ -> cont 78;
	TokenComma _ -> cont 79;
	TokenDot _ -> cont 80;
	TokenAst _ -> cont 81;
	TokenAdd _ -> cont 82;
	TokenSubtract _ -> cont 83;
	TokenDivide _ -> cont 84;
	TokenModulo _ -> cont 85;
	TokenAt _ -> cont 86;
	TokenLParen _ -> cont 87;
	TokenRParen _ -> cont 88;
	TokenInt  _ happy_dollar_dollar -> cont 89;
	TokenFilename _ happy_dollar_dollar -> cont 90;
	TokenStr _ happy_dollar_dollar -> cont 91;
	TokenVar _ happy_dollar_dollar -> cont 92;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 93 tk tks = happyError' (tks, explist)
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

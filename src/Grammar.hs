{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,638) ([0,49152,0,0,0,0,0,4,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,8192,59923,31808,8192,4,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,136,0,0,12,0,0,0,0,41778,50190,2055,66,0,0,0,32768,0,0,12800,3745,1988,16896,0,8192,59923,31808,8192,4,0,41266,50190,7,66,0,4896,24554,124,1056,0,0,0,8,0,0,0,0,0,32768,0,0,0,0,0,8,0,0,0,0,128,0,12800,3745,1988,16896,0,8192,59923,31808,8192,4,0,41266,50190,7,66,0,0,0,0,0,0,0,0,2048,0,0,8192,59923,31808,8192,4,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,8192,59923,31808,8192,4,0,41266,50190,7,66,0,4896,16618,124,1056,0,0,0,48,8,0,8192,59923,31808,8192,4,0,0,512,0,0,0,0,8192,0,0,0,0,0,2,0,0,0,0,32,0,0,0,41266,50190,7,66,0,4896,16618,124,1056,0,12800,3745,1988,16896,0,8192,59923,31808,8192,4,0,41778,50190,7,66,0,0,0,0,17,0,0,0,0,0,0,8192,59923,31808,8192,4,0,0,0,2048,0,0,0,0,0,17,0,0,0,0,8,0,0,0,0,4096,0,0,41778,50190,7,66,0,13088,16618,124,1056,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,128,0,0,41266,50190,7,66,0,0,0,0,128,0,12800,3745,1988,16896,0,0,0,0,256,2,0,0,0,8192,0,0,0,0,0,1,0,0,0,0,0,0,8192,59923,31808,8192,4,0,1024,0,4096,1,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,512,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,59923,31808,8192,4,0,0,32,0,0,0,0,512,0,0,0,0,8192,0,0,0,0,0,2,0,0,0,0,0,0,0,0,4896,16618,124,1056,0,0,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,3072,0,0,0,0,8192,59923,31808,8192,4,0,0,0,0,0,0,4896,16618,124,1056,0,0,0,0,64,0,8192,59923,31808,8192,4,0,41266,50190,7,66,0,4896,16618,124,1056,0,0,0,0,0,0,8192,59923,31808,8192,4,0,0,0,0,0,0,0,0,0,16,0,0,0,0,8192,0,0,384,0,512,0,0,0,0,0,0,0,0,0,16128,0,0,0,0,0,16,0,0,64,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12800,3745,1988,16896,0,8192,59923,31808,8192,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,256,0,0,64,0,4096,0,0,1024,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,41266,50190,7,66,0,4896,16618,124,1056,0,12800,3745,1988,16896,0,0,0,0,4096,0,0,41266,50190,7,66,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1008,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,1024,0,0,0,0,0,1,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectFunction","InsertFunction","DeleteFunction","UpdateFunction","SetFunction","JoinFunction","FormatFunction","TableComparison","TableColumnRef","Direction","Predicate","Comparison","ColumnRef","ComparisonOperator","Assignment","List__Assignment__","List__ColumnRef__","List__Predicate__","List__Str__","ListCont__Assignment__","ListCont__ColumnRef__","ListCont__Predicate__","ListCont__Str__","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Update","Set","Union","All","Intersection","Difference","Join","Inner","Left","Right","Outer","Full","On","Order","By","Asc","Desc","Limit","Offset","Last","Unique","Transpose","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'.'","'*'","\"@\"","'('","')'","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 84
        bit_end = (st Prelude.+ 1) Prelude.* 84
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..83]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (31) = happyShift action_2
action_0 (32) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (31) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (83) = happyShift action_31
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (84) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (30) = happyShift action_14
action_4 (33) = happyShift action_15
action_4 (34) = happyShift action_16
action_4 (37) = happyShift action_17
action_4 (42) = happyShift action_18
action_4 (44) = happyShift action_19
action_4 (46) = happyShift action_20
action_4 (47) = happyShift action_21
action_4 (48) = happyShift action_22
action_4 (55) = happyShift action_23
action_4 (59) = happyShift action_24
action_4 (60) = happyShift action_25
action_4 (61) = happyShift action_26
action_4 (62) = happyShift action_27
action_4 (63) = happyShift action_28
action_4 (78) = happyShift action_29
action_4 (83) = happyShift action_30
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

action_5 (71) = happyShift action_60
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_7

action_8 _ = happyReduce_8

action_9 _ = happyReduce_9

action_10 _ = happyReduce_10

action_11 _ = happyReduce_11

action_12 _ = happyReduce_12

action_13 _ = happyReduce_13

action_14 (81) = happyShift action_59
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (72) = happyShift action_54
action_15 (76) = happyShift action_58
action_15 (23) = happyGoto action_57
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (35) = happyShift action_55
action_16 (36) = happyShift action_56
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (30) = happyShift action_14
action_17 (33) = happyShift action_15
action_17 (34) = happyShift action_16
action_17 (37) = happyShift action_17
action_17 (38) = happyShift action_53
action_17 (42) = happyShift action_18
action_17 (44) = happyShift action_19
action_17 (46) = happyShift action_20
action_17 (47) = happyShift action_21
action_17 (48) = happyShift action_22
action_17 (55) = happyShift action_23
action_17 (59) = happyShift action_24
action_17 (60) = happyShift action_25
action_17 (61) = happyShift action_26
action_17 (62) = happyShift action_27
action_17 (63) = happyShift action_28
action_17 (72) = happyShift action_54
action_17 (78) = happyShift action_29
action_17 (83) = happyShift action_30
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

action_18 (72) = happyShift action_50
action_18 (22) = happyGoto action_49
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (30) = happyShift action_14
action_19 (33) = happyShift action_15
action_19 (34) = happyShift action_16
action_19 (37) = happyShift action_17
action_19 (42) = happyShift action_18
action_19 (44) = happyShift action_19
action_19 (46) = happyShift action_20
action_19 (47) = happyShift action_21
action_19 (48) = happyShift action_22
action_19 (55) = happyShift action_23
action_19 (59) = happyShift action_24
action_19 (60) = happyShift action_25
action_19 (61) = happyShift action_26
action_19 (62) = happyShift action_27
action_19 (63) = happyShift action_28
action_19 (78) = happyShift action_29
action_19 (83) = happyShift action_30
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

action_20 (30) = happyShift action_14
action_20 (33) = happyShift action_15
action_20 (34) = happyShift action_16
action_20 (37) = happyShift action_17
action_20 (42) = happyShift action_18
action_20 (44) = happyShift action_19
action_20 (46) = happyShift action_20
action_20 (47) = happyShift action_21
action_20 (48) = happyShift action_22
action_20 (55) = happyShift action_23
action_20 (59) = happyShift action_24
action_20 (60) = happyShift action_25
action_20 (61) = happyShift action_26
action_20 (62) = happyShift action_27
action_20 (63) = happyShift action_28
action_20 (78) = happyShift action_29
action_20 (83) = happyShift action_30
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

action_21 (30) = happyShift action_14
action_21 (33) = happyShift action_15
action_21 (34) = happyShift action_16
action_21 (37) = happyShift action_17
action_21 (42) = happyShift action_18
action_21 (44) = happyShift action_19
action_21 (46) = happyShift action_20
action_21 (47) = happyShift action_21
action_21 (48) = happyShift action_22
action_21 (55) = happyShift action_23
action_21 (59) = happyShift action_24
action_21 (60) = happyShift action_25
action_21 (61) = happyShift action_26
action_21 (62) = happyShift action_27
action_21 (63) = happyShift action_28
action_21 (78) = happyShift action_29
action_21 (83) = happyShift action_30
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

action_22 (30) = happyShift action_14
action_22 (33) = happyShift action_15
action_22 (34) = happyShift action_16
action_22 (37) = happyShift action_17
action_22 (42) = happyShift action_18
action_22 (44) = happyShift action_19
action_22 (46) = happyShift action_20
action_22 (47) = happyShift action_21
action_22 (48) = happyShift action_22
action_22 (49) = happyShift action_41
action_22 (50) = happyShift action_42
action_22 (51) = happyShift action_43
action_22 (52) = happyShift action_44
action_22 (53) = happyShift action_45
action_22 (55) = happyShift action_23
action_22 (59) = happyShift action_24
action_22 (60) = happyShift action_25
action_22 (61) = happyShift action_26
action_22 (62) = happyShift action_27
action_22 (63) = happyShift action_28
action_22 (78) = happyShift action_29
action_22 (83) = happyShift action_30
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

action_23 (56) = happyShift action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (80) = happyShift action_38
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (80) = happyShift action_37
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (80) = happyShift action_36
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (30) = happyShift action_14
action_27 (33) = happyShift action_15
action_27 (34) = happyShift action_16
action_27 (37) = happyShift action_17
action_27 (42) = happyShift action_18
action_27 (44) = happyShift action_19
action_27 (46) = happyShift action_20
action_27 (47) = happyShift action_21
action_27 (48) = happyShift action_22
action_27 (55) = happyShift action_23
action_27 (59) = happyShift action_24
action_27 (60) = happyShift action_25
action_27 (61) = happyShift action_26
action_27 (62) = happyShift action_27
action_27 (63) = happyShift action_28
action_27 (78) = happyShift action_29
action_27 (83) = happyShift action_30
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

action_28 (30) = happyShift action_14
action_28 (33) = happyShift action_15
action_28 (34) = happyShift action_16
action_28 (37) = happyShift action_17
action_28 (42) = happyShift action_18
action_28 (44) = happyShift action_19
action_28 (46) = happyShift action_20
action_28 (47) = happyShift action_21
action_28 (48) = happyShift action_22
action_28 (55) = happyShift action_23
action_28 (59) = happyShift action_24
action_28 (60) = happyShift action_25
action_28 (61) = happyShift action_26
action_28 (62) = happyShift action_27
action_28 (63) = happyShift action_28
action_28 (78) = happyShift action_29
action_28 (83) = happyShift action_30
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

action_29 (30) = happyShift action_14
action_29 (33) = happyShift action_15
action_29 (34) = happyShift action_16
action_29 (37) = happyShift action_17
action_29 (42) = happyShift action_18
action_29 (44) = happyShift action_19
action_29 (46) = happyShift action_20
action_29 (47) = happyShift action_21
action_29 (48) = happyShift action_22
action_29 (55) = happyShift action_23
action_29 (59) = happyShift action_24
action_29 (60) = happyShift action_25
action_29 (61) = happyShift action_26
action_29 (62) = happyShift action_27
action_29 (63) = happyShift action_28
action_29 (78) = happyShift action_29
action_29 (83) = happyShift action_30
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

action_31 (64) = happyShift action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (30) = happyShift action_14
action_32 (33) = happyShift action_15
action_32 (34) = happyShift action_16
action_32 (37) = happyShift action_17
action_32 (42) = happyShift action_18
action_32 (44) = happyShift action_19
action_32 (46) = happyShift action_20
action_32 (47) = happyShift action_21
action_32 (48) = happyShift action_22
action_32 (55) = happyShift action_23
action_32 (59) = happyShift action_24
action_32 (60) = happyShift action_25
action_32 (61) = happyShift action_26
action_32 (62) = happyShift action_27
action_32 (63) = happyShift action_28
action_32 (78) = happyShift action_29
action_32 (83) = happyShift action_30
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

action_33 (79) = happyShift action_97
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_40

action_35 _ = happyReduce_39

action_36 (30) = happyShift action_14
action_36 (33) = happyShift action_15
action_36 (34) = happyShift action_16
action_36 (37) = happyShift action_17
action_36 (42) = happyShift action_18
action_36 (44) = happyShift action_19
action_36 (46) = happyShift action_20
action_36 (47) = happyShift action_21
action_36 (48) = happyShift action_22
action_36 (55) = happyShift action_23
action_36 (59) = happyShift action_24
action_36 (60) = happyShift action_25
action_36 (61) = happyShift action_26
action_36 (62) = happyShift action_27
action_36 (63) = happyShift action_28
action_36 (78) = happyShift action_29
action_36 (83) = happyShift action_30
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

action_37 (30) = happyShift action_14
action_37 (33) = happyShift action_15
action_37 (34) = happyShift action_16
action_37 (37) = happyShift action_17
action_37 (42) = happyShift action_18
action_37 (44) = happyShift action_19
action_37 (46) = happyShift action_20
action_37 (47) = happyShift action_21
action_37 (48) = happyShift action_22
action_37 (55) = happyShift action_23
action_37 (59) = happyShift action_24
action_37 (60) = happyShift action_25
action_37 (61) = happyShift action_26
action_37 (62) = happyShift action_27
action_37 (63) = happyShift action_28
action_37 (78) = happyShift action_29
action_37 (83) = happyShift action_30
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

action_38 (30) = happyShift action_14
action_38 (33) = happyShift action_15
action_38 (34) = happyShift action_16
action_38 (37) = happyShift action_17
action_38 (42) = happyShift action_18
action_38 (44) = happyShift action_19
action_38 (46) = happyShift action_20
action_38 (47) = happyShift action_21
action_38 (48) = happyShift action_22
action_38 (55) = happyShift action_23
action_38 (59) = happyShift action_24
action_38 (60) = happyShift action_25
action_38 (61) = happyShift action_26
action_38 (62) = happyShift action_27
action_38 (63) = happyShift action_28
action_38 (78) = happyShift action_29
action_38 (83) = happyShift action_30
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

action_39 (57) = happyShift action_92
action_39 (58) = happyShift action_93
action_39 (72) = happyShift action_54
action_39 (16) = happyGoto action_90
action_39 (23) = happyGoto action_91
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (30) = happyShift action_14
action_40 (33) = happyShift action_15
action_40 (34) = happyShift action_16
action_40 (37) = happyShift action_17
action_40 (42) = happyShift action_18
action_40 (44) = happyShift action_19
action_40 (46) = happyShift action_20
action_40 (47) = happyShift action_21
action_40 (48) = happyShift action_22
action_40 (55) = happyShift action_23
action_40 (59) = happyShift action_24
action_40 (60) = happyShift action_25
action_40 (61) = happyShift action_26
action_40 (62) = happyShift action_27
action_40 (63) = happyShift action_28
action_40 (78) = happyShift action_29
action_40 (83) = happyShift action_30
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

action_41 (54) = happyShift action_88
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (54) = happyShift action_87
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (54) = happyShift action_86
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (54) = happyShift action_85
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (30) = happyShift action_14
action_45 (33) = happyShift action_15
action_45 (34) = happyShift action_16
action_45 (37) = happyShift action_17
action_45 (42) = happyShift action_18
action_45 (44) = happyShift action_19
action_45 (46) = happyShift action_20
action_45 (47) = happyShift action_21
action_45 (48) = happyShift action_22
action_45 (55) = happyShift action_23
action_45 (59) = happyShift action_24
action_45 (60) = happyShift action_25
action_45 (61) = happyShift action_26
action_45 (62) = happyShift action_27
action_45 (63) = happyShift action_28
action_45 (78) = happyShift action_29
action_45 (83) = happyShift action_30
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

action_46 (30) = happyShift action_14
action_46 (33) = happyShift action_15
action_46 (34) = happyShift action_16
action_46 (37) = happyShift action_17
action_46 (42) = happyShift action_18
action_46 (44) = happyShift action_19
action_46 (46) = happyShift action_20
action_46 (47) = happyShift action_21
action_46 (48) = happyShift action_22
action_46 (55) = happyShift action_23
action_46 (59) = happyShift action_24
action_46 (60) = happyShift action_25
action_46 (61) = happyShift action_26
action_46 (62) = happyShift action_27
action_46 (63) = happyShift action_28
action_46 (78) = happyShift action_29
action_46 (83) = happyShift action_30
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

action_47 (30) = happyShift action_14
action_47 (33) = happyShift action_15
action_47 (34) = happyShift action_16
action_47 (37) = happyShift action_17
action_47 (42) = happyShift action_18
action_47 (44) = happyShift action_19
action_47 (46) = happyShift action_20
action_47 (47) = happyShift action_21
action_47 (48) = happyShift action_22
action_47 (55) = happyShift action_23
action_47 (59) = happyShift action_24
action_47 (60) = happyShift action_25
action_47 (61) = happyShift action_26
action_47 (62) = happyShift action_27
action_47 (63) = happyShift action_28
action_47 (78) = happyShift action_29
action_47 (83) = happyShift action_30
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

action_48 (30) = happyShift action_14
action_48 (33) = happyShift action_15
action_48 (34) = happyShift action_16
action_48 (37) = happyShift action_17
action_48 (42) = happyShift action_18
action_48 (44) = happyShift action_19
action_48 (46) = happyShift action_20
action_48 (47) = happyShift action_21
action_48 (48) = happyShift action_22
action_48 (55) = happyShift action_23
action_48 (59) = happyShift action_24
action_48 (60) = happyShift action_25
action_48 (61) = happyShift action_26
action_48 (62) = happyShift action_27
action_48 (63) = happyShift action_28
action_48 (78) = happyShift action_29
action_48 (83) = happyShift action_30
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

action_49 (30) = happyShift action_14
action_49 (33) = happyShift action_15
action_49 (34) = happyShift action_16
action_49 (37) = happyShift action_17
action_49 (38) = happyShift action_80
action_49 (42) = happyShift action_18
action_49 (44) = happyShift action_19
action_49 (46) = happyShift action_20
action_49 (47) = happyShift action_21
action_49 (48) = happyShift action_22
action_49 (55) = happyShift action_23
action_49 (59) = happyShift action_24
action_49 (60) = happyShift action_25
action_49 (61) = happyShift action_26
action_49 (62) = happyShift action_27
action_49 (63) = happyShift action_28
action_49 (78) = happyShift action_29
action_49 (83) = happyShift action_30
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

action_50 (73) = happyShift action_78
action_50 (77) = happyShift action_66
action_50 (19) = happyGoto action_75
action_50 (21) = happyGoto action_76
action_50 (26) = happyGoto action_77
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_20

action_52 (30) = happyShift action_14
action_52 (33) = happyShift action_15
action_52 (34) = happyShift action_16
action_52 (37) = happyShift action_17
action_52 (42) = happyShift action_18
action_52 (44) = happyShift action_19
action_52 (46) = happyShift action_20
action_52 (47) = happyShift action_21
action_52 (48) = happyShift action_22
action_52 (55) = happyShift action_23
action_52 (59) = happyShift action_24
action_52 (60) = happyShift action_25
action_52 (61) = happyShift action_26
action_52 (62) = happyShift action_27
action_52 (63) = happyShift action_28
action_52 (78) = happyShift action_29
action_52 (83) = happyShift action_30
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

action_53 (72) = happyShift action_73
action_53 (24) = happyGoto action_72
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (73) = happyShift action_71
action_54 (77) = happyShift action_66
action_54 (19) = happyGoto action_69
action_54 (27) = happyGoto action_70
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (72) = happyShift action_68
action_55 (25) = happyGoto action_67
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (77) = happyShift action_66
action_56 (19) = happyGoto action_65
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (30) = happyShift action_14
action_57 (33) = happyShift action_15
action_57 (34) = happyShift action_16
action_57 (37) = happyShift action_17
action_57 (38) = happyShift action_64
action_57 (42) = happyShift action_18
action_57 (44) = happyShift action_19
action_57 (46) = happyShift action_20
action_57 (47) = happyShift action_21
action_57 (48) = happyShift action_22
action_57 (55) = happyShift action_23
action_57 (59) = happyShift action_24
action_57 (60) = happyShift action_25
action_57 (61) = happyShift action_26
action_57 (62) = happyShift action_27
action_57 (63) = happyShift action_28
action_57 (78) = happyShift action_29
action_57 (83) = happyShift action_30
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

action_58 (30) = happyShift action_14
action_58 (33) = happyShift action_15
action_58 (34) = happyShift action_16
action_58 (37) = happyShift action_17
action_58 (38) = happyShift action_62
action_58 (42) = happyShift action_18
action_58 (44) = happyShift action_19
action_58 (46) = happyShift action_20
action_58 (47) = happyShift action_21
action_58 (48) = happyShift action_22
action_58 (55) = happyShift action_23
action_58 (59) = happyShift action_24
action_58 (60) = happyShift action_25
action_58 (61) = happyShift action_26
action_58 (62) = happyShift action_27
action_58 (63) = happyShift action_28
action_58 (78) = happyShift action_29
action_58 (83) = happyShift action_30
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

action_62 (72) = happyShift action_73
action_62 (24) = happyGoto action_128
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_15

action_64 (72) = happyShift action_73
action_64 (24) = happyGoto action_127
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (30) = happyShift action_14
action_65 (33) = happyShift action_15
action_65 (34) = happyShift action_16
action_65 (37) = happyShift action_17
action_65 (42) = happyShift action_18
action_65 (44) = happyShift action_19
action_65 (46) = happyShift action_20
action_65 (47) = happyShift action_21
action_65 (48) = happyShift action_22
action_65 (55) = happyShift action_23
action_65 (59) = happyShift action_24
action_65 (60) = happyShift action_25
action_65 (61) = happyShift action_26
action_65 (62) = happyShift action_27
action_65 (63) = happyShift action_28
action_65 (78) = happyShift action_29
action_65 (83) = happyShift action_30
action_65 (5) = happyGoto action_126
action_65 (6) = happyGoto action_6
action_65 (7) = happyGoto action_7
action_65 (8) = happyGoto action_8
action_65 (9) = happyGoto action_9
action_65 (10) = happyGoto action_10
action_65 (11) = happyGoto action_11
action_65 (12) = happyGoto action_12
action_65 (13) = happyGoto action_13
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (80) = happyShift action_125
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (30) = happyShift action_14
action_67 (33) = happyShift action_15
action_67 (34) = happyShift action_16
action_67 (37) = happyShift action_17
action_67 (42) = happyShift action_18
action_67 (44) = happyShift action_19
action_67 (46) = happyShift action_20
action_67 (47) = happyShift action_21
action_67 (48) = happyShift action_22
action_67 (55) = happyShift action_23
action_67 (59) = happyShift action_24
action_67 (60) = happyShift action_25
action_67 (61) = happyShift action_26
action_67 (62) = happyShift action_27
action_67 (63) = happyShift action_28
action_67 (78) = happyShift action_29
action_67 (83) = happyShift action_30
action_67 (5) = happyGoto action_124
action_67 (6) = happyGoto action_6
action_67 (7) = happyGoto action_7
action_67 (8) = happyGoto action_8
action_67 (9) = happyGoto action_9
action_67 (10) = happyGoto action_10
action_67 (11) = happyGoto action_11
action_67 (12) = happyGoto action_12
action_67 (13) = happyGoto action_13
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (73) = happyShift action_122
action_68 (82) = happyShift action_123
action_68 (29) = happyGoto action_121
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (74) = happyShift action_120
action_69 _ = happyReduce_69

action_70 (73) = happyShift action_119
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_61

action_72 (30) = happyShift action_14
action_72 (33) = happyShift action_15
action_72 (34) = happyShift action_16
action_72 (37) = happyShift action_17
action_72 (42) = happyShift action_18
action_72 (44) = happyShift action_19
action_72 (46) = happyShift action_20
action_72 (47) = happyShift action_21
action_72 (48) = happyShift action_22
action_72 (55) = happyShift action_23
action_72 (59) = happyShift action_24
action_72 (60) = happyShift action_25
action_72 (61) = happyShift action_26
action_72 (62) = happyShift action_27
action_72 (63) = happyShift action_28
action_72 (78) = happyShift action_29
action_72 (83) = happyShift action_30
action_72 (5) = happyGoto action_118
action_72 (6) = happyGoto action_6
action_72 (7) = happyGoto action_7
action_72 (8) = happyGoto action_8
action_72 (9) = happyGoto action_9
action_72 (10) = happyGoto action_10
action_72 (11) = happyGoto action_11
action_72 (12) = happyGoto action_12
action_72 (13) = happyGoto action_13
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (39) = happyShift action_116
action_73 (73) = happyShift action_117
action_73 (77) = happyShift action_66
action_73 (17) = happyGoto action_112
action_73 (18) = happyGoto action_113
action_73 (19) = happyGoto action_114
action_73 (28) = happyGoto action_115
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_21

action_75 (64) = happyShift action_111
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (74) = happyShift action_110
action_76 _ = happyReduce_67

action_77 (73) = happyShift action_109
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_59

action_79 _ = happyReduce_23

action_80 (72) = happyShift action_73
action_80 (24) = happyGoto action_108
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_25

action_82 _ = happyReduce_26

action_83 _ = happyReduce_27

action_84 (30) = happyShift action_14
action_84 (33) = happyShift action_15
action_84 (34) = happyShift action_16
action_84 (37) = happyShift action_17
action_84 (42) = happyShift action_18
action_84 (44) = happyShift action_19
action_84 (46) = happyShift action_20
action_84 (47) = happyShift action_21
action_84 (48) = happyShift action_22
action_84 (55) = happyShift action_23
action_84 (59) = happyShift action_24
action_84 (60) = happyShift action_25
action_84 (61) = happyShift action_26
action_84 (62) = happyShift action_27
action_84 (63) = happyShift action_28
action_84 (78) = happyShift action_29
action_84 (83) = happyShift action_30
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

action_85 (50) = happyShift action_103
action_85 (14) = happyGoto action_106
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (50) = happyShift action_103
action_86 (14) = happyGoto action_105
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (50) = happyShift action_103
action_87 (14) = happyGoto action_104
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (50) = happyShift action_103
action_88 (14) = happyGoto action_102
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_28

action_90 (30) = happyShift action_14
action_90 (33) = happyShift action_15
action_90 (34) = happyShift action_16
action_90 (37) = happyShift action_17
action_90 (42) = happyShift action_18
action_90 (44) = happyShift action_19
action_90 (46) = happyShift action_20
action_90 (47) = happyShift action_21
action_90 (48) = happyShift action_22
action_90 (55) = happyShift action_23
action_90 (59) = happyShift action_24
action_90 (60) = happyShift action_25
action_90 (61) = happyShift action_26
action_90 (62) = happyShift action_27
action_90 (63) = happyShift action_28
action_90 (78) = happyShift action_29
action_90 (83) = happyShift action_30
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

action_91 (57) = happyShift action_92
action_91 (58) = happyShift action_93
action_91 (16) = happyGoto action_100
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_43

action_93 _ = happyReduce_44

action_94 _ = happyReduce_36

action_95 _ = happyReduce_37

action_96 _ = happyReduce_38

action_97 _ = happyReduce_6

action_98 (71) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (31) = happyShift action_2
action_99 (32) = happyShift action_4
action_99 (4) = happyGoto action_155
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (30) = happyShift action_14
action_100 (33) = happyShift action_15
action_100 (34) = happyShift action_16
action_100 (37) = happyShift action_17
action_100 (42) = happyShift action_18
action_100 (44) = happyShift action_19
action_100 (46) = happyShift action_20
action_100 (47) = happyShift action_21
action_100 (48) = happyShift action_22
action_100 (55) = happyShift action_23
action_100 (59) = happyShift action_24
action_100 (60) = happyShift action_25
action_100 (61) = happyShift action_26
action_100 (62) = happyShift action_27
action_100 (63) = happyShift action_28
action_100 (78) = happyShift action_29
action_100 (83) = happyShift action_30
action_100 (5) = happyGoto action_154
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

action_102 (30) = happyShift action_14
action_102 (33) = happyShift action_15
action_102 (34) = happyShift action_16
action_102 (37) = happyShift action_17
action_102 (42) = happyShift action_18
action_102 (44) = happyShift action_19
action_102 (46) = happyShift action_20
action_102 (47) = happyShift action_21
action_102 (48) = happyShift action_22
action_102 (55) = happyShift action_23
action_102 (59) = happyShift action_24
action_102 (60) = happyShift action_25
action_102 (61) = happyShift action_26
action_102 (62) = happyShift action_27
action_102 (63) = happyShift action_28
action_102 (78) = happyShift action_29
action_102 (83) = happyShift action_30
action_102 (5) = happyGoto action_153
action_102 (6) = happyGoto action_6
action_102 (7) = happyGoto action_7
action_102 (8) = happyGoto action_8
action_102 (9) = happyGoto action_9
action_102 (10) = happyGoto action_10
action_102 (11) = happyGoto action_11
action_102 (12) = happyGoto action_12
action_102 (13) = happyGoto action_13
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (75) = happyShift action_152
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (30) = happyShift action_14
action_104 (33) = happyShift action_15
action_104 (34) = happyShift action_16
action_104 (37) = happyShift action_17
action_104 (42) = happyShift action_18
action_104 (44) = happyShift action_19
action_104 (46) = happyShift action_20
action_104 (47) = happyShift action_21
action_104 (48) = happyShift action_22
action_104 (55) = happyShift action_23
action_104 (59) = happyShift action_24
action_104 (60) = happyShift action_25
action_104 (61) = happyShift action_26
action_104 (62) = happyShift action_27
action_104 (63) = happyShift action_28
action_104 (78) = happyShift action_29
action_104 (83) = happyShift action_30
action_104 (5) = happyGoto action_151
action_104 (6) = happyGoto action_6
action_104 (7) = happyGoto action_7
action_104 (8) = happyGoto action_8
action_104 (9) = happyGoto action_9
action_104 (10) = happyGoto action_10
action_104 (11) = happyGoto action_11
action_104 (12) = happyGoto action_12
action_104 (13) = happyGoto action_13
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (30) = happyShift action_14
action_105 (33) = happyShift action_15
action_105 (34) = happyShift action_16
action_105 (37) = happyShift action_17
action_105 (42) = happyShift action_18
action_105 (44) = happyShift action_19
action_105 (46) = happyShift action_20
action_105 (47) = happyShift action_21
action_105 (48) = happyShift action_22
action_105 (55) = happyShift action_23
action_105 (59) = happyShift action_24
action_105 (60) = happyShift action_25
action_105 (61) = happyShift action_26
action_105 (62) = happyShift action_27
action_105 (63) = happyShift action_28
action_105 (78) = happyShift action_29
action_105 (83) = happyShift action_30
action_105 (5) = happyGoto action_150
action_105 (6) = happyGoto action_6
action_105 (7) = happyGoto action_7
action_105 (8) = happyGoto action_8
action_105 (9) = happyGoto action_9
action_105 (10) = happyGoto action_10
action_105 (11) = happyGoto action_11
action_105 (12) = happyGoto action_12
action_105 (13) = happyGoto action_13
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (30) = happyShift action_14
action_106 (33) = happyShift action_15
action_106 (34) = happyShift action_16
action_106 (37) = happyShift action_17
action_106 (42) = happyShift action_18
action_106 (44) = happyShift action_19
action_106 (46) = happyShift action_20
action_106 (47) = happyShift action_21
action_106 (48) = happyShift action_22
action_106 (55) = happyShift action_23
action_106 (59) = happyShift action_24
action_106 (60) = happyShift action_25
action_106 (61) = happyShift action_26
action_106 (62) = happyShift action_27
action_106 (63) = happyShift action_28
action_106 (78) = happyShift action_29
action_106 (83) = happyShift action_30
action_106 (5) = happyGoto action_149
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

action_108 (30) = happyShift action_14
action_108 (33) = happyShift action_15
action_108 (34) = happyShift action_16
action_108 (37) = happyShift action_17
action_108 (42) = happyShift action_18
action_108 (44) = happyShift action_19
action_108 (46) = happyShift action_20
action_108 (47) = happyShift action_21
action_108 (48) = happyShift action_22
action_108 (55) = happyShift action_23
action_108 (59) = happyShift action_24
action_108 (60) = happyShift action_25
action_108 (61) = happyShift action_26
action_108 (62) = happyShift action_27
action_108 (63) = happyShift action_28
action_108 (78) = happyShift action_29
action_108 (83) = happyShift action_30
action_108 (5) = happyGoto action_148
action_108 (6) = happyGoto action_6
action_108 (7) = happyGoto action_7
action_108 (8) = happyGoto action_8
action_108 (9) = happyGoto action_9
action_108 (10) = happyGoto action_10
action_108 (11) = happyGoto action_11
action_108 (12) = happyGoto action_12
action_108 (13) = happyGoto action_13
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_60

action_110 (77) = happyShift action_66
action_110 (19) = happyGoto action_75
action_110 (21) = happyGoto action_76
action_110 (26) = happyGoto action_147
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (82) = happyShift action_146
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (40) = happyShift action_143
action_112 (41) = happyShift action_144
action_112 (74) = happyShift action_145
action_112 _ = happyReduce_71

action_113 _ = happyReduce_48

action_114 (65) = happyShift action_137
action_114 (66) = happyShift action_138
action_114 (67) = happyShift action_139
action_114 (68) = happyShift action_140
action_114 (69) = happyShift action_141
action_114 (70) = happyShift action_142
action_114 (20) = happyGoto action_136
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (73) = happyShift action_135
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (39) = happyShift action_116
action_116 (77) = happyShift action_66
action_116 (17) = happyGoto action_134
action_116 (18) = happyGoto action_113
action_116 (19) = happyGoto action_114
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_63

action_118 _ = happyReduce_22

action_119 _ = happyReduce_62

action_120 (77) = happyShift action_66
action_120 (19) = happyGoto action_69
action_120 (27) = happyGoto action_133
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (73) = happyShift action_132
action_121 _ = happyFail (happyExpListPerState 121)

action_122 _ = happyReduce_65

action_123 (74) = happyShift action_131
action_123 _ = happyReduce_73

action_124 _ = happyReduce_18

action_125 _ = happyReduce_51

action_126 _ = happyReduce_19

action_127 (30) = happyShift action_14
action_127 (33) = happyShift action_15
action_127 (34) = happyShift action_16
action_127 (37) = happyShift action_17
action_127 (42) = happyShift action_18
action_127 (44) = happyShift action_19
action_127 (46) = happyShift action_20
action_127 (47) = happyShift action_21
action_127 (48) = happyShift action_22
action_127 (55) = happyShift action_23
action_127 (59) = happyShift action_24
action_127 (60) = happyShift action_25
action_127 (61) = happyShift action_26
action_127 (62) = happyShift action_27
action_127 (63) = happyShift action_28
action_127 (78) = happyShift action_29
action_127 (83) = happyShift action_30
action_127 (5) = happyGoto action_130
action_127 (6) = happyGoto action_6
action_127 (7) = happyGoto action_7
action_127 (8) = happyGoto action_8
action_127 (9) = happyGoto action_9
action_127 (10) = happyGoto action_10
action_127 (11) = happyGoto action_11
action_127 (12) = happyGoto action_12
action_127 (13) = happyGoto action_13
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (30) = happyShift action_14
action_128 (33) = happyShift action_15
action_128 (34) = happyShift action_16
action_128 (37) = happyShift action_17
action_128 (42) = happyShift action_18
action_128 (44) = happyShift action_19
action_128 (46) = happyShift action_20
action_128 (47) = happyShift action_21
action_128 (48) = happyShift action_22
action_128 (55) = happyShift action_23
action_128 (59) = happyShift action_24
action_128 (60) = happyShift action_25
action_128 (61) = happyShift action_26
action_128 (62) = happyShift action_27
action_128 (63) = happyShift action_28
action_128 (78) = happyShift action_29
action_128 (83) = happyShift action_30
action_128 (5) = happyGoto action_129
action_128 (6) = happyGoto action_6
action_128 (7) = happyGoto action_7
action_128 (8) = happyGoto action_8
action_128 (9) = happyGoto action_9
action_128 (10) = happyGoto action_10
action_128 (11) = happyGoto action_11
action_128 (12) = happyGoto action_12
action_128 (13) = happyGoto action_13
action_128 _ = happyFail (happyExpListPerState 128)

action_129 _ = happyReduce_16

action_130 _ = happyReduce_17

action_131 (82) = happyShift action_123
action_131 (29) = happyGoto action_166
action_131 _ = happyFail (happyExpListPerState 131)

action_132 _ = happyReduce_66

action_133 _ = happyReduce_70

action_134 (40) = happyShift action_143
action_134 (41) = happyShift action_144
action_134 _ = happyReduce_45

action_135 _ = happyReduce_64

action_136 (77) = happyShift action_66
action_136 (82) = happyShift action_165
action_136 (19) = happyGoto action_164
action_136 _ = happyFail (happyExpListPerState 136)

action_137 _ = happyReduce_52

action_138 _ = happyReduce_53

action_139 _ = happyReduce_54

action_140 _ = happyReduce_55

action_141 _ = happyReduce_56

action_142 _ = happyReduce_57

action_143 (39) = happyShift action_116
action_143 (77) = happyShift action_66
action_143 (17) = happyGoto action_163
action_143 (18) = happyGoto action_113
action_143 (19) = happyGoto action_114
action_143 _ = happyFail (happyExpListPerState 143)

action_144 (39) = happyShift action_116
action_144 (77) = happyShift action_66
action_144 (17) = happyGoto action_162
action_144 (18) = happyGoto action_113
action_144 (19) = happyGoto action_114
action_144 _ = happyFail (happyExpListPerState 144)

action_145 (39) = happyShift action_116
action_145 (77) = happyShift action_66
action_145 (17) = happyGoto action_112
action_145 (18) = happyGoto action_113
action_145 (19) = happyGoto action_114
action_145 (28) = happyGoto action_161
action_145 _ = happyFail (happyExpListPerState 145)

action_146 _ = happyReduce_58

action_147 _ = happyReduce_68

action_148 _ = happyReduce_24

action_149 (30) = happyShift action_14
action_149 (33) = happyShift action_15
action_149 (34) = happyShift action_16
action_149 (37) = happyShift action_17
action_149 (42) = happyShift action_18
action_149 (44) = happyShift action_19
action_149 (46) = happyShift action_20
action_149 (47) = happyShift action_21
action_149 (48) = happyShift action_22
action_149 (55) = happyShift action_23
action_149 (59) = happyShift action_24
action_149 (60) = happyShift action_25
action_149 (61) = happyShift action_26
action_149 (62) = happyShift action_27
action_149 (63) = happyShift action_28
action_149 (78) = happyShift action_29
action_149 (83) = happyShift action_30
action_149 (5) = happyGoto action_160
action_149 (6) = happyGoto action_6
action_149 (7) = happyGoto action_7
action_149 (8) = happyGoto action_8
action_149 (9) = happyGoto action_9
action_149 (10) = happyGoto action_10
action_149 (11) = happyGoto action_11
action_149 (12) = happyGoto action_12
action_149 (13) = happyGoto action_13
action_149 _ = happyFail (happyExpListPerState 149)

action_150 (30) = happyShift action_14
action_150 (33) = happyShift action_15
action_150 (34) = happyShift action_16
action_150 (37) = happyShift action_17
action_150 (42) = happyShift action_18
action_150 (44) = happyShift action_19
action_150 (46) = happyShift action_20
action_150 (47) = happyShift action_21
action_150 (48) = happyShift action_22
action_150 (55) = happyShift action_23
action_150 (59) = happyShift action_24
action_150 (60) = happyShift action_25
action_150 (61) = happyShift action_26
action_150 (62) = happyShift action_27
action_150 (63) = happyShift action_28
action_150 (78) = happyShift action_29
action_150 (83) = happyShift action_30
action_150 (5) = happyGoto action_159
action_150 (6) = happyGoto action_6
action_150 (7) = happyGoto action_7
action_150 (8) = happyGoto action_8
action_150 (9) = happyGoto action_9
action_150 (10) = happyGoto action_10
action_150 (11) = happyGoto action_11
action_150 (12) = happyGoto action_12
action_150 (13) = happyGoto action_13
action_150 _ = happyFail (happyExpListPerState 150)

action_151 (30) = happyShift action_14
action_151 (33) = happyShift action_15
action_151 (34) = happyShift action_16
action_151 (37) = happyShift action_17
action_151 (42) = happyShift action_18
action_151 (44) = happyShift action_19
action_151 (46) = happyShift action_20
action_151 (47) = happyShift action_21
action_151 (48) = happyShift action_22
action_151 (55) = happyShift action_23
action_151 (59) = happyShift action_24
action_151 (60) = happyShift action_25
action_151 (61) = happyShift action_26
action_151 (62) = happyShift action_27
action_151 (63) = happyShift action_28
action_151 (78) = happyShift action_29
action_151 (83) = happyShift action_30
action_151 (5) = happyGoto action_158
action_151 (6) = happyGoto action_6
action_151 (7) = happyGoto action_7
action_151 (8) = happyGoto action_8
action_151 (9) = happyGoto action_9
action_151 (10) = happyGoto action_10
action_151 (11) = happyGoto action_11
action_151 (12) = happyGoto action_12
action_151 (13) = happyGoto action_13
action_151 _ = happyFail (happyExpListPerState 151)

action_152 (77) = happyShift action_66
action_152 (19) = happyGoto action_157
action_152 _ = happyFail (happyExpListPerState 152)

action_153 (30) = happyShift action_14
action_153 (33) = happyShift action_15
action_153 (34) = happyShift action_16
action_153 (37) = happyShift action_17
action_153 (42) = happyShift action_18
action_153 (44) = happyShift action_19
action_153 (46) = happyShift action_20
action_153 (47) = happyShift action_21
action_153 (48) = happyShift action_22
action_153 (55) = happyShift action_23
action_153 (59) = happyShift action_24
action_153 (60) = happyShift action_25
action_153 (61) = happyShift action_26
action_153 (62) = happyShift action_27
action_153 (63) = happyShift action_28
action_153 (78) = happyShift action_29
action_153 (83) = happyShift action_30
action_153 (5) = happyGoto action_156
action_153 (6) = happyGoto action_6
action_153 (7) = happyGoto action_7
action_153 (8) = happyGoto action_8
action_153 (9) = happyGoto action_9
action_153 (10) = happyGoto action_10
action_153 (11) = happyGoto action_11
action_153 (12) = happyGoto action_12
action_153 (13) = happyGoto action_13
action_153 _ = happyFail (happyExpListPerState 153)

action_154 _ = happyReduce_35

action_155 _ = happyReduce_1

action_156 _ = happyReduce_29

action_157 (65) = happyShift action_137
action_157 (66) = happyShift action_138
action_157 (67) = happyShift action_139
action_157 (68) = happyShift action_140
action_157 (69) = happyShift action_141
action_157 (70) = happyShift action_142
action_157 (20) = happyGoto action_167
action_157 _ = happyFail (happyExpListPerState 157)

action_158 _ = happyReduce_30

action_159 _ = happyReduce_31

action_160 _ = happyReduce_32

action_161 _ = happyReduce_72

action_162 (40) = happyShift action_143
action_162 (41) = happyShift action_144
action_162 _ = happyReduce_47

action_163 (40) = happyShift action_143
action_163 (41) = happyShift action_144
action_163 _ = happyReduce_46

action_164 _ = happyReduce_50

action_165 _ = happyReduce_49

action_166 _ = happyReduce_74

action_167 (51) = happyShift action_168
action_167 _ = happyFail (happyExpListPerState 167)

action_168 (75) = happyShift action_169
action_168 _ = happyFail (happyExpListPerState 168)

action_169 (77) = happyShift action_66
action_169 (19) = happyGoto action_170
action_169 _ = happyFail (happyExpListPerState 169)

action_170 _ = happyReduce_41

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
	(HappyAbsSyn25  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (InsertValues happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 8 happyReduction_19
happyReduction_19 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
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
	(HappyAbsSyn14  happy_var_4) `HappyStk`
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
	(HappyAbsSyn14  happy_var_4) `HappyStk`
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
	(HappyAbsSyn14  happy_var_4) `HappyStk`
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
	(HappyAbsSyn14  happy_var_4) `HappyStk`
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
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 5 13 happyReduction_35
happyReduction_35 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
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

happyReduce_41 = happyReduce 7 14 happyReduction_41
happyReduction_41 ((HappyAbsSyn19  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_4) `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (TableComparison happy_var_3 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_3  15 happyReduction_42
happyReduction_42 (HappyAbsSyn19  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn15
		 (TableColumnRef happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  16 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn16
		 (Asc
	)

happyReduce_44 = happySpecReduce_1  16 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn16
		 (Desc
	)

happyReduce_45 = happySpecReduce_2  17 happyReduction_45
happyReduction_45 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Not happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  17 happyReduction_46
happyReduction_46 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (And happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  17 happyReduction_47
happyReduction_47 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (Or happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  17 happyReduction_48
happyReduction_48 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Comparison happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  18 happyReduction_49
happyReduction_49 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn20  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  18 happyReduction_50
happyReduction_50 (HappyAbsSyn19  happy_var_3)
	(HappyAbsSyn20  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_2  19 happyReduction_51
happyReduction_51 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn19
		 (happy_var_2
	)
happyReduction_51 _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  20 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn20
		 (Eq
	)

happyReduce_53 = happySpecReduce_1  20 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn20
		 (LessThan
	)

happyReduce_54 = happySpecReduce_1  20 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn20
		 (GreaterThan
	)

happyReduce_55 = happySpecReduce_1  20 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn20
		 (LessThanEq
	)

happyReduce_56 = happySpecReduce_1  20 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn20
		 (GreaterThanEq
	)

happyReduce_57 = happySpecReduce_1  20 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn20
		 (NotEq
	)

happyReduce_58 = happySpecReduce_3  21 happyReduction_58
happyReduction_58 (HappyTerminal (TokenStr _ happy_var_3))
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn21
		 (Assignment happy_var_1 happy_var_3
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
	(HappyAbsSyn26  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (happy_var_2
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_2  23 happyReduction_61
happyReduction_61 _
	_
	 =  HappyAbsSyn23
		 ([]
	)

happyReduce_62 = happySpecReduce_3  23 happyReduction_62
happyReduction_62 _
	(HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn23
		 (happy_var_2
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  24 happyReduction_63
happyReduction_63 _
	_
	 =  HappyAbsSyn24
		 ([]
	)

happyReduce_64 = happySpecReduce_3  24 happyReduction_64
happyReduction_64 _
	(HappyAbsSyn28  happy_var_2)
	_
	 =  HappyAbsSyn24
		 (happy_var_2
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_2  25 happyReduction_65
happyReduction_65 _
	_
	 =  HappyAbsSyn25
		 ([]
	)

happyReduce_66 = happySpecReduce_3  25 happyReduction_66
happyReduction_66 _
	(HappyAbsSyn29  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (happy_var_2
	)
happyReduction_66 _ _ _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  26 happyReduction_67
happyReduction_67 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn26
		 ([happy_var_1]
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_3  26 happyReduction_68
happyReduction_68 (HappyAbsSyn26  happy_var_3)
	_
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn26
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_68 _ _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  27 happyReduction_69
happyReduction_69 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn27
		 ([happy_var_1]
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_3  27 happyReduction_70
happyReduction_70 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn27
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  28 happyReduction_71
happyReduction_71 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn28
		 ([happy_var_1]
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  28 happyReduction_72
happyReduction_72 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn28
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  29 happyReduction_73
happyReduction_73 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn29
		 ([happy_var_1]
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_3  29 happyReduction_74
happyReduction_74 (HappyAbsSyn29  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn29
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 84 84 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenRead _ -> cont 30;
	TokenLet _ -> cont 31;
	TokenReturn _ -> cont 32;
	TokenSelect _ -> cont 33;
	TokenInsert _ -> cont 34;
	TokenValues _ -> cont 35;
	TokenColumn _ -> cont 36;
	TokenDelete _ -> cont 37;
	TokenWhere _ -> cont 38;
	TokenNot _ -> cont 39;
	TokenAnd _ -> cont 40;
	TokenOr _ -> cont 41;
	TokenUpdate _ -> cont 42;
	TokenSet _ -> cont 43;
	TokenUnion _ -> cont 44;
	TokenAll _ -> cont 45;
	TokenIntersection _ -> cont 46;
	TokenDifference _ -> cont 47;
	TokenJoin _ -> cont 48;
	TokenInner _ -> cont 49;
	TokenLeft _ -> cont 50;
	TokenRight _ -> cont 51;
	TokenOuter _ -> cont 52;
	TokenFull _ -> cont 53;
	TokenOn _ -> cont 54;
	TokenOrder _ -> cont 55;
	TokenBy _ -> cont 56;
	TokenAsc _ -> cont 57;
	TokenDesc _ -> cont 58;
	TokenLimit _ -> cont 59;
	TokenOffset _ -> cont 60;
	TokenLast _ -> cont 61;
	TokenUnique _ -> cont 62;
	TokenTranspose _ -> cont 63;
	TokenAssign _ -> cont 64;
	TokenEq _ -> cont 65;
	TokenLessThan _ -> cont 66;
	TokenGreaterThan _ -> cont 67;
	TokenLessThanEq _ -> cont 68;
	TokenGreaterThanEq _ -> cont 69;
	TokenNotEq _ -> cont 70;
	TokenSep _ -> cont 71;
	TokenLSquare _ -> cont 72;
	TokenRSquare _ -> cont 73;
	TokenComma _ -> cont 74;
	TokenDot _ -> cont 75;
	TokenAst _ -> cont 76;
	TokenAt _ -> cont 77;
	TokenLParen _ -> cont 78;
	TokenRParen _ -> cont 79;
	TokenInt  _ happy_dollar_dollar -> cont 80;
	TokenFilename _ happy_dollar_dollar -> cont 81;
	TokenStr _ happy_dollar_dollar -> cont 82;
	TokenVar _ happy_dollar_dollar -> cont 83;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 84 tk tks = happyError' (tks, explist)
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
                    | SelectAllWhere [Predicate] TableType
                    | SelectColWhere [Int] [Predicate] TableType
                      deriving (Show, Eq)

data InsertFunction = InsertValues [String] TableType
                    | InsertColumn Int TableType
                      deriving (Show, Eq)

data DeleteFunction = DeleteAll TableType
                    | DeleteCol [Int] TableType
                    | DeleteAllWhere [Predicate] TableType
                      deriving (Show, Eq)

data UpdateFunction = UpdateAll [Assignment] TableType
                    | UpdateWhere [Assignment] [Predicate] TableType
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

data TableComparison = TableComparison Int ComparisonOperator Int
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

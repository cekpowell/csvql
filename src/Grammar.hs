{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,254) ([0,192,0,0,32768,0,0,0,0,0,512,0,0,0,0,12800,1569,2048,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,18432,0,32768,0,256,0,36040,8216,32,0,512,0,0,0,0,16,0,0,8192,0,0,0,0,0,0,4,0,12800,1569,2048,0,16996,12,16,51200,6276,8192,0,0,16396,0,0,0,0,0,9792,196,256,0,0,512,0,0,0,72,0,0,0,1,0,0,16,0,0,0,4,36864,12569,16384,0,13088,98,128,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,32,0,0,0,0,8192,25107,32768,0,0,0,130,0,0,0,1,0,0,16,0,0,4096,0,0,0,0,0,33992,24,32,0,32,1152,0,0,0,0,16384,50214,0,1,0,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,49152,0,0,0,9792,196,256,0,0,0,0,0,12,16,0,0,0,0,0,57344,7,0,0,16384,0,0,32,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,12800,1569,2048,0,0,8192,0,0,0,0,0,0,0,1,0,0,0,0,9792,196,256,32768,34892,1,2,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,8192,0,0,2,64,0,1024,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectFunction","DeleteFunction","InsertFunction","FormatFunction","Direction","Predicate","Comparison","ColumnRef","ComparisonOperator","List__ColumnRef__","List__Predicate__","List__Str__","ListCont__ColumnRef__","ListCont__Predicate__","ListCont__Str__","Read","Let","Return","Select","Insert","Values","Column","Delete","Where","Not","And","Or","Order","By","Asc","Desc","Limit","Offset","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'*'","\"@\"","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 57
        bit_end = (st Prelude.+ 1) Prelude.* 57
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..56]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (23) = happyShift action_2
action_0 (24) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (56) = happyShift action_19
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (57) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (22) = happyShift action_11
action_4 (25) = happyShift action_12
action_4 (26) = happyShift action_13
action_4 (29) = happyShift action_14
action_4 (34) = happyShift action_15
action_4 (38) = happyShift action_16
action_4 (39) = happyShift action_17
action_4 (56) = happyShift action_18
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (7) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 (9) = happyGoto action_9
action_4 (10) = happyGoto action_10
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (47) = happyShift action_34
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_6

action_8 _ = happyReduce_8

action_9 _ = happyReduce_7

action_10 _ = happyReduce_9

action_11 (54) = happyShift action_33
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (48) = happyShift action_27
action_12 (51) = happyShift action_32
action_12 (16) = happyGoto action_31
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (27) = happyShift action_29
action_13 (52) = happyShift action_30
action_13 (14) = happyGoto action_28
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (22) = happyShift action_11
action_14 (25) = happyShift action_12
action_14 (26) = happyShift action_13
action_14 (29) = happyShift action_14
action_14 (30) = happyShift action_26
action_14 (34) = happyShift action_15
action_14 (38) = happyShift action_16
action_14 (39) = happyShift action_17
action_14 (48) = happyShift action_27
action_14 (56) = happyShift action_18
action_14 (5) = happyGoto action_24
action_14 (6) = happyGoto action_6
action_14 (7) = happyGoto action_7
action_14 (8) = happyGoto action_8
action_14 (9) = happyGoto action_9
action_14 (10) = happyGoto action_10
action_14 (16) = happyGoto action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (35) = happyShift action_23
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (53) = happyShift action_22
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (53) = happyShift action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_4

action_19 (40) = happyShift action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (22) = happyShift action_11
action_20 (25) = happyShift action_12
action_20 (26) = happyShift action_13
action_20 (29) = happyShift action_14
action_20 (34) = happyShift action_15
action_20 (38) = happyShift action_16
action_20 (39) = happyShift action_17
action_20 (56) = happyShift action_18
action_20 (5) = happyGoto action_55
action_20 (6) = happyGoto action_6
action_20 (7) = happyGoto action_7
action_20 (8) = happyGoto action_8
action_20 (9) = happyGoto action_9
action_20 (10) = happyGoto action_10
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (22) = happyShift action_11
action_21 (25) = happyShift action_12
action_21 (26) = happyShift action_13
action_21 (29) = happyShift action_14
action_21 (34) = happyShift action_15
action_21 (38) = happyShift action_16
action_21 (39) = happyShift action_17
action_21 (56) = happyShift action_18
action_21 (5) = happyGoto action_54
action_21 (6) = happyGoto action_6
action_21 (7) = happyGoto action_7
action_21 (8) = happyGoto action_8
action_21 (9) = happyGoto action_9
action_21 (10) = happyGoto action_10
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (22) = happyShift action_11
action_22 (25) = happyShift action_12
action_22 (26) = happyShift action_13
action_22 (29) = happyShift action_14
action_22 (34) = happyShift action_15
action_22 (38) = happyShift action_16
action_22 (39) = happyShift action_17
action_22 (56) = happyShift action_18
action_22 (5) = happyGoto action_53
action_22 (6) = happyGoto action_6
action_22 (7) = happyGoto action_7
action_22 (8) = happyGoto action_8
action_22 (9) = happyGoto action_9
action_22 (10) = happyGoto action_10
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (36) = happyShift action_51
action_23 (37) = happyShift action_52
action_23 (48) = happyShift action_27
action_23 (11) = happyGoto action_49
action_23 (16) = happyGoto action_50
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_14

action_25 (22) = happyShift action_11
action_25 (25) = happyShift action_12
action_25 (26) = happyShift action_13
action_25 (29) = happyShift action_14
action_25 (34) = happyShift action_15
action_25 (38) = happyShift action_16
action_25 (39) = happyShift action_17
action_25 (56) = happyShift action_18
action_25 (5) = happyGoto action_48
action_25 (6) = happyGoto action_6
action_25 (7) = happyGoto action_7
action_25 (8) = happyGoto action_8
action_25 (9) = happyGoto action_9
action_25 (10) = happyGoto action_10
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (48) = happyShift action_47
action_26 (17) = happyGoto action_46
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (49) = happyShift action_45
action_27 (52) = happyShift action_30
action_27 (14) = happyGoto action_43
action_27 (19) = happyGoto action_44
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (53) = happyShift action_42
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (48) = happyShift action_41
action_29 (18) = happyGoto action_40
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (53) = happyShift action_39
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (22) = happyShift action_11
action_31 (25) = happyShift action_12
action_31 (26) = happyShift action_13
action_31 (29) = happyShift action_14
action_31 (30) = happyShift action_38
action_31 (34) = happyShift action_15
action_31 (38) = happyShift action_16
action_31 (39) = happyShift action_17
action_31 (56) = happyShift action_18
action_31 (5) = happyGoto action_37
action_31 (6) = happyGoto action_6
action_31 (7) = happyGoto action_7
action_31 (8) = happyGoto action_8
action_31 (9) = happyGoto action_9
action_31 (10) = happyGoto action_10
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (22) = happyShift action_11
action_32 (25) = happyShift action_12
action_32 (26) = happyShift action_13
action_32 (29) = happyShift action_14
action_32 (30) = happyShift action_36
action_32 (34) = happyShift action_15
action_32 (38) = happyShift action_16
action_32 (39) = happyShift action_17
action_32 (56) = happyShift action_18
action_32 (5) = happyGoto action_35
action_32 (6) = happyGoto action_6
action_32 (7) = happyGoto action_7
action_32 (8) = happyGoto action_8
action_32 (9) = happyGoto action_9
action_32 (10) = happyGoto action_10
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_3

action_34 _ = happyReduce_2

action_35 _ = happyReduce_10

action_36 (48) = happyShift action_47
action_36 (17) = happyGoto action_74
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_11

action_38 (48) = happyShift action_47
action_38 (17) = happyGoto action_73
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_31

action_40 (22) = happyShift action_11
action_40 (25) = happyShift action_12
action_40 (26) = happyShift action_13
action_40 (29) = happyShift action_14
action_40 (34) = happyShift action_15
action_40 (38) = happyShift action_16
action_40 (39) = happyShift action_17
action_40 (56) = happyShift action_18
action_40 (5) = happyGoto action_72
action_40 (6) = happyGoto action_6
action_40 (7) = happyGoto action_7
action_40 (8) = happyGoto action_8
action_40 (9) = happyGoto action_9
action_40 (10) = happyGoto action_10
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (49) = happyShift action_70
action_41 (55) = happyShift action_71
action_41 (21) = happyGoto action_69
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (55) = happyShift action_68
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (50) = happyShift action_67
action_43 _ = happyReduce_44

action_44 (49) = happyShift action_66
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_38

action_46 (22) = happyShift action_11
action_46 (25) = happyShift action_12
action_46 (26) = happyShift action_13
action_46 (29) = happyShift action_14
action_46 (34) = happyShift action_15
action_46 (38) = happyShift action_16
action_46 (39) = happyShift action_17
action_46 (56) = happyShift action_18
action_46 (5) = happyGoto action_65
action_46 (6) = happyGoto action_6
action_46 (7) = happyGoto action_7
action_46 (8) = happyGoto action_8
action_46 (9) = happyGoto action_9
action_46 (10) = happyGoto action_10
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (31) = happyShift action_63
action_47 (49) = happyShift action_64
action_47 (52) = happyShift action_30
action_47 (12) = happyGoto action_59
action_47 (13) = happyGoto action_60
action_47 (14) = happyGoto action_61
action_47 (20) = happyGoto action_62
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_15

action_49 (22) = happyShift action_11
action_49 (25) = happyShift action_12
action_49 (26) = happyShift action_13
action_49 (29) = happyShift action_14
action_49 (34) = happyShift action_15
action_49 (38) = happyShift action_16
action_49 (39) = happyShift action_17
action_49 (56) = happyShift action_18
action_49 (5) = happyGoto action_58
action_49 (6) = happyGoto action_6
action_49 (7) = happyGoto action_7
action_49 (8) = happyGoto action_8
action_49 (9) = happyGoto action_9
action_49 (10) = happyGoto action_10
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (36) = happyShift action_51
action_50 (37) = happyShift action_52
action_50 (11) = happyGoto action_57
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_23

action_52 _ = happyReduce_24

action_53 _ = happyReduce_21

action_54 _ = happyReduce_22

action_55 (47) = happyShift action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (23) = happyShift action_2
action_56 (24) = happyShift action_4
action_56 (4) = happyGoto action_94
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (22) = happyShift action_11
action_57 (25) = happyShift action_12
action_57 (26) = happyShift action_13
action_57 (29) = happyShift action_14
action_57 (34) = happyShift action_15
action_57 (38) = happyShift action_16
action_57 (39) = happyShift action_17
action_57 (56) = happyShift action_18
action_57 (5) = happyGoto action_93
action_57 (6) = happyGoto action_6
action_57 (7) = happyGoto action_7
action_57 (8) = happyGoto action_8
action_57 (9) = happyGoto action_9
action_57 (10) = happyGoto action_10
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_19

action_59 (32) = happyShift action_90
action_59 (33) = happyShift action_91
action_59 (50) = happyShift action_92
action_59 _ = happyReduce_46

action_60 _ = happyReduce_28

action_61 (41) = happyShift action_84
action_61 (42) = happyShift action_85
action_61 (43) = happyShift action_86
action_61 (44) = happyShift action_87
action_61 (45) = happyShift action_88
action_61 (46) = happyShift action_89
action_61 (15) = happyGoto action_83
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (49) = happyShift action_82
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (31) = happyShift action_63
action_63 (52) = happyShift action_30
action_63 (12) = happyGoto action_81
action_63 (13) = happyGoto action_60
action_63 (14) = happyGoto action_61
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_40

action_65 _ = happyReduce_16

action_66 _ = happyReduce_39

action_67 (52) = happyShift action_30
action_67 (14) = happyGoto action_43
action_67 (19) = happyGoto action_80
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (22) = happyShift action_11
action_68 (25) = happyShift action_12
action_68 (26) = happyShift action_13
action_68 (29) = happyShift action_14
action_68 (34) = happyShift action_15
action_68 (38) = happyShift action_16
action_68 (39) = happyShift action_17
action_68 (56) = happyShift action_18
action_68 (5) = happyGoto action_79
action_68 (6) = happyGoto action_6
action_68 (7) = happyGoto action_7
action_68 (8) = happyGoto action_8
action_68 (9) = happyGoto action_9
action_68 (10) = happyGoto action_10
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (49) = happyShift action_78
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_42

action_71 (50) = happyShift action_77
action_71 _ = happyReduce_48

action_72 _ = happyReduce_17

action_73 (22) = happyShift action_11
action_73 (25) = happyShift action_12
action_73 (26) = happyShift action_13
action_73 (29) = happyShift action_14
action_73 (34) = happyShift action_15
action_73 (38) = happyShift action_16
action_73 (39) = happyShift action_17
action_73 (56) = happyShift action_18
action_73 (5) = happyGoto action_76
action_73 (6) = happyGoto action_6
action_73 (7) = happyGoto action_7
action_73 (8) = happyGoto action_8
action_73 (9) = happyGoto action_9
action_73 (10) = happyGoto action_10
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (22) = happyShift action_11
action_74 (25) = happyShift action_12
action_74 (26) = happyShift action_13
action_74 (29) = happyShift action_14
action_74 (34) = happyShift action_15
action_74 (38) = happyShift action_16
action_74 (39) = happyShift action_17
action_74 (56) = happyShift action_18
action_74 (5) = happyGoto action_75
action_74 (6) = happyGoto action_6
action_74 (7) = happyGoto action_7
action_74 (8) = happyGoto action_8
action_74 (9) = happyGoto action_9
action_74 (10) = happyGoto action_10
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_12

action_76 _ = happyReduce_13

action_77 (55) = happyShift action_71
action_77 (21) = happyGoto action_100
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_43

action_79 _ = happyReduce_18

action_80 _ = happyReduce_45

action_81 (32) = happyShift action_90
action_81 (33) = happyShift action_91
action_81 _ = happyReduce_25

action_82 _ = happyReduce_41

action_83 (52) = happyShift action_30
action_83 (55) = happyShift action_99
action_83 (14) = happyGoto action_98
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_32

action_85 _ = happyReduce_33

action_86 _ = happyReduce_34

action_87 _ = happyReduce_35

action_88 _ = happyReduce_36

action_89 _ = happyReduce_37

action_90 (31) = happyShift action_63
action_90 (52) = happyShift action_30
action_90 (12) = happyGoto action_97
action_90 (13) = happyGoto action_60
action_90 (14) = happyGoto action_61
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (31) = happyShift action_63
action_91 (52) = happyShift action_30
action_91 (12) = happyGoto action_96
action_91 (13) = happyGoto action_60
action_91 (14) = happyGoto action_61
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (31) = happyShift action_63
action_92 (52) = happyShift action_30
action_92 (12) = happyGoto action_59
action_92 (13) = happyGoto action_60
action_92 (14) = happyGoto action_61
action_92 (20) = happyGoto action_95
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_20

action_94 _ = happyReduce_1

action_95 _ = happyReduce_47

action_96 (32) = happyShift action_90
action_96 (33) = happyShift action_91
action_96 _ = happyReduce_27

action_97 (32) = happyShift action_90
action_97 (33) = happyShift action_91
action_97 _ = happyReduce_26

action_98 _ = happyReduce_30

action_99 _ = happyReduce_29

action_100 _ = happyReduce_49

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

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (Select happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (Insert happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (Delete happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (Format happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	_
	 =  HappyAbsSyn7
		 (SelectAll happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (SelectCol happy_var_2 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 5 7 happyReduction_12
happyReduction_12 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectAllWhere happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 5 7 happyReduction_13
happyReduction_13 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectColWhere happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_2  8 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (DeleteAll happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (DeleteCol happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 8 happyReduction_16
happyReduction_16 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (DeleteAllWhere happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 4 9 happyReduction_17
happyReduction_17 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (InsertValues happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 5 9 happyReduction_18
happyReduction_18 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyTerminal (TokenStr _ happy_var_4)) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (InsertColumn happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 10 happyReduction_19
happyReduction_19 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (OrderBy happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 5 10 happyReduction_20
happyReduction_20 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (OrderByCol happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn10
		 (Limit happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn10
		 (Offset happy_var_2 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn11
		 (Asc
	)

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn11
		 (Desc
	)

happyReduce_25 = happySpecReduce_2  12 happyReduction_25
happyReduction_25 (HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (Not happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  12 happyReduction_27
happyReduction_27 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Or happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  12 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Comparison happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 (HappyTerminal (TokenStr _ happy_var_3))
	(HappyAbsSyn15  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (ColVal happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  13 happyReduction_30
happyReduction_30 (HappyAbsSyn14  happy_var_3)
	(HappyAbsSyn15  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (ColCol happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  14 happyReduction_31
happyReduction_31 (HappyTerminal (TokenInt  _ happy_var_2))
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn15
		 (Eq
	)

happyReduce_33 = happySpecReduce_1  15 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn15
		 (LessThan
	)

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn15
		 (GreaterThan
	)

happyReduce_35 = happySpecReduce_1  15 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn15
		 (LessThanEq
	)

happyReduce_36 = happySpecReduce_1  15 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn15
		 (GreaterThanEq
	)

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn15
		 (NotEq
	)

happyReduce_38 = happySpecReduce_2  16 happyReduction_38
happyReduction_38 _
	_
	 =  HappyAbsSyn16
		 ([]
	)

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  17 happyReduction_40
happyReduction_40 _
	_
	 =  HappyAbsSyn17
		 ([]
	)

happyReduce_41 = happySpecReduce_3  17 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  18 happyReduction_42
happyReduction_42 _
	_
	 =  HappyAbsSyn18
		 ([]
	)

happyReduce_43 = happySpecReduce_3  18 happyReduction_43
happyReduction_43 _
	(HappyAbsSyn21  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  19 happyReduction_44
happyReduction_44 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn19
		 ([happy_var_1]
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  19 happyReduction_45
happyReduction_45 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn19
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  20 happyReduction_46
happyReduction_46 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn20
		 ([happy_var_1]
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  20 happyReduction_47
happyReduction_47 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn20
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  21 happyReduction_48
happyReduction_48 (HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn21
		 ([happy_var_1]
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  21 happyReduction_49
happyReduction_49 (HappyAbsSyn21  happy_var_3)
	_
	(HappyTerminal (TokenStr _ happy_var_1))
	 =  HappyAbsSyn21
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 57 57 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenRead _ -> cont 22;
	TokenLet _ -> cont 23;
	TokenReturn _ -> cont 24;
	TokenSelect _ -> cont 25;
	TokenInsert _ -> cont 26;
	TokenValues _ -> cont 27;
	TokenColumn _ -> cont 28;
	TokenDelete _ -> cont 29;
	TokenWhere _ -> cont 30;
	TokenNot _ -> cont 31;
	TokenAnd _ -> cont 32;
	TokenOr _ -> cont 33;
	TokenOrder _ -> cont 34;
	TokenBy _ -> cont 35;
	TokenAsc _ -> cont 36;
	TokenDesc _ -> cont 37;
	TokenLimit _ -> cont 38;
	TokenOffset _ -> cont 39;
	TokenAssign _ -> cont 40;
	TokenEq _ -> cont 41;
	TokenLessThan _ -> cont 42;
	TokenGreaterThan _ -> cont 43;
	TokenLessThanEq _ -> cont 44;
	TokenGreaterThanEq _ -> cont 45;
	TokenNotEq _ -> cont 46;
	TokenSep _ -> cont 47;
	TokenLSquare _ -> cont 48;
	TokenRSquare _ -> cont 49;
	TokenComma _ -> cont 50;
	TokenAst _ -> cont 51;
	TokenAt _ -> cont 52;
	TokenInt  _ happy_dollar_dollar -> cont 53;
	TokenFilename _ happy_dollar_dollar -> cont 54;
	TokenStr _ happy_dollar_dollar -> cont 55;
	TokenVar _ happy_dollar_dollar -> cont 56;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 57 tk tks = happyError' (tks, explist)
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

data FormatFunction = OrderBy Direction TableType
                    | OrderByCol [Int] Direction TableType
                    | Limit Int TableType
                    | Offset Int TableType
                      deriving (Show,Eq)

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

{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,118) ([0,3,0,1024,0,0,0,4096,0,0,0,3200,0,1,0,2,0,0,0,0,0,0,0,0,0,0,1,0,144,8192,16387,64,0,0,0,1024,0,51200,0,16,0,0,32768,12,256,0,34816,0,200,4096,8192,3,64,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,64,0,0,0,0,256,0,0,2,12288,0,0,0,0,0,32,18,0,32768,0,0,0,0,16384,0,0,256,0,0,0,0,0,0,0,0,0,0,2,0,4099,0,0,0,0,8,4,0,0,0,0,128,0,0,0,32768,31,0,0,0,32768,16384,0,512,256,0,8,4,0,0,0,0,0,0,0,0,0,0,0,0,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","SelectTable","DeleteTable","List","ListCont","Conditions","ConditionsCont","Predicate","Comparison","ComparisonOperator","Read","Let","Return","Select","Delete","Where","Not","And","Or","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'*'","\"@\"","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 42
        bit_end = (st Prelude.+ 1) Prelude.* 42
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..41]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (17) = happyShift action_2
action_0 (18) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (17) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (41) = happyShift action_13
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (42) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (16) = happyShift action_9
action_4 (19) = happyShift action_10
action_4 (20) = happyShift action_11
action_4 (41) = happyShift action_12
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (7) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (32) = happyShift action_21
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 _ = happyReduce_6

action_8 _ = happyReduce_7

action_9 (39) = happyShift action_20
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (33) = happyShift action_17
action_10 (36) = happyShift action_19
action_10 (9) = happyGoto action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (16) = happyShift action_9
action_11 (19) = happyShift action_10
action_11 (20) = happyShift action_11
action_11 (33) = happyShift action_17
action_11 (41) = happyShift action_12
action_11 (5) = happyGoto action_15
action_11 (6) = happyGoto action_6
action_11 (7) = happyGoto action_7
action_11 (8) = happyGoto action_8
action_11 (9) = happyGoto action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_4

action_13 (25) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (16) = happyShift action_9
action_14 (19) = happyShift action_10
action_14 (20) = happyShift action_11
action_14 (41) = happyShift action_12
action_14 (5) = happyGoto action_29
action_14 (6) = happyGoto action_6
action_14 (7) = happyGoto action_7
action_14 (8) = happyGoto action_8
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (21) = happyShift action_28
action_15 _ = happyReduce_12

action_16 (16) = happyShift action_9
action_16 (19) = happyShift action_10
action_16 (20) = happyShift action_11
action_16 (41) = happyShift action_12
action_16 (5) = happyGoto action_27
action_16 (6) = happyGoto action_6
action_16 (7) = happyGoto action_7
action_16 (8) = happyGoto action_8
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (34) = happyShift action_25
action_17 (38) = happyShift action_26
action_17 (10) = happyGoto action_24
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (16) = happyShift action_9
action_18 (19) = happyShift action_10
action_18 (20) = happyShift action_11
action_18 (41) = happyShift action_12
action_18 (5) = happyGoto action_23
action_18 (6) = happyGoto action_6
action_18 (7) = happyGoto action_7
action_18 (8) = happyGoto action_8
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (16) = happyShift action_9
action_19 (19) = happyShift action_10
action_19 (20) = happyShift action_11
action_19 (41) = happyShift action_12
action_19 (5) = happyGoto action_22
action_19 (6) = happyGoto action_6
action_19 (7) = happyGoto action_7
action_19 (8) = happyGoto action_8
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_3

action_21 _ = happyReduce_2

action_22 (21) = happyShift action_36
action_22 _ = happyReduce_8

action_23 (21) = happyShift action_35
action_23 _ = happyReduce_9

action_24 (34) = happyShift action_34
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_15

action_26 (35) = happyShift action_33
action_26 _ = happyReduce_17

action_27 _ = happyReduce_13

action_28 (33) = happyShift action_32
action_28 (11) = happyGoto action_31
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (32) = happyShift action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (17) = happyShift action_2
action_30 (18) = happyShift action_4
action_30 (4) = happyGoto action_46
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_14

action_32 (22) = happyShift action_43
action_32 (34) = happyShift action_44
action_32 (37) = happyShift action_45
action_32 (12) = happyGoto action_40
action_32 (13) = happyGoto action_41
action_32 (14) = happyGoto action_42
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (38) = happyShift action_26
action_33 (10) = happyGoto action_39
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_16

action_35 (33) = happyShift action_32
action_35 (11) = happyGoto action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (33) = happyShift action_32
action_36 (11) = happyGoto action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_10

action_38 _ = happyReduce_11

action_39 _ = happyReduce_18

action_40 (34) = happyShift action_52
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (23) = happyShift action_49
action_41 (24) = happyShift action_50
action_41 (35) = happyShift action_51
action_41 _ = happyReduce_21

action_42 _ = happyReduce_26

action_43 (22) = happyShift action_43
action_43 (37) = happyShift action_45
action_43 (13) = happyGoto action_48
action_43 (14) = happyGoto action_42
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_19

action_45 (38) = happyShift action_47
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_1

action_47 (26) = happyShift action_57
action_47 (27) = happyShift action_58
action_47 (28) = happyShift action_59
action_47 (29) = happyShift action_60
action_47 (30) = happyShift action_61
action_47 (31) = happyShift action_62
action_47 (15) = happyGoto action_56
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (23) = happyShift action_49
action_48 (24) = happyShift action_50
action_48 _ = happyReduce_23

action_49 (22) = happyShift action_43
action_49 (37) = happyShift action_45
action_49 (13) = happyGoto action_55
action_49 (14) = happyGoto action_42
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (22) = happyShift action_43
action_50 (37) = happyShift action_45
action_50 (13) = happyGoto action_54
action_50 (14) = happyGoto action_42
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (22) = happyShift action_43
action_51 (37) = happyShift action_45
action_51 (12) = happyGoto action_53
action_51 (13) = happyGoto action_41
action_51 (14) = happyGoto action_42
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_20

action_53 _ = happyReduce_22

action_54 (23) = happyShift action_49
action_54 (24) = happyShift action_50
action_54 _ = happyReduce_25

action_55 (23) = happyShift action_49
action_55 (24) = happyShift action_50
action_55 _ = happyReduce_24

action_56 (37) = happyShift action_63
action_56 (40) = happyShift action_64
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_29

action_58 _ = happyReduce_30

action_59 _ = happyReduce_31

action_60 _ = happyReduce_32

action_61 _ = happyReduce_33

action_62 _ = happyReduce_34

action_63 (38) = happyShift action_65
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_27

action_65 _ = happyReduce_28

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
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (Delete happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  7 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	_
	 =  HappyAbsSyn7
		 (SelectAll happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (SelectCol happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 5 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn11  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectAllWhere happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 5 7 happyReduction_11
happyReduction_11 ((HappyAbsSyn11  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectColWhere happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_2  8 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (DeleteAll happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (DeleteCol happy_var_2 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 4 8 happyReduction_14
happyReduction_14 ((HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (DeleteAllWhere happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_2  9 happyReduction_15
happyReduction_15 _
	_
	 =  HappyAbsSyn9
		 ([]
	)

happyReduce_16 = happySpecReduce_3  9 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  10 happyReduction_17
happyReduction_17 (HappyTerminal (TokenInt  _ happy_var_1))
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TokenInt  _ happy_var_1))
	 =  HappyAbsSyn10
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  11 happyReduction_19
happyReduction_19 _
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  12 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  13 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Not happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  13 happyReduction_24
happyReduction_24 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (And happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  13 happyReduction_25
happyReduction_25 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Or happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  13 happyReduction_26
happyReduction_26 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (Comparison happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 14 happyReduction_27
happyReduction_27 ((HappyTerminal (TokenStr _ happy_var_4)) `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (ColVal happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 5 14 happyReduction_28
happyReduction_28 ((HappyTerminal (TokenInt  _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (ColCol happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_1  15 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn15
		 (Eq
	)

happyReduce_30 = happySpecReduce_1  15 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn15
		 (LessThan
	)

happyReduce_31 = happySpecReduce_1  15 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn15
		 (GreaterThan
	)

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn15
		 (LessThanEq
	)

happyReduce_33 = happySpecReduce_1  15 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn15
		 (GreaterThanEq
	)

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn15
		 (NotEq
	)

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenRead _ -> cont 16;
	TokenLet _ -> cont 17;
	TokenReturn _ -> cont 18;
	TokenSelect _ -> cont 19;
	TokenDelete _ -> cont 20;
	TokenWhere _ -> cont 21;
	TokenNot _ -> cont 22;
	TokenAnd _ -> cont 23;
	TokenOr _ -> cont 24;
	TokenAssign _ -> cont 25;
	TokenEq _ -> cont 26;
	TokenLessThan _ -> cont 27;
	TokenGreaterThan _ -> cont 28;
	TokenLessThanEq _ -> cont 29;
	TokenGreaterThanEq _ -> cont 30;
	TokenNotEq _ -> cont 31;
	TokenSep _ -> cont 32;
	TokenLSquare _ -> cont 33;
	TokenRSquare _ -> cont 34;
	TokenComma _ -> cont 35;
	TokenAst _ -> cont 36;
	TokenAt _ -> cont 37;
	TokenInt  _ happy_dollar_dollar -> cont 38;
	TokenFilename _ happy_dollar_dollar -> cont 39;
	TokenStr _ happy_dollar_dollar -> cont 40;
	TokenVar _ happy_dollar_dollar -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
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

data FunctionTable = Select SelectTable
                   | Delete DeleteTable
                     deriving (Show, Eq)

data SelectTable = SelectAll TableType
                 | SelectCol [Int] TableType
                 | SelectAllWhere TableType [Predicate]
                 | SelectColWhere [Int] TableType [Predicate]
                   deriving (Show, Eq)

data DeleteTable = DeleteAll TableType
                 | DeleteCol [Int] TableType
                 | DeleteAllWhere TableType [Predicate]
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

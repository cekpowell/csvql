{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,91) ([49152,0,0,32,0,0,0,8,0,0,4608,0,2,32784,0,0,0,0,0,16,0,288,0,0,0,2048,0,9216,0,4,18,512,0,8704,32768,4,128,0,0,0,8192,0,0,0,0,0,0,128,72,0,0,0,0,2,0,0,0,0,1,0,0,0,2049,0,48,0,0,32768,0,0,0,0,512,0,96,2,0,0,0,4,2,0,0,0,0,1,63488,1,0,0,0,32,16,4096,2048,0,8,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","TableType","FunctionTable","List","ListCont","Conditions","ConditionnsCont","Predicate","Comparison","ComparisonOperator","Read","Let","Return","Select","Where","Not","And","Or","'='","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","\"!=\"","';'","'['","']'","','","'*'","\"@\"","int","Filename","Str","Var","%eof"]
        bit_start = st Prelude.* 39
        bit_end = (st Prelude.+ 1) Prelude.* 39
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..38]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (15) = happyShift action_2
action_0 (16) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (15) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (38) = happyShift action_10
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (39) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (14) = happyShift action_7
action_4 (17) = happyShift action_8
action_4 (38) = happyShift action_9
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (18) = happyShift action_16
action_5 (29) = happyShift action_17
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_5

action_7 (36) = happyShift action_15
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (30) = happyShift action_13
action_8 (33) = happyShift action_14
action_8 (7) = happyGoto action_12
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_4

action_10 (22) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (14) = happyShift action_7
action_11 (17) = happyShift action_8
action_11 (38) = happyShift action_9
action_11 (5) = happyGoto action_25
action_11 (6) = happyGoto action_6
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (14) = happyShift action_7
action_12 (17) = happyShift action_8
action_12 (38) = happyShift action_9
action_12 (5) = happyGoto action_24
action_12 (6) = happyGoto action_6
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (31) = happyShift action_22
action_13 (35) = happyShift action_23
action_13 (8) = happyGoto action_21
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (14) = happyShift action_7
action_14 (17) = happyShift action_8
action_14 (38) = happyShift action_9
action_14 (5) = happyGoto action_20
action_14 (6) = happyGoto action_6
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_3

action_16 (30) = happyShift action_19
action_16 (9) = happyGoto action_18
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_2

action_18 _ = happyReduce_8

action_19 (19) = happyShift action_32
action_19 (31) = happyShift action_33
action_19 (34) = happyShift action_34
action_19 (10) = happyGoto action_29
action_19 (11) = happyGoto action_30
action_19 (12) = happyGoto action_31
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (18) = happyShift action_16
action_20 _ = happyReduce_6

action_21 (31) = happyShift action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_9

action_23 (32) = happyShift action_27
action_23 _ = happyReduce_11

action_24 (18) = happyShift action_16
action_24 _ = happyReduce_7

action_25 (18) = happyShift action_16
action_25 (29) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (15) = happyShift action_2
action_26 (16) = happyShift action_4
action_26 (4) = happyGoto action_42
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (35) = happyShift action_23
action_27 (8) = happyGoto action_41
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_10

action_29 (31) = happyShift action_40
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (20) = happyShift action_37
action_30 (21) = happyShift action_38
action_30 (32) = happyShift action_39
action_30 _ = happyReduce_15

action_31 _ = happyReduce_20

action_32 (19) = happyShift action_32
action_32 (34) = happyShift action_34
action_32 (11) = happyGoto action_36
action_32 (12) = happyGoto action_31
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_13

action_34 (35) = happyShift action_35
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (23) = happyShift action_47
action_35 (24) = happyShift action_48
action_35 (25) = happyShift action_49
action_35 (26) = happyShift action_50
action_35 (27) = happyShift action_51
action_35 (28) = happyShift action_52
action_35 (13) = happyGoto action_46
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (20) = happyShift action_37
action_36 (21) = happyShift action_38
action_36 _ = happyReduce_17

action_37 (19) = happyShift action_32
action_37 (34) = happyShift action_34
action_37 (11) = happyGoto action_45
action_37 (12) = happyGoto action_31
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (19) = happyShift action_32
action_38 (34) = happyShift action_34
action_38 (11) = happyGoto action_44
action_38 (12) = happyGoto action_31
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (19) = happyShift action_32
action_39 (34) = happyShift action_34
action_39 (10) = happyGoto action_43
action_39 (11) = happyGoto action_30
action_39 (12) = happyGoto action_31
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_14

action_41 _ = happyReduce_12

action_42 _ = happyReduce_1

action_43 _ = happyReduce_16

action_44 (20) = happyShift action_37
action_44 (21) = happyShift action_38
action_44 _ = happyReduce_19

action_45 (20) = happyShift action_37
action_45 (21) = happyShift action_38
action_45 _ = happyReduce_18

action_46 (34) = happyShift action_53
action_46 (37) = happyShift action_54
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_23

action_48 _ = happyReduce_24

action_49 _ = happyReduce_25

action_50 _ = happyReduce_26

action_51 _ = happyReduce_27

action_52 _ = happyReduce_28

action_53 (35) = happyShift action_55
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_21

action_55 _ = happyReduce_22

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

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	_
	 =  HappyAbsSyn6
		 (SelectAll happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  6 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (SelectCol happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (Where happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  7 happyReduction_9
happyReduction_9 _
	_
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyTerminal (TokenInt  _ happy_var_1))
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt  _ happy_var_1))
	 =  HappyAbsSyn8
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  9 happyReduction_13
happyReduction_13 _
	_
	 =  HappyAbsSyn9
		 ([]
	)

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  10 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  11 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Not happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  11 happyReduction_18
happyReduction_18 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (And happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  11 happyReduction_19
happyReduction_19 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Or happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  11 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Comparison happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 12 happyReduction_21
happyReduction_21 ((HappyTerminal (TokenStr _ happy_var_4)) `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (ColVal happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 5 12 happyReduction_22
happyReduction_22 ((HappyTerminal (TokenInt  _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	(HappyTerminal (TokenInt  _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (ColCol happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  13 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn13
		 (Eq
	)

happyReduce_24 = happySpecReduce_1  13 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn13
		 (LessThan
	)

happyReduce_25 = happySpecReduce_1  13 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn13
		 (GreaterThan
	)

happyReduce_26 = happySpecReduce_1  13 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn13
		 (LessThanEq
	)

happyReduce_27 = happySpecReduce_1  13 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn13
		 (GreaterThanEq
	)

happyReduce_28 = happySpecReduce_1  13 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn13
		 (NotEq
	)

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenRead _ -> cont 14;
	TokenLet _ -> cont 15;
	TokenReturn _ -> cont 16;
	TokenSelect _ -> cont 17;
	TokenWhere _ -> cont 18;
	TokenNot _ -> cont 19;
	TokenAnd _ -> cont 20;
	TokenOr _ -> cont 21;
	TokenAssign _ -> cont 22;
	TokenEq _ -> cont 23;
	TokenLessThan _ -> cont 24;
	TokenGreaterThan _ -> cont 25;
	TokenLessThanEq _ -> cont 26;
	TokenGreaterThanEq _ -> cont 27;
	TokenNotEq _ -> cont 28;
	TokenSep _ -> cont 29;
	TokenLSquare _ -> cont 30;
	TokenRSquare _ -> cont 31;
	TokenComma _ -> cont 32;
	TokenAst _ -> cont 33;
	TokenAt _ -> cont 34;
	TokenInt  _ happy_dollar_dollar -> cont 35;
	TokenFilename _ happy_dollar_dollar -> cont 36;
	TokenStr _ happy_dollar_dollar -> cont 37;
	TokenVar _ happy_dollar_dollar -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
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
           deriving Show

data TableType = Read String
               | Var String
               | Function FunctionTable
                 deriving Show

data FunctionTable = SelectAll TableType
                   | SelectCol [Int] TableType
                   | Where TableType [Predicate]
                    deriving Show


data Predicate = Not Predicate 
               | And Predicate Predicate
               | Or Predicate Predicate
               | Comparison ComparisonType 
                 deriving Show

data ComparisonType = ColVal Int ComparisonOperator String
                    | ColCol Int ComparisonOperator Int
                      deriving Show

data ComparisonOperator = Eq 
                        | LessThan
                        | GreaterThan
                        | LessThanEq
                        | GreaterThanEq 
                        | NotEq 
                          deriving Show
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

   module Types where

  data Exp = IntExp Integer
           | IntOpExp String Exp Exp
           | VarExp String
     deriving (Show, Eq)

  data Val = IntVal Integer
           | ExnVal String
     deriving (Show, Eq)

  type Env = [(String,Val)]

  -- Represent the empty environment

  emptyEnv :: Env
  emptyEnv = []

  -- To insert a value into an environment

  insert k v env = (k,v):env

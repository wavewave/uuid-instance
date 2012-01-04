{-# LANGUAGE DeriveDataTypeable #-}

module Data.UUID.Instances.ProgType where 

import System.Console.CmdArgs

data Uuid_instance = Test 
              deriving (Show,Data,Typeable)

test :: Uuid_instance
test = Test 

mode = modes [test]


module Data.UUID.Instances.Command where

import Data.UUID.Instances.ProgType
import Data.UUID.Instances.Job

commandLineProcess :: Uuid_instance -> IO ()
commandLineProcess Test = do 
  putStrLn "test called"
  startJob

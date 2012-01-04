module Main where

import System.Console.CmdArgs

import Data.UUID.Instances.ProgType
import Data.UUID.Instances.Command

main :: IO () 
main = do 
  putStrLn "uuid-instance"
  param <- cmdArgs mode

  commandLineProcess param
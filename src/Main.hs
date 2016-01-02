module Main where

import qualified Data.Map
import Data.List
import Data.List.Split
import Data.Foldable (sum)
import System.Environment
import Day1 (counterFloor)
import Day2 (sumPaper)
import Day3 (counterHouse)
import Day4

main :: IO ()
main = do
  content <- readFile "input3.txt"
  print . show. sumPaper . lines  $ content
  -- print . length $ content
  -- print . counterHouse $ content

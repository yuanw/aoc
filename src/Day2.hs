module Day2 (sumPaper) where

import Data.List
import Data.List.Split

wrapPaper :: Int -> Int -> Int -> Int
wrapPaper l w h = (2 * l * w) + (2 * w * h) + (2 * h * l) + smallSide
    where sorted = sort [l, w, h]
          smallSide = head sorted * head (tail sorted)

wrapPaperHelper :: [Int] -> Int
wrapPaperHelper xs = wrapPaper (head xs) (xs !! 1) (xs !! 2)

readFromStr :: String -> [Int]
readFromStr xs = [read (head splited),
                    read (splited !! 1),
                    read (splited !! 2)]
        where splited = splitOn "x" xs

sumPaper :: [String] -> Int
sumPaper xs = sum $ map (wrapPaperHelper . readFromStr) xs

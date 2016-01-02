module Day3 (counterHouse, deliverHouse) where

import qualified Data.List
import qualified Data.Map

type Point = (Int, Int)

deliverHouseHelper :: String -> Point -> Data.Map.Map Point Int -> Data.Map.Map Point Int
deliverHouseHelper [] _ m = m
deliverHouseHelper ('^' : xs) (a, b) m = deliverHouseHelper xs (a + 1,  b)
    (Data.Map.insertWith (+) (a + 1, b) 1 m)
deliverHouseHelper ('v':xs) (a,b) m = deliverHouseHelper xs (a - 1, b)
   (Data.Map.insertWith (+) (a - 1, b) 1 m)
deliverHouseHelper ('>':xs) (a,b) m = deliverHouseHelper xs (a, b + 1)
   (Data.Map.insertWith (+) (a, b + 1) 1 m)
deliverHouseHelper ('<':xs) (a,b) m = deliverHouseHelper xs (a, b - 1)
   (Data.Map.insertWith (+) (a, b - 1) 1 m)
deliverHouseHelper _ _ m = m

deliverHouse :: String -> Data.Map.Map Point Int
deliverHouse xs = deliverHouseHelper xs (0,0) (Data.Map.fromList [((0, 0), 1)])

counterHouse :: String -> Int
counterHouse = length . Data.List.filter (> 0) . map snd . Data.Map.toList . deliverHouse

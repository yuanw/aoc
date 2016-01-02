module Day1 (counterFloor) where

counterFloorHelper :: Int -> String -> Int
counterFloorHelper fl [] = fl
counterFloorHelper fl ('(':xs) = counterFloorHelper (fl + 1) xs
counterFloorHelper fl (')':xs) = counterFloorHelper (fl - 1) xs
counterFloorHelper fl _ = fl

counterFloor :: String -> Int
counterFloor = counterFloorHelper 0

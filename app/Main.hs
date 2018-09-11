module Main where

import Lib
import Data.List

main :: IO ()
main = do 
    let dataset1 = [322, 12, 54, 6575, 43, 63, 32, 64]
    let dataset2 = [322, 12, 54, 6575, 43, 63, 32]
    putStrLn $ show $ dataset1
    putStrLn $ show $ dataset2
    putStrLn $ show $ mean dataset1
    putStrLn $ show $ mean dataset2
    putStrLn $ show $ median dataset1
    putStrLn $ show $ median dataset2

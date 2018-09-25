module Lib( 
    mean
    , median
--    , mode
--    , variance
--    , stdev
--    , variance_
--    , stdev_
) where

import Data.List

mean :: (Fractional a) => [a] -> a
mean xs = (sum xs)/fromIntegral(length xs)

median :: (Ord a, Fractional a) => [a] -> a
median xs = do
            if length xs == 1 
                then xs !! 0 else
                    if (length s) `mod` 2 /= 0
                        then s !! ((length s) `div` 2) else do
                            let m = ((length s) `div` 2)
                            mean [s !! m, s !! (m-1)]
            where s = sort xs

-- mode :: (Ord a, Fractional a) => [a] -> a

-- population
-- variance :: (Ord a, Fractional a) => [a] -> a

-- population
-- stdev :: (Ord a, Fractional a) => [a] -> a

-- sample
-- variance_ :: (Ord a, Fractional a) => [a] -> a

-- sample
-- stdev_ :: (Ord a, Fractional a) => [a] -> a

-- percentile :: (Ord a, Fractional a) => [a] -> a -> a

-- quartile :: (Ord a, Fractional a) => [a] -> a -> a



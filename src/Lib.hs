module Lib( 
    polinomio2
    , isTriangle
    , mean
    , median
) where

import Data.List

delta :: (Num a) => a -> a -> a -> a
delta a b c = (b^2) - (4 * a * c)

calc :: (Floating b) => b -> b -> b -> b -> (b, b)
calc a b c d = (((-b) + sqrt(d))/(2*a), ((-b) - sqrt(d))/(2*a))

polinomio2 :: (Ord b, Floating b) => b -> b -> b -> (b, b)
polinomio2 a b c = if a == 0 || d < 0 then (-1,-1) else calc a b c d where d = delta a b c

isTriangle :: (Ord b, Floating b) => b -> b -> b -> Bool
isTriangle a b c = if a < 0 || b < 0 || c < 0 then 
                        False 
                   else
                        b + c >= a && c + a >= b && a + b >= c

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


module Euler16 (sumOfNumeral1, sumOfNumeral2) where

sumOfNumeral1 :: Integer -> Integer
sumOfNumeral1 x 
    | x <= 0 = 0
    | x < 10 = x
    | otherwise = rem x 10 + sumOfNumeral1 (div x 10)

sumOfNumeral2 :: Integer -> Int
sumOfNumeral2 x =
    let s = show x in
        sum [fromEnum a - fromEnum '0' | a <- s]
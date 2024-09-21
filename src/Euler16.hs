module Euler16 (sumOfNumeral1, sumOfNumeral2, sumOfNumeralTailRec, sumOfNumeralMap) where

sumOfNumeral1 :: Integer -> Integer
sumOfNumeral1 x 
    | x <= 0 = 0
    | x < 10 = x
    | otherwise = rem x 10 + sumOfNumeral1 (div x 10)

sumOfNumeralTailRec :: Integer -> Integer -> Integer
sumOfNumeralTailRec x acc
    | x <= 0 = acc
    | x < 10 = acc + x
    | otherwise = sumOfNumeralTailRec (div x 10) (acc + rem x 10)

sumOfNumeral2 :: Integer -> Int
sumOfNumeral2 x =
    let s = show x in
        sum [fromEnum a - fromEnum '0' | a <- s]

sumOfNumeralMap :: Integer -> Int
sumOfNumeralMap x = 
    sum (map toDigit (show x)) where
        toDigit c = fromEnum c - fromEnum '0'
module Main (main) where
import Euler15 (solution, lazySolution)
import Euler16 (sumOfNumeral1, sumOfNumeral2, sumOfNumeralTailRec, sumOfNumeralMap)


main :: IO ()
main = do
    putStrLn "Euler 15:"
    print $ lazySolution 20
    print $ solution 20
    putStrLn "Euler 16:"
    print $ sumOfNumeral1 (2 ^ (1000 :: Integer))
    print $ sumOfNumeral2 (2 ^ (1000 :: Integer))
    print $ sumOfNumeralTailRec (2 ^ (1000 :: Integer)) 0
    print $ sumOfNumeralMap (2 ^ (1000 :: Integer))
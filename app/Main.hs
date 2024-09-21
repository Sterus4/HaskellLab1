module Main (main) where
import Euler15 (solution)
import Euler16 (sumOfNumeral1, sumOfNumeral2)


main :: IO ()
main = do
    putStrLn "Euler 15:"
    print $ solution 20
    putStrLn "Euler 16:"
    print $ sumOfNumeral1 (2 ^ (1000 :: Integer))
    print $ sumOfNumeral2 (2 ^ (1000 :: Integer))
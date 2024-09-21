module Euler15 (recursiveSolution, lazySolution, solution) where


recSol :: Integer -> Integer -> Integer
recSol 0 _ = 1
recSol _ 0 = 1
recSol m n = recSol m (n - 1) + recSol (m - 1) n

recursiveSolution :: Integer -> Integer
recursiveSolution n = recSol n n

getMiddle :: [a] -> a 
getMiddle l1 = 
    let cent = div (length l1) 2 in
        l1 !! cent

addLists :: (Num a) => [a] -> [a] -> [a]
addLists = zipWith (+)

pascall :: (Eq a1, Num a1, Num a2) => a1 -> [a2]
pascall 1 = [1]
pascall n = 
    let prev = pascall (n - 1)
        zeroPrev = 0 : prev
        prevZero = prev ++ [0]
    in 
    addLists zeroPrev prevZero
solution :: Integer -> Integer
solution n = getMiddle (pascall (n * 2 + 1))



lazySolution :: Int -> Integer
lazySolution n = 
    pascall1 !! n !! n where 
        pascall1 = temp : map (scanl1 (+)) pascall1 where
            temp = repeat 1

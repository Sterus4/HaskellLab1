module Euler15 (recursiveSolution, solution) where


recSol :: Integer -> Integer -> Integer
recSol 0 _ = 1
recSol _ 0 = 1
recSol m n = recSol m (n - 1) + recSol (m - 1) n

recursiveSolution :: Integer -> Integer
recursiveSolution n = recSol n n

solution :: Int -> Integer
solution n = 
    pascall !! n !! n where 
        pascall = temp : map (scanl1 (+)) pascall where
            temp = repeat 1

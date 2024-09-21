# Лабораторная работа номер 1

Выполнил: Нигаматуллин Степан P3334
Язык программирования: Haskell

## Задачи
### 15:
Начиная в левом верхнем углу сетки 2×2 и имея возможность двигаться только вниз или вправо, существует ровно 6 маршрутов до правого нижнего угла сетки.

Сколько существует таких маршрутов в сетке 20×20?

### 16:
$2^{15} = 32768$, сумма цифр этого числа равна 3 + 2 + 7 + 6 + 8 = 26.
Какова сумма цифр числа $2^{1000}$?

## Решения

Решения представлены в двух модулях на языке программирования Haskell

[Euler15](src/Euler15.hs)
```Haskell
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

```

[Euler16](src/Euler16.hs)
```Haskell
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
```

## Пояснения

В задаче 15 было представлено 2 решения:
* Рекурсивное решение - долго работает, дается, чтобы просто понять, как математически решать задачу
* Решение через генерацию матрицы - быстрое решение, выведенное через рекурсивное решение. Генерируется бесконечная структура данных - треугольник паскаля

В задаче 16 решение было реализовано через:

* Рекурсию
* Вывод числа в виде строки и проход по ней через `sum`

## Выводы

Я познакомился с основами Haskell - Рекурсией, pattern matching, folding lists. Ознакомился с основами лексики языка, объявлениями функций, Типами данных, порядком исполнения. Так же познакомился с системой сборки Stack.
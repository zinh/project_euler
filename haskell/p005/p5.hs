import Data.List
divided :: Integer -> Integer
divided n = 
  let lst = [factor x | x <- [2..n]]
  in product [x^(count_max x lst) | x <- (union_all lst [])]

factor :: Integer -> [Integer]
factor n = factor' n 2 []

factor' :: Integer -> Integer -> [Integer] -> [Integer]
factor' n index factors
  | index == n = index:factors 
  | index > n `div` 2 = n:factors
  | (n `mod` index) == 0 = factor' (n `div` index) 2 (index:factors)
  | otherwise = factor' n (index + 1) factors

count_max :: Integer -> [[Integer]] -> Integer
count_max n lst = maximum [count_occur n x 0 | x <- lst]

count_occur :: Integer -> [Integer] -> Integer -> Integer
count_occur _ [] s = s
count_occur n (x:xs) s
  | n == x = count_occur n xs (s + 1)
  | otherwise = count_occur n xs s

union_all :: [[Integer]] -> [Integer] -> [Integer]
union_all [] lst = nub lst
union_all (x:xs) lst = union_all xs (lst `union` x)

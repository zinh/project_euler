factor :: Integer -> [Integer]
factor n = factor' n 2 []

factor' :: Integer -> Integer -> [Integer] -> [Integer]
factor' n n factors = index:factors
factor' n index factors
  | index > n `div` 2 = n:factors
  | (n `mod` index) == 0 = factor' (n `div` index) 2 (index:factors)
  | otherwise = factor' n (index + 1) factors
sum_diff :: Int -> Int
sum_diff n = sum [1..n] ^2 - (sum [x^2 | x <- [1..n]])

p6 = sum_diff 100

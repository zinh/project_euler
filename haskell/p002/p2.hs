fibo :: Int -> [Int]
fibo n = fibo' n [1,1]

fibo' :: Int -> [Int] -> [Int]
fibo' n lst@(x1:x2:xs)
  | length lst == n = lst
  | otherwise = fibo' n $ (x1 + x2) : lst

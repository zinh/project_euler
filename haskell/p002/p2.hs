fibo :: Int -> [Int]
fibo n = foldl (\acc@(x1:x2:xs) _ -> x1 + x2 : acc) [1,1] [3..n]

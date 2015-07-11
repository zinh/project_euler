isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral

isPrime :: Int -> [Int] -> Bool
isPrime _ [] = True
isPrime a (x:xs)
  | a `mod` x == 0 = False
  | isqrt a <= x = True
  | otherwise = isPrime a xs

p7 :: Int
p7 = last take 10001 $ foldl' (\acc x -> if isPrime x acc then acc ++ [x] else acc) [] [2..200000]

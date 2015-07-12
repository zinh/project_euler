import Data.List
prime_filter :: Int -> [Int] -> [Int]
prime_filter n [] = [n]
prime_filter n lst = 
  let upLimit = last lst
      multipler = takeWhile (<=upLimit) $ map (*n) [1..]
  in
    lst \\ multipler
    
eratosthenes :: [Int] -> [Int] -> [Int]
eratosthenes [] primes = primes
eratosthenes [n] primes = n:primes
eratosthenes (x:xs) primes = eratosthenes (prime_filter x xs) (x:primes)

p10 :: Int -> Int
p10 n = sum $ eratosthenes [2..n] []
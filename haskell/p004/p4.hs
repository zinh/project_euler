isPalindrome :: [Char] -> Bool
isPalindrome n = if n == (reverse n) then True else False

maxPalindrome :: Int
maxPalindrome = maximum [x*y | x <- [100..999], y <- [1..999], isPalindrome $ show (x*y)]

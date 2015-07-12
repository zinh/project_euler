import Data.List
import Data.Char
import System.IO

main = do
  handle <- openFile "number.txt" ReadMode
  content <- hGetContents handle
  let m = maximum (map lst_product $ foldl' insert_char [] (init content))
      in putStrLn (show m)
  hClose handle
  
insert_char :: [[a]] -> a -> [[a]]
insert_char [] a = [[a]]
insert_char all@(x:xs) a
  | length x >= 13 = (a:(init x)): all
  | otherwise = (a:x):xs
  
lst_product :: String -> Int
lst_product = product . map digitToInt

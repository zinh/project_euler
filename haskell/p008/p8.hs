import Data.List

--main = do
--  content <- readFile ("number.txt")
--  maximum (map lst_product $ foldl' (\acc x -> insert_char x acc) [] content)
  
insert_char :: a -> [[a]] -> [[a]]
insert_char a [] = [[a]]
insert_char a all@(x:xs)
  | length x >= 13 = (a:(init x)): all
  | otherwise = (a:x):xs
  
lst_product :: String -> Int
lst_product lst = map convert_str lst

convert_str :: String -> Int
convert_str x = read x
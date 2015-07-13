import Data.List

p9 :: Int
p9 = 
  let Just (x,y) = find  (\(x,y) -> (x^2 + y^2) == (1000 - x - y)^2) $ [(x,y) | x <- [1..999], y <- [1..999]]
  in x*y*(1000 - x - y)
product_rows :: [Int] -> [Int] -> [Int] -> [Int] -> Int
product_rows 
  (x1:x2:x3:x4) 
  (y1:y2:y3:y4) 
  (z1:z2:z3:z4) 
  (t1:t2:t3:t4) =
product_rows (x1:x2:x3:x4:xs) (y1:y2:y3:y4:ys) (z1:z2:z3:z4:zs) (t1:t2:t3:t4:ts) 

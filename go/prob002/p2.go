package fibo

func fiboSum(n int) int{
  var sum int
  f1 := 1
  f2 := 2
  for f1 < n {
    // fmt.Println(f1, sum)
    if f1 % 2 == 0{
      sum += f1
    }
    f3 := f1 + f2
    f1 = f2
    f2 = f3
  }
  return sum
}

package main

func sum_35(n int) int{
  var sum int
  for i := 3; i < n; i = i + 1{
    if i % 3 == 0 || i % 5 == 0 {
      sum += i
    }
  }

  return sum
}

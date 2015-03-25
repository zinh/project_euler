package main

import "fmt"

func main(){
  var sum int
  f1 := 1
  f2 := 2
  for f1 < 4000000 {
    if f1 % 2 == 0{
      sum += f1
    }
    f3 := f1 + f2
    f1 = f2
    f2 = f3
    // fmt.Println(f1)
  }
  fmt.Println(sum)
}

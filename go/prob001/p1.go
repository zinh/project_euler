package main

import "fmt"

func main(){
  var sum int
  for i := 3; i < 1000; i = i + 1{
    if i % 3 == 0 || i % 5 == 0 {
      sum += i
    }
  }
  fmt.Println(sum)
}

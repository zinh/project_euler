package main

import "fmt"

func Multiple(n int) int{
  result := 2
  for{
    flag := true
    for i := 2; i <= n; i++{
      if result % i != 0{
        flag = false
        break
      }
    }
    if flag{
      break
    }
    result++
  }
  return result
}

func main(){
  fmt.Println(Multiple(20))
}

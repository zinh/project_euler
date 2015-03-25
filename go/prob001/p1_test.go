package main

import "testing"

func TestSum(t *testing.T) {
  cases := []struct {
    in, want int
  }{
    {10, 23},
    {1000, 233168},
  }
  for _, c := range cases {
    got := sum_35(c.in)
    if got != c.want {
      t.Errorf("Reverse(%d) == %d, want %d", c.in, got, c.want)
    }
  }
}

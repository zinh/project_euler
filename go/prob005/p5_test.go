package main

import "testing"

func TestIsPrime(t *testing.T) {
  cases := []struct {
    in int
    want int
  }{
    {10, 2520},
    {5, 60},
    {232792560, 60},
  }
  for _, c := range cases {
    got := Multiple(c.in)
    if got != c.want {
      t.Errorf("Multiple(%d) == %d, want %d", c.in, got, c.want)
    }
  }
}

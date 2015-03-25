package fibo
import "testing"

func TestEvenFiboSum(t *testing.T){
  cases := []struct{
    in, want int
  }{
    {1, 0},
    {2, 0},
    {10, 10},
    {4000000, 4613732},
  }
  for _, c := range cases{
    got := fiboSum(c.in)
    if got != c.want{
      t.Errorf("fiboSum(%i) == %i, want %i", c.in, got, c.want)
    }
  }
}

pub fn fibo(n: i32) -> i32{
    if n < 3{
        0
    } else {
        let mut f1 = 1;
        let mut f2 = 2;
        let mut f3 = f1 + f2;
        let mut sum = 2;
        while f3 < n {
            if f3 % 2 == 0 {sum += f3;}
            f1 = f2;
            f2 = f3;
            f3 = f1 + f2;
        }
        sum
    }
}

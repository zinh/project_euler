pub fn prime(n: u64) -> u64{
    let mut max_divisor = 0;
    let mut m = n;
    let mut i = 2;
    loop {
        if i > m {break;}
        if (m % i) == 0{
            m = m / i;
            max_divisor = i;
        }
        i += 1;
    }
    if max_divisor == 0{
        return n
    }
    else{
        return max_divisor
    }
}

fn main(){
    prime(600_851_475_143);
}

pub fn multiple(max: i32) -> i32{
    let mut sum: i32 = 0;
    for n in 3..max {
        if (n % 3 == 0) || (n % 5 == 0){
            sum += n;
        }
    }
    sum
}

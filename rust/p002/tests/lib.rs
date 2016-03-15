extern crate p002;
#[test]
fn should_return_0_when_1() {
    assert_eq!(0, p002::fibo(1));
}

#[test]
fn should_return_0_when_2() {
    assert_eq!(0, p002::fibo(2));
}

#[test]
fn should_return_10_when_10() {
    assert_eq!(10, p002::fibo(10));
}

#[test]
fn normal_case() {
    assert_eq!(4_613_732, p002::fibo(4_000_000));
}

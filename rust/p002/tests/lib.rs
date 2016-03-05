extern crate p002;
#[test]
fn it_works() {
    assert_eq!(0, p002::fibo(1));
    assert_eq!(0, p002::fibo(2));
    assert_eq!(10, p002::fibo(10));
    assert_eq!(4_613_732, p002::fibo(4_000_000));
}

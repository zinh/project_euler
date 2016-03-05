extern crate p003;
#[test]
fn it_works() {
    assert_eq!(2, p003::prime(2));
    assert_eq!(3, p003::prime(3));
    assert_eq!(5, p003::prime(10));
    assert_eq!(6857, p003::prime(600851475143));
}

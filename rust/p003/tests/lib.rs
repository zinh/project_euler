extern crate p003;
#[test]
fn should_return_2_when_2() {
    assert_eq!(2, p003::prime(2));
}

#[test]
fn should_return_3_when_3() {
    assert_eq!(3, p003::prime(3));
}

#[test]
fn should_return_5_when_10() {
    assert_eq!(5, p003::prime(10));
}

#[test]
fn should_calculate_with_big_number() {
    assert_eq!(6857, p003::prime(600_851_475_143));
}

extern crate p004;

#[test]
fn check_palindrome_1() {
    assert_eq!(true, p004::check_palindrome(2));
    assert_eq!(true, p004::check_palindrome(22));
    assert_eq!(true, p004::check_palindrome(232));
    assert_eq!(true, p004::check_palindrome(2002));
    assert_eq!(false, p004::check_palindrome(21));
    assert_eq!(false, p004::check_palindrome(2310));
    assert_eq!(true, p004::check_palindrome(906609));
}

#[test]
fn check_largest_palindrome(){
    assert_eq!(906609, p004::largest_palindrome());
}

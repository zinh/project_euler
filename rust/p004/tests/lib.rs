extern crate p004;

#[test]
fn check_palindrome_1() {
    assert_eq!(true, p004::check_palindrome(2));
    assert_eq!(true, p004::check_palindrome(22));
    assert_eq!(true, p004::check_palindrome(232));
    assert_eq!(true, p004::check_palindrome(2002));
    assert_eq!(false, p004::check_palindrome(21));
    assert_eq!(false, p004::check_palindrome(2310));
}

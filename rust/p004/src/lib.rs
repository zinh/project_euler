pub fn check_palindrome(n: i32) -> bool{
    let num_str = n.to_string();
    let rev_string: String = reverse(&num_str);
    if num_str == rev_string{
        return true
    }else{
        return false
    }
}

fn reverse(s: &String) -> String{
    let mut r: String = "".to_string();
    for c in s.chars().rev(){
        r.push(c);
    }
    return r
}

pub fn largest_palindrome() -> i32 {
    let mut result = 0;
    for i in 100..999{
        for j in 100..999{
            let p = i * j;
            if check_palindrome(p) && p > result{
                result = p;
            }
        }
    }
    return result
}

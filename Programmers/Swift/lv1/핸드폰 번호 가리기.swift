// Programmers
// Swift
// Lv. 1
// 핸드폰 번호 가리기

// 나의 기존 풀이
func solution(_ phone_number:String) -> String {
    let length = phone_number.count
    let last = Array(phone_number)[(length-4)..<length].map { String($0) }
    let masked = Array(repeating: "*", count: length-4)
    return (masked + last).joined()
}

// suffix 함수로 쉽게 해결
func solution(_ phone_number:String) -> String {
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}

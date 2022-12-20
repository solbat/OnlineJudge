// Programmers
// Swift
// Lv. 1
// 나누어 떨어지는 숫자 배열

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter({ $0 % divisor == 0 }).sorted()
    return result.isEmpty ? [-1] : result
}

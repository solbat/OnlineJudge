// Programmers
// Swift
// Lv. 1
// 자연수 뒤집어 배열로 만들기

func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().map { Int(String($0))! }
}

// Programmers
// Swift
// Lv. 1
// 정수 내림차순으로 배치하기

func solution(_ n:Int64) -> Int64 {
    return Int64(String(n).sorted(by: >).map { String($0) }.joined())!
}

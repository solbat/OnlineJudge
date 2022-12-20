// Programmers
// Swift
// Lv. 1
// 두 정수 사이의 합

// 배열 합치기
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64((a < b ? a...b : b...a).reduce(0, +))
}

// 수학 공식 사용, 매우매우 빠른 속도
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
}

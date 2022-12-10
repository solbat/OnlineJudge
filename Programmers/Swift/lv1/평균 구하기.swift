// Programmers
// Swift
// Lv. 1
// 평균 구하기

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}

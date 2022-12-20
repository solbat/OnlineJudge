// Programmers
// Swift
// Lv. 1
// 제일 작은 수 제거하기

// 제일 작은 수 index를 구하여 제거하기
func solution(_ arr:[Int]) -> [Int] {
    var answer = arr
    answer.remove(at: answer.firstIndex(of: answer.min()!)!)
    return arr.count == 1 ? [-1] : Array(answer)
}

// filter 사용
func solution(_ arr:[Int]) -> [Int] {
    let min = arr.min()!
    return arr.count == 1 ? [-1] : arr.filter { $0 != min }
}

// filter 사용 (위처럼 min 따로 안 빼면 시간 초과)
func solution(_ arr:[Int]) -> [Int] {
    return arr.count == 1 ? [-1] : arr.filter { $0 != arr.min()! }
}

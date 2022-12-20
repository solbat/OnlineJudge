// Programmers
// Swift
// Lv. 1
// 서울에서 김서방 찾기

func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.enumerated().filter { $0.1 == "Kim" }[0].0)에 있다"
}

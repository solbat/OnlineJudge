// Programmers
// Swift
// Lv. 1
// 약수의 합

func solution(_ n:Int) -> Int {
    return n < 2 ? n : (1...n/2).filter({ n % $0 == 0 }).reduce(0, +) + n
}

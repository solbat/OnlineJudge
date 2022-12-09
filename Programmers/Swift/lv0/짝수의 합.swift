// Programmers
// Swift
// Lv. 0
// 짝수의 합

import Foundation

func solution(_ n:Int) -> Int {
    return (0...n).filter { $0 % 2 == 0 }.reduce(0, +)
}
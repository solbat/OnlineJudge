// Programmers
// Swift
// Lv. 0
// 제곱수 판별하기

import Foundation

func solution(_ n:Int) -> Int {
    return (1...1000).map { $0*$0 }.contains(n) ? 1 : 2
}
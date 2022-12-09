// Programmers
// Swift
// Lv. 0
// 피자 나눠 먹기 (1)

import Foundation

func solution(_ n:Int) -> Int {
    return n%7 == 0 ? n/7 : n/7+1
}
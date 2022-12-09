// Programmers
// Swift
// Lv. 0
// 피자 나눠 먹기 (2)

import Foundation

func solution(_ n:Int) -> Int {
    for i in 1... {
        if i*6%n == 0 {
            return i
        }
    }
    return 0
}
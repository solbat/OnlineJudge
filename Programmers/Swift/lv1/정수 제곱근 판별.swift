// Programmers
// Swift
// Lv. 1
// 정수 제곱근 판별

import Foundation

func solution(_ n:Int64) -> Int64 {
    let s = sqrt(Double(n))
    if floor(s) == s {
        return Int64((s + 1) * (s + 1))
    } else {
        return -1
    }
}

// Programmers
// Swift
// Lv. 0
// 369게임

import Foundation

func solution(_ order:Int) -> Int {
    return String(order).filter { "369".contains($0) }.count
}
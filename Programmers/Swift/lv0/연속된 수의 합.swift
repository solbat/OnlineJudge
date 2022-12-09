// Programmers
// Swift
// Lv. 0
// 연속된 수의 합

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let first = (total - (0..<num).reduce(0,+)) / num
    return Array(first..<(first+num))
}
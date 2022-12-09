// Programmers
// Swift
// Lv. 0
// 최빈값 구하기

import Foundation

func solution(_ array:[Int]) -> Int {
    var counts = [Int: Int]()
    array.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }
    let maxNumber = counts.max(by: { $0.value <= $1.value })!.key
    let maxCount = counts.max(by: { $0.value <= $1.value })!.value
    
    if counts.compactMap({ $0.value == maxCount ? $0.key : nil }).count > 1 {
        return -1
    } else {
        return maxNumber
    }
}
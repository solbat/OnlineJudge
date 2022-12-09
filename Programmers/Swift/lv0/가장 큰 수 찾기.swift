// Programmers
// Swift
// Lv. 0
// 가장 큰 수 찾기

import Foundation

func solution(_ array:[Int]) -> [Int] {
    var maxIdx = 0
    var maxNum = array[0]
    for (idx, num) in array.enumerated() {
        if maxNum < num {
            maxIdx = idx
            maxNum = num
        }
    }
    return [maxNum, maxIdx]
}
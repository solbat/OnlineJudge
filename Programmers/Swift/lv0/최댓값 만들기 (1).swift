// Programmers
// Swift
// Lv. 0
// 최댓값 만들기 (1)

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortedNumbers = numbers.sorted()
    return sortedNumbers.popLast()!*sortedNumbers.popLast()!
}
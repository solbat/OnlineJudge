// Programmers
// Swift
// Lv. 0
// 최댓값 만들기 (2)

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortedNumbers = numbers.sorted()
    return max(sortedNumbers[0]*sortedNumbers[1], sortedNumbers[sortedNumbers.count-1]*sortedNumbers[sortedNumbers.count-2])
}
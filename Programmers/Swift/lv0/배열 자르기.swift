// Programmers
// Swift
// Lv. 0
// 배열 자르기

import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}
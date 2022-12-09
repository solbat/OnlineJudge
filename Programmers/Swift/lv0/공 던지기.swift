// Programmers
// Swift
// Lv. 0
// 공 던지기

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[2*(k-1)%numbers.count]
}
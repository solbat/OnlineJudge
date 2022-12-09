// Programmers
// Swift
// Lv. 0
// 배열 회전시키기

import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    if direction == "left" {
        return (1...numbers.count).map { $0 % numbers.count }.map { numbers[$0] }
    } else {
        return (1...numbers.count).map { ($0 + numbers.count - 2) % numbers.count }.map { numbers[$0] }
    }
}
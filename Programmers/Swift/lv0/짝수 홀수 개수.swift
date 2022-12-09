// Programmers
// Swift
// Lv. 0
// 짝수 홀수 개수

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let evenCount = num_list.filter { $0%2 == 0 }.count
    return [evenCount, num_list.count-evenCount]
}
// Programmers
// Swift
// Lv. 0
// 등수 매기기

import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let sorted = score.map { Double($0.reduce(0,+)) / 2.0 }.enumerated().sorted(by: { $0.1 >= $1.1 })
    var order = 0
    var temp = -1.0
    var count = 0
    var answer = Array(repeating: 0, count: score.count)
    
    for (idx, val) in sorted {
        if val != temp {
            order += count + 1
            count = 0
        } else {
            count += 1
        }
        answer[idx] = order
        temp = val
    }
    
    return answer
}

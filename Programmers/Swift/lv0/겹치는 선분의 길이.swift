// Programmers
// Swift
// Lv. 0
// 겹치는 선분의 길이

import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var dict = [Int: Int]()
    var count = 0
    _ = lines.map { line in
        for n in line[0]..<line[1] {
            dict[n] = dict[n] == nil ? 1 : dict[n]! + 1
        }
    }
    for value in dict.values {
        if value > 1 {
            count += 1
        }
    }
    return count
}

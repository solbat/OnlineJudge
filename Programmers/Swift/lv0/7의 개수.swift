// Programmers
// Swift
// Lv. 0
// 7의 개수

import Foundation

func solution(_ array:[Int]) -> Int {
    return array.map { String($0) }.joined().filter { String($0) == "7" }.count
}
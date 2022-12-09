// Programmers
// Swift
// Lv. 0
// 배열의 유사도

import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    return s1.filter { s2.contains($0) }.count
}
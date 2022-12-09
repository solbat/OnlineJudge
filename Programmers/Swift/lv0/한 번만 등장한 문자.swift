// Programmers
// Swift
// Lv. 0
// 한 번만 등장한 문자

import Foundation

func solution(_ s:String) -> String {
    var dict: [Character:Int] = [:]
    for char in s {
        dict[char] = (dict[char] ?? 0) + 1
    }
    return dict.filter { $0.value == 1 }.map { String($0.key) }.sorted().joined()
}
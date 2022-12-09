// Programmers
// Swift
// Lv. 0
// 숨어있는 숫자의 덧셈 (1)

import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.map { Int(String($0)) ? Int(String($0)) : 0 }.reduce(0, +)
}
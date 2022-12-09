// Programmers
// Swift
// Lv. 0
// 숨어있는 숫자의 덧셈 (2)

import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.map { char in
        guard let toInt = Int(String(char)) else { return " " }
        return String(char)
    }.joined().split(separator: " ").map { Int($0)! }.reduce(0, +)
}
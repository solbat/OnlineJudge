// Programmers
// Swift
// Lv. 0
// 대문자와 소문자

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map { $0.isUppercase ? String($0).lowercased() : String($0).uppercased() }.joined()
}
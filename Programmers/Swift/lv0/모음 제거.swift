// Programmers
// Swift
// Lv. 0
// 모음 제거

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.filter { !"aeiou".contains($0) }
}
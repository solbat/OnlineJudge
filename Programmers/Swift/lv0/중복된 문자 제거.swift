// Programmers
// Swift
// Lv. 0
// 중복된 문자 제거

import Foundation

func solution(_ my_string:String) -> String {
    var characters: Set<String> = []
    return my_string.filter { char in
        if characters.contains(String(char)) { return false }
        else {
            characters.insert(String(char))
            return true
        }
    }.map { String($0) }.joined()
}
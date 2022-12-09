// Programmers
// Swift
// Lv. 0
// 특정 문자 제거하기

import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var answer = ""
    for char in my_string {
        if String(char) != letter {
            answer += String(char)
        }
    }
    return answer
}
// Programmers
// Swift
// Lv. 0
// 문자 반복 출력하기

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map {
        var temp: String = ""
        for _ in 0..<n {
            temp.append($0)
        }
        return temp
    }.joined()
}
// Programmers
// Swift
// Lv. 0
// 잘라서 배열로 저장하기

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var answer: [String] = []
    var count = 0
    var temp = ""
    for char in my_str {
        temp += String(char)
        count += 1
        if count == n {
            answer.append(temp)
            count = 0
            temp = ""
        }
    }
    if temp != "" {
        answer.append(temp)
    }
    return answer
}
// Programmers
// Swift
// Lv. 0
// 팩토리얼

import Foundation

func solution(_ n:Int) -> Int {
    var temp = 1
    var answer = 1
    for i in 1... {
        temp *= i
        if temp > n {
            break
        }
        answer = i
    }
    return answer
}
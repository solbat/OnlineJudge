// Programmers
// Swift
// Lv. 0
// 치킨 쿠폰

import Foundation

func solution(_ chicken:Int) -> Int {
    var answer = 0
    var temp = chicken
    
    while temp >= 10 {
        answer += temp / 10
        temp = temp / 10 + temp % 10
    }
    return answer
}
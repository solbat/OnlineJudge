// Programmers
// Swift
// Lv. 0
// 컨트롤 제트

import Foundation

func solution(_ s:String) -> Int {
    let arr = s.split(separator: " ").map { String($0) }
    
    var temp = 0
    var answer = 0
    for x in arr {
        if String(x.first!) == "-" || x.allSatisfy({ $0.isNumber }) {
            temp = Int(x)!
            answer += Int(x)!
        } else {
            answer -= temp
        }
    }
    
    return answer
}
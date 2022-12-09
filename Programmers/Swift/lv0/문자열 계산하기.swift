// Programmers
// Swift
// Lv. 0
// 문자열 계산하기

import Foundation

func solution(_ my_string:String) -> Int {
    enum Operator {
        case plus
        case minus
    }
    let expr = my_string.components(separatedBy: " ")
    var answer = 0
    var op: Operator = .plus
    
    for char in expr {
        if char.allSatisfy { $0.isNumber } {
            switch op {
            case .plus:
                answer += Int(char)!
            case .minus:
                answer -= Int(char)!
            }
        } else {
            switch char {
            case "+":
                op = .plus
            case "-":
                op = .minus
            default:
                op = .plus
            }
        }
    }
    return answer
}
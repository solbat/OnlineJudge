// Programmers
// Swift
// Lv. 0
// OX퀴즈

import Foundation

func solution(_ quiz:[String]) -> [String] {
    return quiz.map { $0.components(separatedBy: " ") }.map { array in
        switch array[1] {
        case "+":
            return Int(array[0])! + Int(array[2])! == Int(array[4])! ? "O" : "X"
        case "-":
            return Int(array[0])! - Int(array[2])! == Int(array[4])! ? "O" : "X"
        default:
            return "X"
        }
    }
}
// Programmers
// Swift
// Lv. 0
// 다항식 더하기

import Foundation

func solution(_ polynomial:String) -> String {
    let exprs = polynomial.components(separatedBy: " + ")
    var a = 0
    var b = 0
    
    for expr in exprs {
        var temp = expr
        if temp.last == "x" {
            _ = temp.popLast()
            if let tempA = Int(temp) {
                a += tempA
            } else {
                a += 1
            }
        } else {
            b += Int(temp)!
        }
    }
    
    if a == 0 {
        return String(b)
    }
    else if b == 0 {
        return a == 1 ? "x" : "\(a)x"
    }
    else {
        return a == 1 ? "x + \(b)" : "\(a)x + \(b)"
    }
}
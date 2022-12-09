// Programmers
// Swift
// Lv. 0
// 소인수분해

import Foundation

func solution(_ n:Int) -> [Int] {
    return (1...n).filter { isPrime($0) && (n % $0 == 0) }
}

func isPrime(_ n: Int) -> Bool {
    switch n {
    case 2, 3:
        return true
        
    case 4...:
        for i in (2...Int(sqrt(Double(n)))) {
            if n%i == 0 {
                return false
            }
        }
        return true
        
    default:
        return false
    }
}
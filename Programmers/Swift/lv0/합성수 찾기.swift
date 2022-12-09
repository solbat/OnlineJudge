// Programmers
// Swift
// Lv. 0
// 합성수 찾기

import Foundation

func isComposite(_ n: Int) -> Bool {
    if n < 4 {
        return false
    }
    for i in 2...n/2 {
        if n % i == 0 {
            return true
        }
    }
    return false
}

func solution(_ n: Int) -> Int {
    return (1...n).map { isComposite($0) }.filter { $0 == true }.count
}
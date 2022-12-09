// Programmers
// Swift
// Lv. 0
// 외계행성의 나이

import Foundation

func solution(_ age:Int) -> String {
    let dx = "a".utf8.first! - "0".utf8.first!
    return String(age).map { $0.utf8.first! + dx }.map{ String(UnicodeScalar($0)) }.joined()
}
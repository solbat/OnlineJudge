// Programmers
// Swift
// Lv. 0
// 문자열 밀기

import Foundation

func solution(_ A:String, _ B:String) -> Int {
    let arr = Array(A).map { String($0) }
    var count = 0
    for i in 0..<A.count {
        let a = (0..<A.count).map { arr[(A.count + $0 - i) % A.count] }.joined() 
        if a == B {
            return count
        }
        count += 1
    }
    return -1
}
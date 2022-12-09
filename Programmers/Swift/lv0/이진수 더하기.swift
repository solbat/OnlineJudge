// Programmers
// Swift
// Lv. 0
// 이진수 더하기

import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    return String(Int(bin1, radix: 2)! + Int(bin2, radix: 2)!, radix: 2)
}
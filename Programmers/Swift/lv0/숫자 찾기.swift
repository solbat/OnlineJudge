// Programmers
// Swift
// Lv. 0
// 숫자 찾기

import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    return (String(num).enumerated().filter { String($0.1) == String(k) }.first?.0 ?? -2) + 1
}
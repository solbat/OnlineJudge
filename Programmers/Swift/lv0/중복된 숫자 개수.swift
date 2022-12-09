// Programmers
// Swift
// Lv. 0
// 중복된 숫자의 개수

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.filter { $0 == n }.count
}
// Programmers
// Swift
// Lv. 0
// 피자 나눠 먹기 (3)

import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    return n%slice == 0 ? n/slice : n/slice+1
}
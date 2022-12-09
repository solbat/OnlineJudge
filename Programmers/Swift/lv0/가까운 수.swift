// Programmers
// Swift
// Lv. 0
// 가까운 수

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.min(by: { abs($0 - n) < abs($1 - n) })!
}
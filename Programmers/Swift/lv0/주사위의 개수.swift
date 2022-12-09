// Programmers
// Swift
// Lv. 0
// 주사위의 개수

import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    return box.map { $0 / n }.reduce(1, *)
}
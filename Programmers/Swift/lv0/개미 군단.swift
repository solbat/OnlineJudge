// Programmers
// Swift
// Lv. 0
// 개미 군단

import Foundation

func solution(_ hp:Int) -> Int {
    return hp/5 + hp%5/3 + hp%5%3
}
// Programmers
// Swift
// Lv. 0
// 순서쌍의 개수

import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter { n%$0 == 0 }.count
}
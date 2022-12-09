// Programmers
// Swift
// Lv. 0
// 약수 구하기

import Foundation

func solution(_ n:Int) -> [Int] {
    return (1...n).filter { n%$0 == 0 }
}
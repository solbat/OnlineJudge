// Programmers
// Swift
// Lv. 0
// 진료순서 정하기

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    return emergency.map { num in
        return emergency.filter { $0 > num }.count + 1
    }
}
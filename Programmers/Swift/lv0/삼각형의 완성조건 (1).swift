// Programmers
// Swift
// Lv. 0
// 삼각형의 완성조건 (1)

import Foundation

func solution(_ sides:[Int]) -> Int {
    return sides.max()!*2 < sides.reduce(0,+) ? 1 : 2
}
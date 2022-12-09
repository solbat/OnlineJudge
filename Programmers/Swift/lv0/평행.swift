// Programmers
// Swift
// Lv. 0
// 평행

import Foundation

func solution(_ dots:[[Int]]) -> Int {
    if calcGradient([0, 1].map { dots[$0] }) == calcGradient([2, 3].map { dots[$0] }) {
        return 1
    }
    if calcGradient([0, 2].map { dots[$0] }) == calcGradient([1, 3].map { dots[$0] }) {
        return 1
    }
    if calcGradient([0, 3].map { dots[$0] }) == calcGradient([1, 2].map { dots[$0] }) {
        return 1
    }
    return 0
}

func calcGradient(_ dots: [[Int]]) -> Double {
    let dotA = dots[0]
    let dotB = dots[1]
    return Double(dotA[1] - dotB[1]) / Double(dotA[0] - dotB[0])
}
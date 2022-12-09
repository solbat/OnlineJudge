// Programmers
// Swift
// Lv. 0
// 직사각형 넓이 구하기

import Foundation

func calcDist(_ x: [Int], _ y: [Int]) -> Double {
    return sqrt(Double((x[0] - y[0])*(x[0] - y[0]) + (x[1] - y[1])*(x[1] - y[1])))
}

func solution(_ dots:[[Int]]) -> Int {
    let a = dots[0]
    let result = (1...3).map { calcDist(a, dots[$0]) }.sorted()
    return Int(result[0]*result[1])
}
// Programmers
// Swift
// Lv. 0
// 점의 위치 구하기

import Foundation

func solution(_ dot:[Int]) -> Int {
    let x = dot[0]
    let y = dot[1]
    switch (x, y) {
    case (0...,0...):
        return 1
    case (...0,0...):
        return 2
    case (...0,...0):
        return 3
    case (0...,...0):
        return 4
    default:
        return 0
    }
}
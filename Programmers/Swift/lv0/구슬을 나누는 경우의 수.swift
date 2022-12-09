// Programmers
// Swift
// Lv. 0
// 구슬을 나누는 경우의 수

import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    if balls == share{
        return 1
    } else{
        let numerator = Array((share + 1)...balls).map{ Double($0) }
        let denominator = Array(1...(balls - share)).map{ Double($0) }
        return Int(numerator.reduce(1, *) / denominator.reduce(1, *))
    }
}
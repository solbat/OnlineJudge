// Programmers
// Swift
// Lv. 0
// 특이한 정렬

import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.map { $0 - n }.sorted(by: { first, second in
        if first * second == first * first * (-1) {
            return first > second
        } else {
            return first * first < second * second
        }
    }).map { $0 + n }
}
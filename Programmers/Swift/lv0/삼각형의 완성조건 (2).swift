// Programmers
// Swift
// Lv. 0
// 삼각형의 완성조건 (2)

import Foundation

func solution(_ sides:[Int]) -> Int {
    let a = sides.sorted()[0]
    let b = sides.sorted()[1]
    var count = 0
    
    for num in b...2000 {
        if num >= (a + b) {
            break
        } else {
            count += 1
        }
    }
    
    for num in 1..<b {
        if b >= (a + (b - num)) {
            break
        } else {
            count += 1
        }
    }
    
    return count
}
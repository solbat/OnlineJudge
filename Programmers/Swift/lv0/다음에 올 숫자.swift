// Programmers
// Swift
// Lv. 0
// 다음에 올 숫자

import Foundation

func solution(_ common:[Int]) -> Int {
    let d = common.map { Double($0) }
    if (common[0] + common[2]) / 2 == common[1] {
        return Int(common.last! + common[1] - common[0])
    } else {
        return Int(common.last! * common[1] / common[0])
    }
}

// func solution(_ common:[Int]) -> Int {
//     let d = common.map { Double($0) }
//     if (d[0] + d[2]) / 2 == d[1] {
//         return Int(d.last! + d[1] - d[0])
//     } else {
//         return Int(d.last! * d[1] / d[0])
//     }
// }
// Programmers
// Swift
// Lv. 0
// 옷가게 할인 받기

import Foundation

func solution(_ price:Int) -> Int {
    switch price {
    case 100000...299999:
        return Int(Double(price)*0.95)
    case 300000...499999:
        return Int(Double(price)*0.90)
    case 500000...:
        return Int(Double(price)*0.80)
    default:
        return price
    }
}
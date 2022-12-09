// Programmers
// Swift
// Lv. 0
// 분수의 덧셈

import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    let sortedNums = [[denum1, num1], [denum2, num2]].sorted { $0[0] < $1[1] }
    var x = 1
    var y = 1
    
    while sortedNums[0][1] * x % sortedNums[1][1] != 0 {
        x += 1
    }
    y = sortedNums[0][1] * x / sortedNums[1][1]
    let temp = [sortedNums[0][0] * x + sortedNums[1][0] * y, sortedNums[0][1] * x]
    let gcd = getGCD(temp[0], temp[1])
    var answer = temp.map { $0 / gcd }
    
    return answer
}

func getGCD(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return getGCD(b, a%b)
    }
}
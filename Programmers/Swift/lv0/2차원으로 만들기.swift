// Programmers
// Swift
// Lv. 0
// 2차원으로 만들기

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var answer: [[Int]] = []
    var temp: [Int] = []
    for i in 0..<(num_list.count/n) {
        temp = []
        for j in (i*n)..<((i+1)*n) {
            temp.append(num_list[j])
        }
        answer.append(temp)
    }
    return answer
}
// Programmers
// Swift
// Lv. 0
// 영어가 싫어요

import Foundation

func solution(_ numbers:String) -> Int64 {
    var input = numbers
    let dict: [String:Int] = ["zero" : 0, "one" : 1, "two" : 2, "three" : 3, "four" : 4, "five" : 5, "six" : 6, "seven" : 7, "eight" : 8, "nine" : 9]
    let data = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var answer = ""
    
    while !input.isEmpty {
        _ = [3, 4, 5].map { num in
            var temp = String(input.prefix(num))
            if data.contains(temp) {
                answer += String(dict[temp]!)
                for i in (1...temp.count) {
                    input.removeFirst()
                }
            }
        }
    }
    return Int64(answer)!
}
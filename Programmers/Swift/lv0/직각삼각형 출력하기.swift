// Programmers
// Swift
// Lv. 0
// 직각삼각형 출력하기

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }

for i in 1...n[0] {
    var temp = ""
    for _ in 1...i {
        temp += "*"
    }
    print(temp)
}
// Programmers
// Swift
// Lv. 0
// 인덱스 바꾸기

import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var my_array = Array(my_string)
    my_array.swapAt(num1, num2)
    return my_array.map { String($0) }.joined()
}

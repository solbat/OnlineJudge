// Programmers
// Swift
// Lv. 0
// 암호 해독

import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.enumerated().filter { $0.0 % code == code - 1 }.map { String($0.1) }.joined()
}
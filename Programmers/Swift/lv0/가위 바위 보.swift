// Programmers
// Swift
// Lv. 0
// 가위 바위 보

import Foundation

func solution(_ rsp:String) -> String {
    return rsp.map { num in
        switch num {
            case "0":
                return "5"
            case "2":
                return "0"
            case "5":
                return "2"
            default:
                return "0"
        }
    }.joined()
}
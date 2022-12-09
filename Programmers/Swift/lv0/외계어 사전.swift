// Programmers
// Swift
// Lv. 0
// 외계어 사전

import Foundation

// func solution(_ spell:[String], _ dic:[String]) -> Int {
//     let keys = dic.map { (str: String) -> Set<String> in
//         var temp: [String: Int] = [:]
//         str.map { (char: Character) -> Void in
//             if temp[String(char)] == nil {
//                 temp[String(char)] = 1
//             } else {
//                 temp["NO"] = 1
//             }
//         }
//         return Set(temp.keys)
//     }
//     return keys.contains(Set(spell)) ? 1 : 2
// }

func solution(_ spell: [String], _ dic: [String]) -> Int {
    return dic.map { Array($0) }.map { (data: [Character]) -> String in
        return data.sorted().map { String($0) }.joined()
    }.contains(spell.sorted().joined()) ? 1 : 2
}
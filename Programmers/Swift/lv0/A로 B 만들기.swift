// Programmers
// Swift
// Lv. 0
// A로 B 만들기

import Foundation

func solution(_ before:String, _ after:String) -> Int {
    return before.sorted() == after.sorted() ? 1 : 0
}
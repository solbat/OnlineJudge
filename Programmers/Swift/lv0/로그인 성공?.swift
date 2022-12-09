// Programmers
// Swift
// Lv. 0
// 로그인 성공?

import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    for data in db {
        if id_pw == data {
            return "login"
        }
        else if id_pw[0] == data[0] {
            return "wrong pw"
        }
    }
    return "fail"
}
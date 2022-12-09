// Programmers
// Swift
// Lv. 0
// 유한소수 판별하기

import Foundation

func getPrime(_ number: Int) -> [Int: Int] {
    var temp = number
    var answer = [Int: Int]()
    if number == 1 {
        return [Int: Int]()
    }
    for i in 2...number {
        while temp % i == 0 {
            temp /= i
            if answer[i] == nil {
                answer[i] = 1
            } else {
                answer[i] = answer[i]! + 1
            }
        }
    }
    return answer
}

func solution(_ a:Int, _ b:Int) -> Int {
    var primeA = getPrime(a)
    var primeB = getPrime(b)
    
    [2, 5].forEach { num in
        primeA[num] = nil
        primeB[num] = nil
    }
    
    if primeB.isEmpty {
        return 1
    }
    
    if primeB.keys.allSatisfy({ num in
        guard let a = primeA[num] else {
            return false
        }
        return a >= primeB[num]!
    }) {
        return 1
    } else {
        return 2
    }
}
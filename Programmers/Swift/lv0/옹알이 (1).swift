// Programmers
// Swift
// Lv. 0
// 옹알이 (1)

import Foundation

func solution(_ babbling:[String]) -> Int {
    let able = ["aya", "ye", "woo", "ma"]
    
    var combi: [String] = []
    
    for i in able {
        combi.append(i)
        for j in able {
            if i != j {
                combi.append(i+j)
                for k in able {
                    if i != k && j != k {
                        combi.append(i+j+k)
                        for l in able {
                            if i != l && j != l && k != l {
                                combi.append(i+j+k+l)
                            }
                        }
                    }
                }
            }         
        }
    }
    return babbling.filter({ combi.contains($0) }).count
}
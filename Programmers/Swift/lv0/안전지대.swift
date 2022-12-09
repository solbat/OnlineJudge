// Programmers
// Swift
// Lv. 0
// 안전지대

import Foundation

func solution(_ board:[[Int]]) -> Int {
    let n = board.count
    let neighbors = [
        [-1, -1], [ 0, -1], [+1, -1],
        [-1,  0], [ 0,  0], [+1,  0],
        [-1, +1], [ 0, +1], [+1, +1]
    ]
    var answer = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            for neighbor in neighbors {
                var x = i + neighbor[0]
                var y = j + neighbor[1]
                if x >= 0 && x < n && y >= 0 && y < n {
                    if board[x][y] == 1 {
                        answer[i][j] = 1
                        break
                    }
                }
            }
        }
    }
    return answer.map { $0.filter({ $0 == 0 }).count }.reduce(0, +)
}
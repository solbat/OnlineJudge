// Programmers
// Swift
// Lv. 0
// 캐릭터의 좌표

import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var x = 0
    var y = 0
    var nx = 0
    var ny = 0
    
    func move(_ to: String) {
        switch to {
        case "up":
            ny = y + 1
        case "down":
            ny = y - 1
        case "left":
            nx = x - 1
        case "right":
            nx = x + 1
        default:
            break
        }
        
        if (-board[0]/2...board[0]/2).contains(nx) {
            x = nx
        }
        if (-board[1]/2...board[1]/2).contains(ny) {
            y = ny
        }
    }
    
    for to in keyinput {
        move(to)
    }
    
    return [x, y]
}
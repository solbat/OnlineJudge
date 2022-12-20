// Programmers
// Swift
// Lv. 1
// 콜라츠 추측

func solution(_ num:Int) -> Int {
    if num == 1 {
        return 0
    }
    var temp = num
    for i in 1...500 {
        if temp % 2 == 0 {
            temp /= 2
        }
        else if temp % 2 == 1 {
            temp = temp * 3 + 1
        }
        if temp == 1 {
            return i
        }
    }
    return -1
}

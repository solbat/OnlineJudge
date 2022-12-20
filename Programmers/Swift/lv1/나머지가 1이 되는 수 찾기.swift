// Programmers
// Swift
// Lv. 1
// 나머지가 1이 되는 수 찾기

func solution(_ n:Int) -> Int {
    for x in 2... {
        if (n - 1) % x == 0 {
            return x
        }
    }
    return 0
}

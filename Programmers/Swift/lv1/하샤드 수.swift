// Programmers
// Swift
// Lv. 1
// 하샤드 수

func solution(_ x:Int) -> Bool {
    let sum = String(x).reduce(0, { result, char in
        result + Int(String(char))!
    })
    return x % sum == 0 ? true : false
}

// Programmers
// Swift
// Lv. 1
// 문자열 내 p와 y의 개수

func solution(_ s:String) -> Bool {
    var countP = 0
    var countY = 0
    
    _ = s.lowercased().map { char in
        if char == "p" {
            countP += 1
        }
        else if char == "y" {
            countY += 1
        }
    }
    return countP == countY ? true : false
}

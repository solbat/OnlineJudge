### Range

- **Range** : `0..<5`
    - A half-open interval from a lower bound up to, but not including, an upper bound.
- **ClosedRange** : `0...5`
    - An interval from a lower bound up to, and including, an upper bound.
- **PartialRangeFrom** : `0...`
- **PartialRangeUpTo** : `..<5.0`
- **팁**
    - SignedInteger Range인 경우 Sequence 프로토콜을 준수함. 따라서 for문에 사용 가능!
        - `for i in 0...10 { ... }`
    - `(0...5).contains(3)` : true
        - range에 () 괄호 꼭 작성해야 함!
    - `0..<10 ~= 3` : true
        - `~=` 는 contains와 비슷한 역할
- **주의**
    - `0<..5` 같은 문법은 없다!
    - `for i in 0... { ... }` : 무한 반복문이므로 주의
    - `for i in ...8 { ... }` : 이딴 건 없음.. 에러!
    - `A...A` 는 A만 들어있는 range
    - `A..<A` 는 빈 range일 뿐 에러가 발생하지는 않음!
    - `A..<B` 나 `A...B` 에서 B가 A보다 작은 수일 경우 에러 발생!
        - 특히 다음과 같은 상황이 발생하지 않도록 주의 ‼
            
            ```swift
            for i in 0..<n { ... } // n이 0보다 작으면 에러!
            for i in 1..<n/2 { ... } // n이 0이나 1이면 에러!
            ```
            

### Array repeating with flatMap

- 임의의 배열을 연속적으로 복제하여 하나의 배열을 생성하고자 할 때
- **예시**
    - Array(repeating: [1,2,3], count: 10).flatMap { $0 }
    - [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]

### 정수 각 자리수 더하기

- String(n).map { Int(String($0))! }.reduce(0, +)
    - String을 map할 수 있다!
    - 그러나 map에서 ‘String.Element’ (aka Character)이 입력된다.
    - Character를 직접 Int화할 수 없으므로, String으로 감싸준 후 Int로 변환해야 한다!

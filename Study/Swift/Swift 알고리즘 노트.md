# Swift 알고리즘 노트

# Swift 알고리즘 노트

> Swift 언어로 알고리즘 코딩테스트를 치루기 위해 필요한 문법, 코드, 팁을 정리한 노트입니다.
by solbat
> 

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
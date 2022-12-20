A **Unicode** string value that is a **collection** of **characters**.

[Apple Developer Documentation](https://developer.apple.com/documentation/swift/string)

[[Swift] String 관련 함수들](https://tngusmiso.tistory.com/46)

## Overview

- A string is a series of characters, such as `"Swift"`, that forms a collection.
- `Character`로 구성되어 있음!
- Strings in Swift are Unicode correct and locale insensitive, and are designed to be efficient.
    - **Unicode correct** : 유니코드 기준을 준수
    - **locale insensitive** : locale-specific rules를 준수하지 않음, 따라서 locale에 따라 다른 correct handling을 위해서는 별도 메소드가 필요
    
    출처 : [https://stackoverflow.com/questions/70632639/what-is-the-meaning-of-swift-are-unicode-correct-and-locale-insensitive-in-swi](https://stackoverflow.com/questions/70632639/what-is-the-meaning-of-swift-are-unicode-correct-and-locale-insensitive-in-swi)
    
- **String literals & String interpolations**

```swift
let name = "Rosa"
let personalizedGreeting = "Welcome. \(name)!"

let price = 2
let number = 3
let cookiePrice = "\(number) cookies: $\(price * number)."
```

- Combine strings using the **concatenation operator** (`+`).

```swift
let longerGreeting = greeting + " We're glad you're here!"
```

- **Multiline string literals**
    - 닫는 구분 기호의 들여쓰기와 일치하도록 여러 줄 문자열 리터럴의 각 행에서 들여쓰기가 제거됨!

```swift
let banner = """
          __,
         (           o  /) _/_
          `.  , , , ,  //  /
        (___)(_(_/_(_ //_ (__
                     /)
                    (/
        """
```

## Modifying and Comparing Strings

### Modifying

- Strings always have value semantics.
- 즉, Reference type이 아닌 Value type임!

### Comparing

- Unicode canonical representation으로 비교 연산자(`==`, `<`, `>=`, …)를 적용함
- As a result, different representations of a string compare as being equal.

```swift
let cafe1 = "Cafe\u{301}"
let cafe2 = "Café"
print(cafe1 == cafe2)
// Prints "true"
```

- The Unicode scalar value `"\u{301}"` modifies the preceding character to include an accent, so `"e\u{301}"` has the same canonical representation as the single Unicode scalar value `"é"`.

## Accessing String Elements

---

```swift
let name = "Marie Curie"
let firstSpace = name.firstIndex(of: " ") ?? name.endIndex
let firstName = name[..<firstSpace]
// firstName == "Marie"
```

## Accessing a String’s Unicode Representation

```swift
let cafe = "Cafe\u{301} du 🌍"
print(cafe)
// Prints "Café du 🌍"
print(cafe.count)
// Prints "9"
print(Array(cafe))
// Prints "["C", "a", "f", "é", " ", "d", "u", " ", "🌍"]"
```

### Unicode Scalar View

- A string’s `unicodeScalars` property is a collection of Unicode scalar values, the 21-bit codes that are the basic unit of Unicode.
- Each scalar value is represented by a Unicode.
- Scalar instance and is equivalent to a UTF-32 code unit.

```swift
print(cafe.unicodeScalars.count)
// Prints "10"
print(Array(cafe.unicodeScalars))
// Prints "["C", "a", "f", "e", "\u{0301}", " ", "d", "u", " ", "\u{0001F30D}"]"
print(cafe.unicodeScalars.map { $0.value })
// Prints "[67, 97, 102, 101, 769, 32, 100, 117, 32, 127757]"
```

### UTF-16 View

- A string’s `utf16` property is a collection of UTF-16 code units, the 16-bit encoding form of the string’s Unicode scalar values.

```swift
print(cafe.utf16.count)
// Prints "11"
print(Array(cafe.utf16))
// Prints "[67, 97, 102, 101, 769, 32, 100, 117, 32, 55356, 57101]"
```

- These elements match those accessed through indexed `NSString` APIs.

```swift
let nscafe = cafe as NSString
print(nscafe.length)
// Prints "11"
print(nscafe.character(at: 3))
// Prints "101"
```

### UTF-8 View

- A string’s `utf8` property is a collection of UTF-8 code units, the 8-bit encoding form of the string’s Unicode scalar values.

```swift
print(cafe.utf8.count)
// Prints "14"
print(Array(cafe.utf8))
// Prints "[67, 97, 102, 101, 204, 129, 32, 100, 117, 32, 240, 159, 140, 141]"
```

- This representation matches the one used when `String` instances are passed to C APIs.

```swift
let cLength = strlen(cafe)
print(cLength)
// Prints "14"
```

## Measuring the Length of a String

- For example, an ASCII character like the capital letter *A* is represented by a single element in each of its four views.
- The Unicode scalar value of *A* is `65`, which is small enough to fit in a single code unit in both UTF-16 and UTF-8.

```swift
let capitalA = "A"
print(capitalA.count)
// Prints "1"
print(capitalA.unicodeScalars.count)
// Prints "1"
print(capitalA.utf16.count)
// Prints "1"
print(capitalA.utf8.count)
// Prints "1"
```

- On the other hand, an emoji flag character is constructed from a pair of Unicode scalar values, like `"\u{1F1F5}"` and `"\u{1F1F7}"`. Each of these scalar values, in turn, is too large to fit into a single UTF-16 or UTF-8 code unit. As a result, each view of the string `"🇵🇷"`
 reports a different length.

```swift
let flag = "🇵🇷"
print(flag.count)
// Prints "1"
print(flag.unicodeScalars.count)
// Prints "2"
print(flag.utf16.count)
// Prints "4"
print(flag.utf8.count)
// Prints "8"
```

## Topics

### Creating a String

- `init()`
    
    Creates an empty string.
    
- `init(Character)`
    
    Creates a string containing the given character.
    
- `init(repeating: String, count: Int)`
    
    Creates a new string representing the given string repeated the specified number of times.
    
- `init(repeating: Character, count: Int)`
    
    Creates a string representing the given character repeated the specified number of times.
    

### Inspecting a String

- `var isEmpty: Bool`
- `var count: Int`

### Converting Numeric Values

- `init<T>(T, radix: Int, uppercase: Bool)`
    
    Creates a string representing the given value in base 10, or some other specified base.
    

### Appending Strings and Characters

## Tips

- string.count
- string.isEmpty
- Array(repeating: **<Element>**, count: **<Int>**)
- suffix, prefix

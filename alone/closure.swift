//
//  closure.swift
//  alone
//
//  Created by 강치우 on 10/24/23.
//

import Foundation

//클로저 예제 01
//
//다음 코드에서 클로저의 반환 타입과 매개변수 타입을 추론하여 적어보세요.

//let add: (Int, Int) -> Int = { $0 + $1 }

//반환타입: Int
//매개변수 타입: (Int, Int)


//클로저 예제 02
//
//다음 코드에서 클로저를 사용하여 배열의 모든 요소에 10을 곱한 새로운 배열을 만들어보세요.

//let numbers = [1, 2, 3, 4, 5]
//
//let num = numbers.map { $0 * 10 }
//print(num)

//클로저 예제 03
//
//다음 코드에서 클로저를 사용하여 배열의 홀수 요소만 필터링하여 새로운 배열을 만들어보세요.

//let numbers = [1, 2, 3, 4, 5]
//
//let num = numbers.filter { $0 % 2 == 1 }
//print(num)

//클로저 예제 04
//
//다음 코드에서 클로저를 사용하여 배열의 요소들의 합을 구해보세요.

//let numbers = [1, 2, 3, 4, 5]
//
//var num = numbers.reduce(0) { $0 + $1}
//
//print(num)

//클로저 예제 05
//
//다음 코드에서 클로저를 사용하여 배열의 요소들을 문자열로 변환하여 새로운 배열을 만들어보세요.

//let numbers = [1, 2, 3, 4, 5]
//
//let num = numbers.map { (num: Int) -> String in
//    return "\(num)"
//}
//print(num)


//맵, 필터, 리듀스 예제 01
//
//주어진 배열에서 홀수만 골라내서 제곱한 후 모두 더하는 함수를 작성하세요.

//func sumOfSquaresOfOdds(array: [Int]) -> Int {
//    // 여기에 코드를 작성
//    return array.filter { $0 % 2 == 1}.map { $0 * $0 }.reduce(0) { $0 + $1 }
//}
//
//let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//print(sumOfSquaresOfOdds(array: [1, 2, 3, 4, 5, 6, 7, 8, 9]))


//맵, 필터, 리듀스 예제 02
//
//주어진 문자열에서 모음을 제거하고 대문자로 바꾼 후 역순으로 출력하는 함수를 작성하세요.

// 예시코드
//func reverseWithoutVowels(string: String) -> String {
//    // 여기에 코드를 작성
//    let char: Set<Character> = ["A","E","I","O","U"] // 모음 만들어주깅
//    let result = string.uppercased().filter { !char.contains($0) }
//                     // uppercased 메서드로 대문자 변환 후 모음이 포함되지 않으면 필터링
//
//    return String(result.reversed()) // 스트링타입으로 묶은 후 리버스
//}
//
//let string = "Hello World" // 결과: DLRW LLH
//print(reverseWithoutVowels(string: "Hello World"))


//맵, 필터, 리듀스 예제 03
//
//주어진 딕셔너리에서 값이 짝수인 키들의 합을 구하는 함수를 작성하세요.

// 예시코드
//func sumOfKeysWithEvenValues(dictionary: [String: Int]) -> Int {
//    // 여기에 코드를 작성
//    let key = dictionary.filter { $0.value % 2 == 0 } // 짝수값 필터링
//    let result = key.reduce(0) { $0 + $1.value }
//    return result
//}
//
//let dictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
//print(sumOfKeysWithEvenValues(dictionary: ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]))


//맵, 필터, 리듀스 예제 04
//
//주어진 배열에서 가장 큰 수와 가장 작은 수의 차이를 구하는 함수를 작성하세요.

// 예시코드
//func differenceBetweenMaxAndMin(array: [Int]) -> Int {
//    // 여기에 코드를 작성해라
//    guard let maxNum = array.max() else {
//        return 0
//    }
//    guard let minNum = array.min() else {
//        return 0
//    }
//    return maxNum - minNum
//}
//
//let array = [10, 20, 30, 40, 50]
//print(differenceBetweenMaxAndMin(array: [10, 20, 30, 40, 50]))


//맵, 필터, 리듀스 예제 05
//
//주어진 배열에서 각 요소의 개수를 세어서 딕셔너리로 반환하는 함수를 작성하세요.

//func countElements(array: [String]) -> [String: Int] {
//     var dict: [String: Int] = [:]
//    Set(array).forEach { alpha in
//        dict[alpha] = (dict[alpha] ?? 0) + array.reduce(0) { $0 + ($1 == alpha ? 1 : 0) }
//    }
//    return dict
//}
//let array3 = ["a", "b", "a", "c", "b", "d"]
//print(countElements(array: array3))

//맵, 필터, 리듀스 예제 06
//
//주어진 배열에서 가장 많이 등장하는 요소를 반환하는 함수를 작성하세요.
//만약 동률이 있다면 무작위로 하나를 반환.


//맵, 필터, 리듀스 예제 07
//
//주어진 배열에서 각 요소의 앞뒤로 "*"을 붙여서 새로운 배열을 반환하는 함수를 작성하세요.

//let plusStar: (String) -> String = { "*" + $0 + "*" }
//
//func addStars(array: [String]) -> [String] {
//    return array.map(plusStar)
//}
//let array5 = ["a", "b", "c"]
//print(addStars(array: array5))

//맵, 필터, 리듀스 예제 08
//
//주어진 배열에서 3의 배수만 골라내서 그 합을 구하는 함수를 작성하세요.

// 예시코드
//func sumOfMultiplesOfThree(array: [Int]) -> Int {
//    // 여기에 코드를 작성
//    let filter = array.filter { $0 % 3 == 0 }
//    let result = filter.reduce(0) { $0 + $1 }
//
//    return result
//}
//let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//print(sumOfMultiplesOfThree(array: [1, 2, 3, 4, 5, 6, 7, 8, 9]))


//맵, 필터, 리듀스 예제 09
//
//주어진 배열에서 각 요소를 두 번 반복해서 새로운 배열을 반환하는 함수를 작성하세요.

// 예시코드
//func repeatTwice(array: [String]) -> [String] {
//    // 여기에 코드를 작성
//    (array + array).sorted()
//}
//let array = ["a", "b", "c"]
//print( repeatTwice(array: array))   // ["a", "a", "b", "b", "c", "c"]

//맵, 필터, 리듀스 예제 10
//
//주어진 배열에서 각 요소의 길이를 새로운 배열로 반환하는 함수를 작성하세요.


//맵, 필터, 리듀스 예제 11
//
//주어진 문자열에서 모음(a, e, i, o, u)의 개수를 세는 함수를 작성하세요.

//func countVowels(_ a: String) -> Int {
//    let char: Set<Character> = ["a", "e", "i", "o", "u"]
//    
//    let result = a.lowercased().filter { char.contains($0) }
//                    // 소문자 변신 후 char 컬렉션에 포함이 되어있다면
//    return result.count // 카운트 해
//}

// 예시코드
//let word = "swift"
//let vowelCount = countVowels(word)
//print(vowelCount) // 1


//맵, 필터, 리듀스 예제 12
//
//주어진 문자열에서 각 알파벳이 몇 번 나오는지 세는 함수를 작성하세요.

//func countAlphabets(_ a: String) -> [Character: Int] {
//    
//    let alphabet = a.filter { $0.isLetter } // 문자열만 필터링
//    
//    return alphabet.reduce(into: [:]) { (key, value) in
//        key[value, default: 0] += 1 } // 문자열이 있으면 + 1
//}
//
//// 예시코드
//let word = "Hello2World!!"
//let alphabetCount = countAlphabets(word)
//print(alphabetCount)  // ["e": 1, "o": 2, "r": 1, "H": 1, "W": 1, "d": 1, "l": 3]





//맵, 필터, 리듀스 예제 15
//
//주어진 문자열에서 모든 소문자를 대문자로 바꾸는 함수를 작성하세요.
//(보너스: 대문자는 소문자로 소문자는 대문자로 시도해 보세요.)

//func uppercase(_ a: String) -> String { // 대문자
//    a.uppercased()
//}
//
//func lowercase(_ a: String) -> String { // 소문자
//    a.lowercased()
//}
//
//// 예시코드
//let word = "swift"
//let uppercasedWord = uppercase(word)
//print(uppercasedWord)       // "SWIFT"


//맵, 필터, 리듀스 예제 16
//
//주어진 문자열에서 모든 공백을 제거하는 함수를 작성하세요.

//func removeSpaces(_ a: String) -> String {
//    a.filter { !$0.isWhitespace }
//}
////
//// 예시코드
//let sentence = "This is a test"
//let noSpaceSentence = removeSpaces(sentence)
//print(noSpaceSentence)      // "Thisisatest"

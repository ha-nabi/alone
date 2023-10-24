//
//  딕셔너리.swift
//  alone
//
//  Created by 강치우 on 10/24/23.
//

import Foundation

//딕셔너리 예제 08
//
//다음과 같은 딕셔너리가 주어졌을 때, 값이 가장 큰 스코어를 찾아서 출력하는 코드를 작성하세요.
//값이 같은 스코어가 여러 개 있으면 아무거나 출력해도 됩니다.


//let scores = ["math": 90, "english": 85, "science": 95]
//
//var maxKey = ""
//var maxValue = 0
//
//for (key, value) in scores {
//    if value > maxValue {
//        maxKey = key
//        maxValue = value
//    }
//}
//
//print(maxKey)


//딕셔너리 예제 09
//
//다음과 같은 딕셔너리가 주어졌을 때, 키와 값을 서로 바꾼 새로운 딕셔너리를 만드는 코드를 작성하세요.
//(단, 기존의 딕셔너리는 변경하지 않는다.)

//let colors = ["red": "#FF0000", "green": "#00FF00", "blue": "#0000FF"]
//
//var revers = [String:String]()
//for (key, value) in colors {
//    revers[value] = key
//    }
//
//print(revers)


//딕셔너리 예제 10
//
//다음과 같은 두 개의 딕셔너리가 주어졌을 때, 두 딕셔너리의 공통된 키의 키와 값을 출력하는 코드를 작성하세요.

//let dict1 = ["a": 1, "b": 2, "c": 3]
//let dict2 = ["b": 2, "c": 4, "d": 5]

//for (key, value) in dict1 {
//    // 키와 값 모두 동일한 경우의 코드
//    if dict2[key] == value {
//        print("\(key):\(value)")
//    }
//}

//for (key, value) in dict1 {
//    // 키가 동일한 경우의 코드
//    if let value2 = dict2[key] {
//        print("\(key):\(value)")
//        print("\(key):\(value2)")
//    }
//}


//딕셔너리 예제 11
//
//다음과 같은 딕셔너리가 주어졌을 때, 값이 짝수인 키와 값을 삭제하는 코드를 작성하세요.

//var even = ["a": 2, "b": 3, "c": 4, "d": 5]
//
//for (key, value) in even {
//    if value % 2 == 0 {
//        even[key] = nil
//    }
//}
//
//print(even)


//딕셔너리 예제 12
//
//다음과 같은 딕셔너리가 주어졌을 때, 키를 알파벳 순서로 정렬하여 출력하는 코드를 작성하세요.


//let countries = ["KR": "South Korea", "US": "United States", "JP": "Japan", "CN": "China"]
//
//let sortedKeys = countries.keys.sorted()
//
//for key in sortedKeys { // 방법 1
//    print(key)
//}
//
//print(sortedKeys) // 방법 2

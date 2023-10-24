//
//  Sets.swift
//  alone
//
//  Created by 강치우 on 10/24/23.
//

import Foundation

//집합 예제 01
//
//두 개의 세트를 입력받아, 그들의 교집합을 반환하는 함수를 작성하세요.
//[ ]

//func intersect(_ set1: Set<Int>, _ set2: Set<Int>) -> Set<Int> {
//    return set1.intersection(set2)
//}
//
//let setA: Set<Int> = [1, 2, 3, 4, 5]
//let setB: Set<Int> = [3, 4, 5, 6, 7]
//let intersection = intersect(setA, setB)
//print(intersection) // [3, 4, 5]


//집합 예제 02
//
//두 개의 세트를 입력받아, 그들의 합집합을 반환하는 함수를 작성하세요.

//func unite(_ set1: Set<String>, _ set2: Set<String>) -> Set<String> {
//    return set1.union(set2)
//}
//
//// 예시코드:
//let setC: Set<String> = ["apple", "banana", "cherry"]
//let setD: Set<String> = ["cherry", "durian", "elderberry"]
//let union = unite(setC, setD)
//print(union) // ["apple", "banana", "cherry", "durian", "elderberry"]


//집합 예제 03
//
//두 개의 세트를 입력받아, 첫 번째 세트에서 두 번째 세트의 원소들을 제외한 차집합을 반환하는 함수를 작성하세요.

//func subtract(_ set1: Set<Double>, _ set2: Set<Double>) -> Set<Double> {
//    return set1.subtracting(set2)
//}
//
//// 예시코드:
//let setE: Set<Double> = [1.0, 2.0, 3.0, 4.0, 5.0]
//let setF: Set<Double> = [2.0, 4.0, 6.0]
//let difference = subtract(setE, setF)
//print(difference) // [1.0, 3.0, 5.0]


//집합 예제 04
//
//두 개의 세트를 입력받아, 그들이 서로소인지 판별하는 함수를 작성하세요.
//(서로소는 공통된 원소가 없는 것을 의미한다.)

//func disjoint(_ set1: Set<Character>, _ set2: Set<Character>) -> Bool {
//    return set1.isDisjoint(with: set2)
//}
//
//// 예시코드:
//let setG: Set<Character> = ["a", "b", "c"]
//let setH: Set<Character> = ["d", "e", "f"]
//let isDisjoint = disjoint(setG, setH)
//print(isDisjoint) // true

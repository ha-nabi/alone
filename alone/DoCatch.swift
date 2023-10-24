//
//  DoCatch.swift
//  alone
//
//  Created by 강치우 on 10/18/23.
//

import Foundation

//에러 핸들링 예제 01
//
//온도 변환 함수
//섭씨 온도를 화씨 온도로 변환하는 함수를 작성하세요.
//단, 섭씨 온도가 -273.15도보다 낮으면 InvalidTemperature 에러를 발생시키세요.

//enum TemperatureError : Error {
//    case invalidTemperature
//}
//
//// 에러 발생
//func celsiusToFahrenheit(_ celcius: Double) throws -> Double {
//    
//    guard celcius >= -273.15 else {
//        throw TemperatureError.invalidTemperature
//    }
//    return (celcius * 9/5) + 32
//}
//
//// 예시:
//do {
//    let fahrenheit = try celsiusToFahrenheit(-300)
//    print(fahrenheit)
//} catch TemperatureError.invalidTemperature {
//    print("Invalid temperature")
//}


//에러 핸들링 예제 02
//
//비밀번호 검증 함수
//사용자가 입력한 비밀번호가 다음 조건을 만족하는지 검증하는 함수를 작성하세요.
//최소 8자 이상
//최소 하나의 대문자, 소문자, 숫자, 특수문자 포함
//조건을 만족하지 않으면 PasswordError 에러를 발생시키세요.

//enum PasswordError: Error {
//    case tooShort, missingUppercase, missingLowercase, missingNumber, missingSymbol
//}
//
//func validatePassword(_ password: String) throws -> String {
//    let symbols = "!@#$%^&*()_+-=[]{}|;:,./<>?"
//    var isMissingUppercase = false
//    var isMissingLowercase = false
//    var isNumber = false
//    var isSymbol = false
//
//    for c in password {
//        if c.isUppercase {
//            isMissingUppercase = true
//        } else if c.isLowercase {
//            isMissingLowercase = true
//        } else if c.isNumber {
//            isNumber = true
//        } else if symbols.contains( c ) {
//            isSymbol = true
//        }
//    }
//
//    //에러
//    guard password.count >= 8 else {
//        throw PasswordError.tooShort
//    }
//    guard isMissingUppercase else {
//        throw PasswordError.missingUppercase
//    }
//    guard isMissingLowercase else {
//        throw PasswordError.missingLowercase
//    }
//    guard isNumber else {
//        throw PasswordError.missingNumber
//    }
//    guard isSymbol else {
//        throw PasswordError.missingSymbol
//    }
//    return password
//}
//
//// 예시:
//do {
//    try validatePassword("abc123")
//} catch let error as PasswordError {
//    switch error {
//    case .tooShort:
//        print("Password is too short")
//    case .missingUppercase:
//        print("Password is missing an uppercase letter")
//    case .missingLowercase:
//        print("Password is missing a lowercase letter")
//    case .missingNumber:
//        print("Password is missing a number")
//    case .missingSymbol:
//        print("Password is missing a symbol")
//    }
//}
// Password is too short
// Password is missing an uppercase letter
// Password is missing a symbol

//
//  main.swift
//  alone
//
//  Created by 강치우 on 10/7/23.

import Foundation

//스터디 문제
//func solution(_ num_list: [Int]) -> Int {
//
//    // 빈 값 변수 생성
//    var Sum1 = 0
//    var Sum2 = 0
//
//    //enumerater 함수를 써서 index 값과 num 값을 같이 줌
//    for (index, num) in num_list.enumerated() {
//
//        //홀수, 짝수 번째 원소 구하고 각각의 값을 sum1 sum2에 더하기
//        if index % 2 == 0 {
//            Sum1 += num
//        } else {
//            Sum2 += num
//        }
//    }
//    //sum1 sum2 중 더 큰값을 리턴
//    return max(Sum1, Sum2)
//}
//
//
//
////함수 예제 1번
//func addNumber(_ num1: Int, _ num2: Int) -> Int {
//
//    var sum = num1 + num2
//    return sum
//}
//
//print(addNumber(3, 4))
//
//
//
////함수 예제 2번
//func largerNumbers(_ num1: Int, _ num2: Int ) -> Int {
//
//    var sum = num1 + num2
//
//    if num1 > num2 {
//        return num1
//    }
//    if num2 > num1 {
//        return num2
//    } else {
//        return 0
//    }
//}
//
//print("1번째 수:", terminator: " ")
//let num1 = Int(readLine()!)!
//
//print("2번째 수:", terminator: " ")
//let num2 = Int(readLine()!)!
//
//print("큰 수 확인:", largerNumbers(num1, num2))
//
////함수 예제 3
//
//func close10(_ num1: Int, _ num2: Int) -> Int {
//
//    if num1 == num2 {
//        return 0
//    }
//    return 10 - num1 > 10 - num2 ? num2 : num1
//}
//
//print("1번째 수:", terminator: " ")
//let num1 = Int(readLine()!)!
//
//print("2번째 수:", terminator: " ")
//let num2 = Int(readLine()!)!
//
//print("10에 가까운 수:", close10(num1, num2))
//
////함수예제 4번
//
//func powerN(_ base: Int, _ number: Int) -> Int {
//    var result = base
//
//    for _ in 1..<number {
//        result *= base
//    }
//    return result
//}
//
//print("1번째 수:", terminator: " ")
//let base = Int(readLine()!)!
//
//print("2번째 수:", terminator: " ")
//let number = Int(readLine()!)!
//
//print("결과 확인:", powerN(base, number))
//
//
//
////함수 예제 5
//
//func getAbsoluteValue(_ num1: Int, _ num2: Int) -> Int {
//    return num1 > num2 ? num1 - num2 : num2 - num1
//}
//
//print("1번째 수:", terminator: " ")
//let num1 = Int(readLine()!)!
//
//print("2번째 수:", terminator: " ")
//let num2 = Int(readLine()!)!
//
//print("결과 확인:", getAbsoluteValue(num1, num2))
//
//
////함수 예제 6
//
//func isDivide(_ num1: Int, _ num2: Int) -> Bool {
//
//    if num1 % num2 == 0 {
//        return true
//    } else {
//        return false
//    }
//}
//
//print("1번째 수:", terminator: " ")
//let num1 = Int(readLine()!)!
//
//print("2번째 수:", terminator: " ")
//let num2 = Int(readLine()!)!
//
//print("결과 확인:", isDivide(num1, num2))
//
//
////함수 예제 7
//
//func getDivisor(_ num: Int) {
//
//    print("\(num)의 약수:", terminator: " ")
//
//    for i in 1...num {
//        if num % i == 0 {
//            print(i, terminator: " ")
//        }
//    }
//    print()
//}
//
//getDivisor(24)
//
//
////함수 예제 8
//
//func getSumOfDivisors(_ num: Int) -> Int {
//
//    var sum = 0
//
//    print("\(num)의 약수의 합:", terminator: " ")
//    for i in 1...num {
//        if num % i == 0 {
//            sum += i
//        }
//    }
//    return sum
//}
//
//print(getSumOfDivisors(16))
//
//func getPerfectNumber (_ startValue : Int,_ endValue : Int) -> String{
//
//    var result: String = ""
//
//    for i in stride(from: startValue, through: endValue, by: 1){
//        var plus: Int = 0
//        for j in stride(from: 1, through: i-1, by: 1){
//
//            i % j == 0 ? plus += j : nil
//        }
//        //합이 약수와 같다면.
//        plus == i ? result += "\(String(i)) " : nil
//    }
//    return String(result)
//
//}
//var startValue: Int = 2
//var endValue: Int = 1000
//print("\(startValue)~\(endValue)까지의 완전수: \(getPerfectNumber(startValue,endValue))")
//
//
//func getPerfectNumber(_ num1: Int, _ num2: Int) -> [Int] {
//
//    var result: [Int] = []
//
//    for i in num1...num2 {
//        var plus = 0
//        for j in 1...i-1 {
//            i % j == 0 ? plus += j : nil
//        }
//        if plus == i {
//            result.append(i)
//        }
//    }
//    return result
//}
//
//print("2~1000까지의 완전수:", getPerfectNumber(2, 1000))
//
//func solution(_ num_list:[Int], _ n:Int) -> [Int] {
//
//    var arr: [Int] = []
//
//    for i in n..<num_list.count {
//        arr.append(num_list[i])
//    }
//    for i in 0...n {
//        arr.append(num_list[i])
//    }
//    return arr
//}
//
//print(solution([5,2,1,7,5], 3))
//
//func solution(_ myStr:String) -> [String] {
//
//    var result: [String] = []
//    var resultEmpty = ""
//
//    for char in myStr {
//        if char == "a" || char == "b" || char == "c" {
//            if !resultEmpty.isEmpty {
//                result.append(resultEmpty)
//                resultEmpty = ""
//            }
//        } else {
//            resultEmpty.append(char)
//        }
//    }
//    if !resultEmpty.isEmpty {
//        result.append(resultEmpty)
//    }
//    if result.isEmpty {
//        return ["EMPTY"]
//    }
//    return result
//}
//print(solution("baconlettucetomato"))
//
//protocol MessageBuilder {
//    var name: String { get }
//    func buildMessage() -> String
//}
//
//class MyClass: MessageBuilder {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func buildMessage() -> String {
//         return "Hello" + name
//    }
//
//}
//
//struct SampleStruct {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func buildHelloMsg() {
//        "Hello" + name
//    }
//}
//
//let myStruct1 = SampleStruct(name: "Kang")
//var myStruct2 = myStruct1
//myStruct2.name = "Kim"
//print(myStruct1.name)
//print(myStruct2.name)
//
//
//struct SampleClass {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func buildHelloMsg() {
//        "Hello" + name
//    }
//}
//
//let myClass1 = SampleClass(name: "Kang")
//var myClass2 = myClass1
//myStruct2.name = "Kim"
//print(myClass1.name)
//print(myClass2.name)
//
//
//@propertyWrapper
//struct FixCase {
//    private(set) var value: String = ""
//
//    var wrappedValue: String {
//        get { value }
//        set { value = newValue.uppercased() }
//    }
//
//    init(wrappedValue initiaValue: String) {
//        self.wrappedValue = initiaValue
//    }
//}
//
//struct Address {
//    private var cityname = ""
//
//    var city: String {
//        get { cityname}
//        set { cityname = newValue.uppercased() }
//    }
//}
//
//var address = Address()
//address.city = "London"
//print(address.city)
//
//@propertyWrapper
//struct FixCase {
//    private(set) var value: String = ""
//
//    var wrappedValue: String {
//        get { value }
//        set { value = newValue.uppercased() }
//    }
//
//    init(wrappedValue initiaValue: String) {
//        self.wrappedValue = initiaValue
//    }
//}
//
//struct Contact {
//    @FixCase var name: String
//    @FixCase var city: String
//}
//
//var contract = Contact(name: "Kang", city: "Seoul")
//print(contract.name, contract.city)
//
//
//func solution(_ num_list:[Int]) -> Int {
//
//    var num = 0
//    var num1 = 1
//
//    for i in 0..<num_list.count {
//        if 11 <= num_list.count {
//            num += num_list[i]
//
//        } else if 10 >= num_list.count {
//            num1 *= num_list[i]
//        }
//    }
//    return 11 <= num_list.count ? num : num1
//}
//
//print(solution([1,2,3,4,5,6,7,8,9,10,11]))
//
//
//func solution1(_ arr: [Int]) -> Int {
//
//    if arr.count > 10 {
//        return arr.reduce(into: 0) { partialResult, val in
//            partialResult += val
//        }
//    } else {
//        return arr.reduce(into: 1) { partialResult, val in
//            partialResult *= val
//        }
//    }
//}
//
//
//func unwrap(_ value: Int?) -> Void {
//    print(value) // 옵셔널 = nil 값이 있을 수도 있고 없을 수도 있음 !는 100% 확률로 들어오면 쓰셈(걍 안쓰는거 추천)
// // 옵셔널 : nil 일 수 있는 자격이 있는 값
//    guard let value = value else { return }
//    print(value) // 언랩된 값
//}
//
//let integerVal: Int?
//let integerVal2: Int
//
//integerVal = nil
//integerVal2 = nil
//// 402번은 에러야 Int 기 때문에 nil 을 못가지지 근데 401은 Int? 기 때문에 nil 이 되지 ㅇㅋ? 저게 옵셔널타입과 일반타입의 차이야 딱 저거야
//// nil 이 되고안되고
//// 함수 밖에선 if let 함수 안에선 guard let이라고 생각하자 일단
//// 가드 렛 기본 구문 guard let foo = var else { return }
//
//
//func unwrap(value: Int?) -> Void {
//    guard let value = value else { return }
//    print(value)
//}
//unwrap(value: 6)
//
//
//
//
//let integerVal: Int? = nil
//
//if let val = integerVal {
//    print(val)
//} else {
//    print("nil")
//}

//let n = 10
//var result = 0
//
//for i in 1...n {
//    if i % 2 == 0 {
//        result += i
//        print(result)
//    }
//}

//print(result)


//func solution(_ numbers:[Int]) -> Double {
//
//    var sum: Double = 0.0
//
//    for i in 0..<numbers.count {
//        sum += Double(numbers[i])
//        print(sum)
//    }
//    return sum / Double(numbers.count)
//}

//print(solution([1,2,3,4,5,6]))


//배열 자르기
//
//정수 배열 numbers와 정수 num1, num2가 매개변수로 주어질 때, numbers의 num1번 째 인덱스부터 num2번째 인덱스까지 자른 정수 배열을 return 하도록 solution 함수를 완성해보세요.

//func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
//    return (num1...num2).map { numbers[$0] }
//}
//
//
//
////배열 원소의 길이
////
////문자열 배열 strlist가 매개변수로 주어집니다. strlist 각 원소의 길이를 담은 배열을 retrun하도록 solution 함수를 완성해주세요.
//
//func solution(_ strlist:[String]) -> [Int] {
//    return strlist.map { $0.count }
//}


/*:
 # 클래스 (class) 소개 p.85
 
 클래스/구조체 모두 객체지향 프로그래밍의 기초를 형성하며
 
 데이터와 기능을 재사용할 수 있는 객체로 캡슐화하는 방법을 제공
 (독립적인 기능 모듈)
 
 Switch Class
 ```
 class [클래스 이름]: [부모 클래스|프로토콜] {
 // 프로퍼티
 // 인스턴스 메서드
 // 타입 메서드
 }
 */

// 값 타입과 참조 타입 p.108~111

// 프로퍼티 또는 인스턴스 변수
//class BankAccount {
//    var accountBalance: Float = 0
//    var accountNumber: Int = 0
//    let fees: Float = 25.00

// 저장 프로퍼티와 연산 프로퍼티
// 연산 프로퍼티는 프로퍼티에 값을 설정하거나 가져오는 시점에서 어떤 계산이나 로직에 따라 처리된 값
// 게터 getter , 세터 setter 메서드를 생성 p.92
//    var blanceLessFees: Float {
//        get {  return accountBalance - fees }
//        set(newBalance) {
//            accountBalance = newBalance - fees
//        }
//    }

// 클래스 인스턴스 초기화
//    init() {
//    }
//
//    init(number: Int, balance: Float) {
//        self.accountNumber = number
//        self.accountBalance = balance
//    }
//
//    // 인스턴스 메서드
//    // 특정 타입의 인스턴스에서 호출하는 메서드
//    func displayBalance() {
//        print("Number \(accountNumber)")
//        print("Current balance is \(accountBalance)")
//    }
//
//    // 타입 메서드(Type 메서드)
//    // 타입 자체에서 호출되는 메서드
//    class func getMaxBlance() -> Float {
//        return 100000.00
//    }
//}

//let account1 = BankAccount(number: 1, balance: 100.0)
//account1.displayBalance()
//account1.accountNumber
//account1.blanceLessFees


//let account2 = BankAccount(number: 2, balance: 500.0)
//account2.displayBalance()
//account2.accountNumber


//BankAccount.getMaxBlance()

/*:
 # 상속 소개 p.100
 
 클래스에 정의하고 어떤 특성을 그 클래스를 상속받은 다른 클래스에서 생성할 수 있게 하는 것
 부모클래스 또는 상위클래스 => (상속된 클래스) 자식클래스 또는 하위클래스
 하위 클래스 (Subclassing) : 기존 클래스를 기반으로 새로운 클래스를 만드는 작업
 베이스 클래스 또는 루트 클래스 : 계층구조의 최상위에 있는 클래스
 
 - 클래스의 상속 단일 상속
 
 */

//class SavingsAccount: BankAccount {
//    var interesRate: Float = 0.0
//
//    // 하위 클래스 초기화
//    init(number: Int, blance: Float) {
//        super.init(number: number, balance: blance)
//    }
//
//    init(number: Int, blance: Float, rate: Float) {
//        interesRate = rate
//        //        accountNumber = number
//        //        accountBalance = blance
//        // 상위 클래스의 초기화를 이용할 수 있음 p.104
//        // 초기화 과정에서 발생할 수 있는 잠재적 문제를 피하기 위해(예, 초기화 순서가 필요한 경우)
//        // 상위 클래스의 init 메서드는 항상 하위 클래스의 초기화 작업이 완료된 후 호출
//        super.init(number: number, balance: blance)
//    }
//
//    func calculateInterest() -> Float {
//        return interesRate * accountBalance
//    }

// 상속받은 메서드 오버라이딩 p.103
// 메서드 재정의
//    override func displayBalance() {
//        super.displayBalance()  // super 상위 클래스를 가리킴 vs self
//        print("Prevailing interest rate is \(interesRate)")
//    }
//}

//let savings1 = SavingsAccount(number: 12311, blance: 600.00, rate: 0.07)
//savings1.calculateInterest()
//savings1.displayBalance()



/*:
 # 클래스 익스텐션 class extension 소개 p.105
 
 클래스에 기능을 추가하는 방법중 하나
 ```
 extension 클래스/구조체 이름 {
 // 새로운 기능 코드
 }
 ```
 */
//extension Double {
//    var squared: Double {
//        return self * self
//    }
//
//    var cubed: Double {
//        return self * self * self
//    }
//}
//
//let myValue: Double = 3.0
//print( myValue.squared )


// 상속 예제 5번

//class Animal {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    func makeSound() { }
//}
//
//class Cat: Animal {
//    override func makeSound() {
//        print("\(super.name)(가) 야옹")
//    }
//}
//
//class Dog: Animal {
//    override func makeSound() {
//        print("\(super.name)(가) 멍멍")
//    }
//}
//
////예시
//let cat: Animal = Cat(name: "나비")
//let dog: Animal = Dog(name: "바둑")
//cat.makeSound() // 야옹
//dog.makeSound() // 멍멍

//상속 예제 6

//사람 클래스를 정의하고, 학생과 선생님 클래스를 사람 클래스로부터 상속받아서 구현하세요.
//사람 클래스는 이름과 나이를 속성으로 가지고 있습니다.
//학생 클래스는 학년과 반을, 선생님 클래스는 과목을 추가로 속성으로 가지고 있습니다.
//학생과 선생님 클래스는 각각 자기소개를 하는 메서드를 오버라이딩해야 합니다.

//class Person {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    func introduce() {
//        print("저는 \(name)이고, \(age)살 입니다.")
//    }
//}
//
//class Student: Person {
//    var grade: Int
//    var classnumber: Int
//
//    init(name: String, age: Int, grade: Int, classnumber: Int) {
//        self.grade = grade
//        self.classnumber = classnumber
//        super.init(name: name, age: age)
//    }
//
//    override func introduce() {
//        print("저는 \(name)이고, \(age)살 입니다. 저는 \(grade)학년 \(classnumber)반 입니다.")
//    }
//}
//
//class Teacher: Person {
//    var subject: String
//
//    init(name: String, age: Int, subject: String) {
//        self.subject = subject
//        super.init(name: name, age: age)
//    }
//
//    override func introduce() {
//        print("저는 \(name)이고, \(age)살 입니다. 저는 \(subject) 선생님 입니다.")
//    }
//}

// 예시
//let student: Person = Student(name: "민수", age: 15, grade: 2, classnumber: 3)
//let teacher: Person = Teacher(name: "영희", age: 25, subject: "수학")
//student.introduce() // 저는 민수이고, 15살입니다. 저는 2학년 3반입니다.
//teacher.introduce() // 저는 영희이고, 25살입니다. 저는 수학 선생님입니다.


//상속 예제 07
//
//도형 클래스를 정의하고, 삼각형과 사각형 클래스를 도형 클래스로부터 상속받아서 구현하세요.
//도형 클래스는 색깔을 속성으로 가지고 있습니다. 삼각형 클래스는 밑변과 높이를, 사각형 클래스는 가로와 세로를 추가로 속성으로 가지고 있습니다.
//삼각형과 사각형 클래스는 각각 넓이를 구하는 메서드를 오버라이딩해야 합니다.

//class Shape {
//    var color: String
//
//    init(color: String) {
//        self.color = color
//    }
//
//    func area() -> Double {
//        return 0.0
//    }
//}
//
//class Triangle: Shape {
//    var base: Double
//    var height: Double
//
//    init(color: String, base: Double, height: Double) {
//        self.base = base
//        self.height = height
//        super.init(color: color)
//    }
//
//    override func area() -> Double {
//        return base * height / 2
//    }
//}
//
//class Rectangle: Shape {
//    var width: Double
//    var length: Double
//
//    init(color: String, width: Double, length: Double) {
//        self.width = width
//        self.length = length
//        super.init(color: color)
//    }
//
//    override func area() -> Double {
//        return width * length
//    }
//}

// 예시
//let triangle = Triangle(color: "red", base: 3, height: 4)
//let rectangle = Rectangle(color: "blue", width: 5, length: 6)
//print(triangle.area()) // 6.0
//print(rectangle.area()) // 30.0


//상속 예제 14
//
//차량 클래스를 정의하고, 자동차와 오토바이 클래스를 차량 클래스로부터 상속받아서 구현하세요.
//차량 클래스는 모델과 색깔을 속성으로 가지고 있습니다.
//자동차 클래스는 문의 개수를, 오토바이 클래스는 헬멧의 유무를 추가로 속성으로 가지고 있습니다.
//자동차와 오토바이 클래스는 각각 운전하는 메서드를 오버라이딩해야 합니다.

//class Vehicle {
//    var model: String
//    var color: String
//
//    init(model: String, color: String) {
//        self.model = model
//        self.color = color
//    }
//
//    func drive() {
//        print("\(model) \(color)")
//    }
//}
//
//class Car: Vehicle {
//    var doorNumber: Int
//
//    init(model: String, color: String, doorNumber: Int) {
//        self.doorNumber = doorNumber
//        super.init(model: model, color: color)
//    }
//
//    override func drive() {
//        super.drive()
//        print("자동차가 \(doorNumber)개의 문을 열고 달립니다.")
//    }
//}
//
//class Motorcycle: Vehicle {
//    var helmet: Bool
//
//    init(model: String, color: String, helmet: Bool) {
//        self.helmet = true
//        super.init(model: model, color: color)
//    }
//
//    override func drive() {
//        super.drive()
//        print("오토바이가 헬멧을 \(helmet ? "쓰" : "안쓰")고 달립니다.")
//    }
//}
// 예시
//let car: Vehicle = Car(model: "소나타", color: "검정", doorNumber: 4)
//let motorcycle: Vehicle = Motorcycle(model: "니노", color: "노랑", helmet: true)
//car.drive() // 소나타 검정 자동차가 4개의 문을 열고 달립니다.
//motorcycle.drive() // 니노 노랑 오토바이가 헬멧을 쓰고 달립니다.


//상속 예제 15
//
//음식 클래스를 정의하고, 피자와 파스타 클래스를 음식 클래스로부터 상속받아서 구현하세요.
//음식 클래스는 이름과 가격을 속성으로 가지고 있습니다.
//피자 클래스는 토핑을, 파스타 클래스는 소스를 추가로 속성으로 가지고 있습니다.
//피자와 파스타 클래스는 각각 주문하는 메서드를 오버라이딩해야 합니다.

//class Food {
//    var name: String
//    var price: Int
//
//    init(name: String, price: Int) {
//        self.name = name
//        self.price = price
//    }
//
//    func order() {
//        print("\(name)")
//    }
//}

//class Pizza: Food {
//    var topping: String
//
//    init(name: String, price: Int, topping: String) {
//        self.topping = topping
//        super.init(name: name, price: price)
//    }
//
//    override func order() {
//        super.order()
//        print("피자에 \(topping)피자를 선택였습니다. 가격은 \(price)원 입니다.")
//    }
//}
//
//class Pasta: Food {
//    var sauce: String
//
//    init(name: String, price: Int, sauce: String) {
//        self.sauce = sauce
//        super.init(name: name, price: price)
//    }
//
//    override func order() {
//        super.order()
//        print("파스타에 \(sauce) 소스를 선택였습니다. 가격은 \(price)원 입니다.")
//    }
//}
// 예시:
//let cheesePizza: Food = Pizza(name: "치즈", price: 15000, topping: "치즈")
//let carbonara: Food = Pasta(name: "카르보나라", price: 12000, sauce: "크림")
//cheesePizza.order() // 치즈 피자에 치즈피자를 주문하였습니다. 가격은 15000원입니다.
//carbonara.order()   // 카르보나라 파스타에 크림 소스를 선택하였습니다. 가격은 12000원입니다.


//상속 예제 16
//
//동물 클래스를 정의하고, 고양이와 개와 오리 클래스를 동물 클래스로부터 상속받아서 구현하세요.
//동물 클래스는 이름과 나이를 속성으로 가지고 있습니다.
//고양이와 개와 오리 클래스는 각각 울음소리를 추가로 속성으로 가지고 있습니다.
//고양이와 개와 오리 클래스는 각각 울다라는 메서드를 오버라이딩해야 합니다.


//class Animal {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    func cry() {
//        print("\(name)이(가)")
//    }
//}
//
//class Cat: Animal {
//    var meow: String
//
//    init(name: String, age: Int, meow: String) {
//        self.meow = meow
//        super.init(name: name, age: age)
//    }
//
//    override func cry() {
//        super.cry()
//        print("\(meow)하고 울어요.")
//    }
//}
//
//class Dog: Animal {
//    var bark: String
//
//    init(name: String, age: Int, bark: String) {
//        self.bark = bark
//        super.init(name: name, age: age)
//    }
//
//    override func cry() {
//        super.cry()
//        print("\(bark)하고 짖어요.")
//    }
//}
//
//class Duck: Animal {
//    var bark: String
//
//    init(name: String, age: Int, bark: String) {
//        self.bark = bark
//        super.init(name: name, age: age)
//    }
//
//    override func cry() {
//        super.cry()
//        print("\(bark)하고 짖어요.")
//    }
//}
//// 예시:
//let kitty = Cat(name: "해린", age: 3, meow: "야옹")
//let puppy = Dog(name: "민지", age: 2, bark: "멍멍")
//let duck = Duck(name: "다니엘", age: 2, bark: "꽥꽥")
//
//let animals: [Animal] = [kitty, puppy, duck]
//animals[0].cry()    // 나비이(가) 야옹라고 울어요.
//animals[1].cry()    // 초코이(가) 멍멍라고 짖어요.
//animals[2].cry()    // 멋쟁이(가) 꽥꽥라고 짖어요.
//for ani in animals { ani.cry() }


/*:
 # 열거형 (Enumerations) 소개 p.111
 
 미리 정의된 값 집합으로 구성된 사용자 지정 데이터 유형
 
 (연관된 항목들을 묶어서 표현할 수 있는 타입)
 
 열거형은 일반적으로 switch 문을 사용할 때와 같이
 
 코드 내에서 결정을 내릴 때 사용
 ```
 enum 열거형이름 {
 case ..
 case ..
 case ..
 }
 ```
 */

// cold(centigrade: Int) 열거형 내의 개별 케이스에 연결된 값
//enum Temperature {
//    case hot, warm, cold(centigrade: Int)
//}
//
//func displayTempInfo(temp: Temperature) {
//    switch temp {
//    case Temperature.hot:
//        print("It is hot.")
//    case Temperature.warm:
//        print("It is warm.")
//    case Temperature.cold(let centigrade) where centigrade <= 0:
//        print("Ice warning: \(centigrade) degrees.")
//    case Temperature.cold:
//        print("It is cold.")
//    }
//}

// 열거형 내의 개별 케이스에 연결된 값을 사용
//displayTempInfo(temp: Temperature.cold(centigrade: -10))
//print(Temperature.hot)

//var temp: Temperature = .hot
//temp = .cold(centigrade: -10)


//// rawValue 값 지정과 사용
//enum AnimalEnum: Int {
//    case dog = 1
//    case cat
//    case duck
//}
//
//AnimalEnum.dog.rawValue == 1



//열거형 예제 01
//
//열거형을 사용하여 카드의 무늬와 숫자를 나타내는 타입을 정의하고,
//카드 두 장을 비교하여 같은 무늬인지, 같은 숫자인지, 모두 같은지 또는 모두 다른지 출력하는 함수를 작성하세요.

//enum Suit {
//    case spade, heart, diamond, club
//}
//
//enum Rank {
//    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
//}
//
//struct Card {
//    var suit: Suit
//    var rank: Rank
//}
//
//func compareCards(card1: Card, card2: Card) {
//    if card1.suit == card2.suit && card1.rank == card2.rank {
//        print("두 카드는 모두 같습니다.")
//    } else if card1.suit == card2.suit {
//        print("두 카드는 같은 무늬입니다.")
//    } else if card1.rank == card2.rank {
//        print("두 카드는 같은 숫자입니다.")
//    } else {
//        print("두 카드는 모두 다릅니다.")
//    }
//}

// 예시 1:
// 카드 두 장을 생성합니다.
//let card1 = Card(suit: .spade, rank: .ace)
//let card2 = Card(suit: .heart, rank: .king)

// 카드 두 장을 비교합니다.
//compareCards(card1: card1, card2: card2)  // 두 카드는 모두 다릅니다.

/** 비교 결과 4가지 경우
 "두 카드는 모두 같습니다."
 "두 카드는 같은 무늬입니다."
 "두 카드는 같은 숫자입니다."
 "두 카드는 모두 다릅니다."
 */

//열거형 예제 02
//
//열거형을 사용하여 동물의 종류와 이름을 나타내는 타입을 정의하고,
//동물의 배열을 만들어서 반복문으로 각 동물의 종류와 이름을 출력하는 함수를 작성하세요.

//enum Animal {
//    case dog(name: String)
//    case cat(name: String)
//    case bird(name: String)
//}
//
//func checkAnimal(animals: [Animal]) { // 타입 형태 일치 시키기
//    for i in animals {
//        switch i {
//        case .dog(let name):
//            print("이 동물은 개이고 이름은 \(name)입니다.")
//        case .cat(let name):
//            print("이 동물은 고양이이고 이름은 \(name)입니다.")
//        case .bird(let name):
//            print("이 동물은 새이고 이름은 \(name)입니다.")
//        }
//    }
//}
// 예시:
//let animals = [Animal.dog(name: "바둑이"), Animal.cat(name: "나비"), Animal.bird(name: "짹짹이")]
//checkAnimal(animals: animals)
// 출력결과
//이 동물은 개이고 이름은 바둑이입니다.
//이 동물은 고양이이고 이름은 나비입니다.
//이 동물은 새이고 이름은 짹짹이입니다.


//열거형 예제 05
//
//열거형을 사용하여 음료의 종류와 가격을 나타내는 타입을 정의하고,
//음료의 배열을 만들어서 반복문으로 각 음료의 종류와 가격을 출력하는 함수를 작성하세요.


//enum Beverage {
//    case coffee(price: Int)
//    case tea(price: Int)
//    case juice(price: Int)
//}
//
//func printTypeAndPrice(beverages: [Beverage])  {
//
//    for beverage in beverages {
//        switch beverage {
//        case .coffee(let price):
//            print("이 음료는 커피이고 가격은 \(price)원입니다.")
//        case .tea(let price):
//            print("이 음료는 차이고 가격은 \(price)원입니다.")
//        case .juice(let price):
//            print("이 음료는 주스이고 가격은 \(price)원입니다.")
//        }
//    }
//
//}

//열거형 예제 03
//
//열거형을 사용하여 계절을 나타내는 타입을 정의하고,
//현재 날짜에 따라서 어떤 계절인지 출력하는 함수를 작성하세요.
//(날짜는 임의로 지정해도 됩니다.)

//enum Season {
//    case spring, summer, autumn, winter
//}
//
//func getSeason(date: (month: Int, day: Int)) -> Season {
//
//    switch date.month {
//    case 3...5:
//        return .spring
//    case 6...8:
//        return .summer
//    case 9...11:
//        return .autumn
//    default:
//        return .winter
//    }
//}

// 예시:
//let today = (month: 10, day: 17)
//let season = getSeason(date: today)

//print("오늘은 \(season)입니다.")  // 오늘은 autumn입니다.
//print("오늘은 \( getSeason(date: (month: 6, day: 17)) )입니다.")      // 오늘은 summer입니다.
//print("오늘은 \( getSeason(date: (month: 12, day: 15)) )입니다.")     // 오늘은 winter입니다.
//print("오늘은 \( getSeason(date: (month: 3, day: 1)) )입니다.")       // 오늘은 spring입니다.


//열거형 예제 04
//
//열거형을 사용하여 산술 연산자를 나타내는 타입을 정의하고,
//두 개의 정수와 산술 연산자를 매개변수로 받아서 해당 연산을 수행하고 결과를 반환하는 함수를 작성하세요.

//enum ArithmeticOperator {
//    case add, subtract, multiply, divide
//}
//
//func calculate(num1: Int, num2: Int, op: ArithmeticOperator) -> Int {
//
//    switch op {
//    case .add:
//        num1 + num2
//    case.subtract:
//        num1 - num2
//    case .multiply:
//        num1 * num2
//    default:
//        num1 / num2
//    }
//}


// 예시:
//let result = calculate(num1: 10, num2: 5, op: .divide)

//print("결과는 \(result)입니다.")      //결과는 2입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .add) )입니다.")        //결과는 15입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .subtract) )입니다.")   //결과는 5입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .multiply) )입니다.")   //결과는 50입니다.



//열거형 예제 05
//
//열거형을 사용하여 음료의 종류와 가격을 나타내는 타입을 정의하고,
//음료의 배열을 만들어서 반복문으로 각 음료의 종류와 가격을 출력하는 함수를 작성하세요.


//enum Beverage {
//    case coffee(price: Int)
//    case tea(price: Int)
//    case juice(price: Int)
//}
//
//func printTypeAndPrice(beverages: [Beverage])  {
//
//    for beverage in beverages {
//        switch beverage {
//        case .coffee(let price):
//            print("이 음료는 커피이고 가격은 \(price)원입니다.")
//        case .tea(let price):
//            print("이 음료는 차이고 가격은 \(price)원입니다.")
//        case .juice(let price):
//            print("이 음료는 주스이고 가격은 \(price)원입니다.")
//        }
//    }
//
//}


// 예시:
//let beverages = [Beverage.coffee(price: 3000), Beverage.tea(price: 2000), Beverage.juice(price: 2500)]
//printTypeAndPrice(beverages: beverages)
// 출력결과
//이 음료는 커피이고 가격은 3000원입니다.
//이 음료는 차이고 가격은 2000원입니다.
//이 음료는 주스이고 가격은 2500원입니다.




//열거형 예제 06
//
//열거형을 사용하여 방향을 나타내는 타입을 정의하고,
//현재 위치와 방향을 매개변수로 받아서 다음 위치를 반환하는 함수를 작성하세요.
//(위치는 x, y 좌표로 표현하고, 방향은 상, 하, 좌, 우로 표현합니다.)


//enum Direction {
//    case right
//    case left
//    case up
//    case down
//}
//
//
//func move(position: (x: Int, y:Int), direction: Direction) -> (x: Int,y: Int){
//
//    switch direction {
//
//    case .right: (position.x + 1, position.y)
//
//    case .left: (position.x - 1, position.y)
//
//    case .up: (position.x, position.y + 1)
//
//    case .down: (position.x, position.y - 1)
//
//    }
//}

// 예시:
//let currentPosition = (x: 0, y: 0)
//
//var nextPosition = move(position: currentPosition, direction: .right)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (1, 0)입니다.
//
//nextPosition = move(position: currentPosition, direction: .left)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (-1, 0)입니다.
//
//nextPosition = move(position: currentPosition, direction: .up)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, 1)입니다.
//
//nextPosition = move(position: currentPosition, direction: .down)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, -1)입니다.

//열거형 예제 07
//
//열거형을 사용하여 주사위의 면을 나타내는 타입을 정의하고,
//랜덤한 주사위의 면을 반환하는 함수를 작성하세요.

//enum Dice {
//    case one, two, three, four, five, six
//}
//
//func rollDice() -> Dice {
//    let random = Int.random(in: 1...6)
//    switch random {
//    case 1:
//        return .one
//    case 2:
//        return .two
//    case 3:
//        return . three
//    case 4:
//        return . four
//    case 5:
//        return . five
//    case 6:
//        return . six
//    default: return .one
//    }
//}
// 예시:
//let dice = rollDice()
//
//print("주사위의 면은 \(dice)입니다.")   // 주사위의 면은 two입니다.

// 실행할 때마다 다음 6가지 경우중 랜덤하게 출력
// 주사위의 면은 one입니다.
// 주사위의 면은 three입니다.
// 주사위의 면은 four입니다.
// 주사위의 면은 five입니다.
// 주사위의 면은 six입니다.


//열거형 예제 08
//
//열거형을 사용하여 색상을 나타내는 타입을 정의하고,
//색상의 배열을 만들어서 반복문으로 각 색상의 이름과 RGB 값을 출력하는 함수를 작성하세요.

//enum Color {
//    case red(r: Int, g: Int, b: Int)
//    case green(r: Int, g: Int, b: Int)
//    case blue(r: Int, g: Int, b: Int)
//}
//
//func printColors(colors: [Color]) {
//    for color in colors {
//        switch color {
//        case .red(let r, let g, let b):
//            print("이 색상은 빨강이고 RGB 값은 (\(r), \(g), \(b)입니다.")
//        case .green(let r, let g, let b):
//            print("이 색상은 빨강이고 RGB 값은 (\(r), \(g), \(b)입니다.")
//        case .blue(let r, let g, let b):
//            print("이 색상은 빨강이고 RGB 값은 (\(r), \(g), \(b)입니다.")
//        }
//    }
//}


// 예시:
//let colors = [Color.red(r: 255, g: 0, b: 0), Color.green(r: 0, g: 255, b: 0), Color.blue(r: 0, g: 0, b: 255)]
//printColors(colors: colors)
// 출력결과
//이 색상은 빨강이고 RGB 값은 (255, 0, 0)입니다.
//이 색상은 초록이고 RGB 값은 (0, 255, 0)입니다.
//이 색상은 파랑이고 RGB 값은 (0, 0, 255)입니다.


//에러 핸들링 예제 03
//
//ATM 기계 클래스
//ATM 기계를 나타내는 클래스를 작성하세요.
//다음 속성과 메서드를 구현하세요.
//balance: 잔액을 나타내는 Double 타입의 속성. 초기값은 0이다.
//deposit(amount: Double): 입금하는 메서드.
//amount가 0보다 크면 잔액에 더하고 true를 반환한다.
//그렇지 않으면 false를 반환한다.
//withdraw(amount: Double) throws -> Double: 출금하는 메서드.
//amount가 0보다 크고 잔액보다 작거나 같으면 잔액에서 빼고 amount를 반환한다.
//amount가 0보다 작으면 NegativeAmount 에러를 발생시킨다.
//amount가 잔액보다 크면 InsufficientBalance 에러를 발생시킨다.



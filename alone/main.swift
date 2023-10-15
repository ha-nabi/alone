//
//  main.swift
//  alone
//
//  Created by 강치우 on 10/7/23.


//스터디 문제
func solution(_ num_list: [Int]) -> Int {

    // 빈 값 변수 생성
    var Sum1 = 0
    var Sum2 = 0

    //enumerater 함수를 써서 index 값과 num 값을 같이 줌
    for (index, num) in num_list.enumerated() {

        //홀수, 짝수 번째 원소 구하고 각각의 값을 sum1 sum2에 더하기
        if index % 2 == 0 {
            Sum1 += num
        } else {
            Sum2 += num
        }
    }
    //sum1 sum2 중 더 큰값을 리턴
    return max(Sum1, Sum2)
}



//함수 예제 1번
func addNumber(_ num1: Int, _ num2: Int) -> Int {

    var sum = num1 + num2
    return sum
}

print(addNumber(3, 4))



//함수 예제 2번
func largerNumbers(_ num1: Int, _ num2: Int ) -> Int {

    var sum = num1 + num2

    if num1 > num2 {
        return num1
    }
    if num2 > num1 {
        return num2
    } else {
        return 0
    }
}

print("1번째 수:", terminator: " ")
let num1 = Int(readLine()!)!

print("2번째 수:", terminator: " ")
let num2 = Int(readLine()!)!

print("큰 수 확인:", largerNumbers(num1, num2))

//함수 예제 3

func close10(_ num1: Int, _ num2: Int) -> Int {

    if num1 == num2 {
        return 0
    }
    return 10 - num1 > 10 - num2 ? num2 : num1
}

print("1번째 수:", terminator: " ")
let num1 = Int(readLine()!)!

print("2번째 수:", terminator: " ")
let num2 = Int(readLine()!)!

print("10에 가까운 수:", close10(num1, num2))

//함수예제 4번

func powerN(_ base: Int, _ number: Int) -> Int {
    var result = base

    for _ in 1..<number {
        result *= base
    }
    return result
}

print("1번째 수:", terminator: " ")
let base = Int(readLine()!)!

print("2번째 수:", terminator: " ")
let number = Int(readLine()!)!

print("결과 확인:", powerN(base, number))



//함수 예제 5

func getAbsoluteValue(_ num1: Int, _ num2: Int) -> Int {
    return num1 > num2 ? num1 - num2 : num2 - num1
}

print("1번째 수:", terminator: " ")
let num1 = Int(readLine()!)!

print("2번째 수:", terminator: " ")
let num2 = Int(readLine()!)!

print("결과 확인:", getAbsoluteValue(num1, num2))


//함수 예제 6

func isDivide(_ num1: Int, _ num2: Int) -> Bool {

    if num1 % num2 == 0 {
        return true
    } else {
        return false
    }
}

print("1번째 수:", terminator: " ")
let num1 = Int(readLine()!)!

print("2번째 수:", terminator: " ")
let num2 = Int(readLine()!)!

print("결과 확인:", isDivide(num1, num2))


//함수 예제 7

func getDivisor(_ num: Int) {

    print("\(num)의 약수:", terminator: " ")

    for i in 1...num {
        if num % i == 0 {
            print(i, terminator: " ")
        }
    }
    print()
}

getDivisor(24)


//함수 예제 8

func getSumOfDivisors(_ num: Int) -> Int {

    var sum = 0

    print("\(num)의 약수의 합:", terminator: " ")
    for i in 1...num {
        if num % i == 0 {
            sum += i
        }
    }
    return sum
}

print(getSumOfDivisors(16))

func getPerfectNumber (_ startValue : Int,_ endValue : Int) -> String{

    var result: String = ""

    for i in stride(from: startValue, through: endValue, by: 1){
        var plus: Int = 0
        for j in stride(from: 1, through: i-1, by: 1){

            i % j == 0 ? plus += j : nil
        }
        //합이 약수와 같다면.
        plus == i ? result += "\(String(i)) " : nil
    }
    return String(result)

}
var startValue: Int = 2
var endValue: Int = 1000
print("\(startValue)~\(endValue)까지의 완전수: \(getPerfectNumber(startValue,endValue))")


func getPerfectNumber(_ num1: Int, _ num2: Int) -> [Int] {

    var result: [Int] = []

    for i in num1...num2 {
        var plus = 0
        for j in 1...i-1 {
            i % j == 0 ? plus += j : nil
        }
        if plus == i {
            result.append(i)
        }
    }
    return result
}

print("2~1000까지의 완전수:", getPerfectNumber(2, 1000))

func solution(_ num_list:[Int], _ n:Int) -> [Int] {

    var arr: [Int] = []

    for i in n..<num_list.count {
        arr.append(num_list[i])
    }
    for i in 0...n {
        arr.append(num_list[i])
    }
    return arr
}

print(solution([5,2,1,7,5], 3))

func solution(_ myStr:String) -> [String] {

    var result: [String] = []
    var resultEmpty = ""

    for char in myStr {
        if char == "a" || char == "b" || char == "c" {
            if !resultEmpty.isEmpty {
                result.append(resultEmpty)
                resultEmpty = ""
            }
        } else {
            resultEmpty.append(char)
        }
    }
    if !resultEmpty.isEmpty {
        result.append(resultEmpty)
    }
    if result.isEmpty {
        return ["EMPTY"]
    }
    return result
}
print(solution("baconlettucetomato"))

protocol MessageBuilder {
    var name: String { get }
    func buildMessage() -> String
}

class MyClass: MessageBuilder {
    var name: String

    init(name: String) {
        self.name = name
    }

    func buildMessage() -> String {
         return "Hello" + name
    }

}

struct SampleStruct {
    var name: String

    init(name: String) {
        self.name = name
    }

    func buildHelloMsg() {
        "Hello" + name
    }
}

let myStruct1 = SampleStruct(name: "Kang")
var myStruct2 = myStruct1
myStruct2.name = "Kim"
print(myStruct1.name)
print(myStruct2.name)


struct SampleClass {
    var name: String

    init(name: String) {
        self.name = name
    }

    func buildHelloMsg() {
        "Hello" + name
    }
}

let myClass1 = SampleClass(name: "Kang")
var myClass2 = myClass1
myStruct2.name = "Kim"
print(myClass1.name)
print(myClass2.name)


@propertyWrapper
struct FixCase {
    private(set) var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }

    init(wrappedValue initiaValue: String) {
        self.wrappedValue = initiaValue
    }
}

struct Address {
    private var cityname = ""

    var city: String {
        get { cityname}
        set { cityname = newValue.uppercased() }
    }
}

var address = Address()
address.city = "London"
print(address.city)

@propertyWrapper
struct FixCase {
    private(set) var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }

    init(wrappedValue initiaValue: String) {
        self.wrappedValue = initiaValue
    }
}

struct Contact {
    @FixCase var name: String
    @FixCase var city: String
}

var contract = Contact(name: "Kang", city: "Seoul")
print(contract.name, contract.city)


func solution(_ num_list:[Int]) -> Int {

    var num = 0
    var num1 = 1

    for i in 0..<num_list.count {
        if 11 <= num_list.count {
            num += num_list[i]

        } else if 10 >= num_list.count {
            num1 *= num_list[i]
        }
    }
    return 11 <= num_list.count ? num : num1
}

print(solution([1,2,3,4,5,6,7,8,9,10,11]))


func solution1(_ arr: [Int]) -> Int {

    if arr.count > 10 {
        return arr.reduce(into: 0) { partialResult, val in
            partialResult += val
        }
    } else {
        return arr.reduce(into: 1) { partialResult, val in
            partialResult *= val
        }
    }
}


func unwrap(_ value: Int?) -> Void {
    print(value) // 옵셔널 = nil 값이 있을 수도 있고 없을 수도 있음 !는 100% 확률로 들어오면 쓰셈(걍 안쓰는거 추천)
 // 옵셔널 : nil 일 수 있는 자격이 있는 값
    guard let value = value else { return }
    print(value) // 언랩된 값
}

let integerVal: Int?
let integerVal2: Int

integerVal = nil
integerVal2 = nil
// 402번은 에러야 Int 기 때문에 nil 을 못가지지 근데 401은 Int? 기 때문에 nil 이 되지 ㅇㅋ? 저게 옵셔널타입과 일반타입의 차이야 딱 저거야
// nil 이 되고안되고
// 함수 밖에선 if let 함수 안에선 guard let이라고 생각하자 일단
// 가드 렛 기본 구문 guard let foo = var else { return }


func unwrap(value: Int?) -> Void {
    guard let value = value else { return }
    print(value)
}
unwrap(value: 6)




let integerVal: Int? = nil

if let val = integerVal {
    print(val)
} else {
    print("nil")
}


let n = 10
var result = 0

for i in 1...n {
    if i % 2 == 0 {
        result += i
        print(result)
    }
}

print(result)

func solution(_ numbers:[Int]) -> Double {
    
    var sum: Double = 0.0
    
    for i in 0..<numbers.count {
        sum += Double(numbers[i])
        print(sum)
    }
    return sum / Double(numbers.count)
}

print(solution([1,2,3,4,5,6]))

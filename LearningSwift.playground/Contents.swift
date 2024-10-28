import UIKit

var greeting = "Hello, playground"
print(greeting)
var condition = true
condition = false

/*
var seven : Int = 7
print(7)

var pi : Float
pi = 3.14159
pi = 3

print(pi)

pi = 5/6

print(pi)

seven += 1

print(7)

condition = seven == 6 || (3 > 2)
print(condition)

print("four" + "three")
print("the value of greeeting \(greeting)")

let x = 3
print(x)


var y : Int?
y=2
print(y)
 

var y : Int
y=2
if y==4 {
    print("if")
} else {
    print("else")
}

for x in 1...5 {
    print(x)
}

print("\n")

for x in 1..<5 {
    print(x)
}
 
print("\n")

var z = 1
while (z<=5) {
    print(z)
    z += 1
}

print("\n")

repeat {
    print(z)
    z += 1
} while(z<=5)

 
 Arrays

var i : Int?
i = 2
if let j = i {
    print(j)
}

var arryOne = ["a", "b", "c"]
print(arryOne)

arryOne[1] = "d"
print(arryOne)

arryOne.append("x")
print(arryOne)

arryOne.remove(at: 1)
print(arryOne)

arryOne[1] = "e"
print(arryOne[1].isEmpty)
print(arryOne.count)

for item in arryOne {
    print(item)
}
 
 dictionary


var Person = [ "first name" : "abhi", " office" : "3139H Shelby", "email" : "avj003@auburn.edu"]
print(Person)
Person["last name"] = "jariwala"
print(Person)

for key in Person {
    print(key)
}

Person.removeValue(forKey: "first name")
print(Person)
print(Person.count)
print(Person.isEmpty)


var setOne : Set = ["a","b","c"]
print(setOne)

setOne.insert("d")
print(setOne)
print(setOne.contains("a"))

var setTwo : Set = ["e","f","g"]
print(setOne.union(setTwo))
 

func addone(param: Int) -> Int {
    return(param+1)
}

 
func addone(_ param: Int) -> Int {  add space to not need to name it
    return(param+1)
}
print(addone(7))


func addN(_ param1 : Int) -> ((Int) -> Int) {
    let result = {(_ param2 : Int) -> Int in
        return(param1+param2)}
    return result
}

let addTwo = addN(2)
print(addTwo(5))
print((addN(5)(7)))

func applyToTwo(_ f: (Int) -> Int) -> Int {
    return f(2)
}

let addToSeven = addN(7)
print(applyToTwo(addToSeven))

 */

import Foundation

func Payment(loanAmount: Int, numberOfPayments: Int, interestRatePerPeriod: Float) -> Float {
    let P = Float(loanAmount)
    let n = Float(numberOfPayments)
    let r = interestRatePerPeriod / 100
    let payment = P * r / (1 - pow(1 + r, -n))
    
    return round(payment * 100) / 100
}

let monthlyPayment1 = Payment(loanAmount: 20000, numberOfPayments: 2, interestRatePerPeriod: 0.3667)
print("Monthly Payment for Scenario 1: $\(monthlyPayment1)")

let annualPayment2 = Payment(loanAmount: 150000, numberOfPayments: 30, interestRatePerPeriod: 5.0)
print("Annual Payment for Scenario 2: $\(annualPayment2)")


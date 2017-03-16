//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 112, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest: Int = 0

for (kind, numbers) in interestingNumbers {
    for num in numbers {
        if num > largest {
            largest = num
        }
    }
}


print(largest)

//: # if let 与 guard let
var testString: String? = "China"

if let testString = testString {
    print("A nil ")
} else {
    print("Test")
}


guard let testString = testString else {
    print("日出太阳")
    return
}

print("Just try!")











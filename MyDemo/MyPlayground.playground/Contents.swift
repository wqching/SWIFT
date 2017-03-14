//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var arrTest = [1, 2, 3, 4, 5]


let result3 = arrTest.reduce(0){
    $0 + $1
}

print(result3)



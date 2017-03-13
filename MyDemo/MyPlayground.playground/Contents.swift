//: Playground - noun: a place where people can play

import UIKit

var value = 50
print(value)
func increment(value: inout Int, length: Int = 10) {
    value += length
}

increment(value: &value)
print(value)




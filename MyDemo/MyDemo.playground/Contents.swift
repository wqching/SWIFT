//: Playground - noun: a place where people can play

import UIKit

for i in 0...100 {
       var temp = arc4random_uniform(10)
    print(temp)
}

for t in 0...100 {
    var test = arc4random()
    print(test)
    
}

enum fruits: Int {
    case one = 1, two, three, four, five
    case elevena, twelve
}

let test = fruits.four

print(test)


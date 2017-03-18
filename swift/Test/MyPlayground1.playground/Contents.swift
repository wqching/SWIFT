//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var sum: Int = 0
for i in 1...90 {
        sum = Int(arc4random())
}

var demo: String = "CHINA"

var arrOne = [1, 2, 3, 4]

var arrTwo = [1, 2, 3, 4, 10]

var arrThree = arrOne + arrTwo



    arrTwo.count
    arrOne.count

var result: Int = 0


var total: Int = 0

total = arrThree.reduce(0, {
    (total, arrThree) -> Int in
        return total +  arrThree
})


print(total)




var products = [
    (name: "Kayak", price: 275, stock: 10),
    (name: "Lifejacket", price: 48.95, stock: 14),
    (name: "Soccer Ball", price: 19.5, stock: 32)]

let finalPrice: (Int, Double) = products.reduce((0, 0.0), {(totals, product) -> (Int, Double) in
    return (
        totals.0 + product.stock,
        totals.1 + product.price
    )
})

print(finalPrice.0)
print(finalPrice.1)





    
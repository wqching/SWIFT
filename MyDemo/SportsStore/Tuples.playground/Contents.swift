//: Playground - noun: a place where people can play

import Foundation

var myProduct = ("Kayak", "A boat for one person", "Watersports", 275.0, 10)

func writeProductDetails(product:(String, String, String, Double, Int)){
    print("Name: \(product.0)")
    print("Description: \(product.1)")
    print("Category: \(product.2)")
    
    let formattedPrice = NSString(format: "$%.2lf", product.3)
    print(formattedPrice)
    print("Price: \(product.4)")
    
}

writeProductDetails(product: myProduct)



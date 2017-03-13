//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var name: String = "John"
//    init(name: String) {
//        self.name = "Tome"
//    }
}

//: #修改父类的属性值

class Cat {
    var name: String
    
    init() {
        name = "cat"
    }
}

class Tiger: Cat {
    let power: Int
    
    override init() {
        power = 10
        super.init()
        name = "tiger"
    }
}

class Baozi: Tiger {
    var speed: Double
    
    override init() {
        self.speed = 888.88
        super.init()
        name = "Baozi"
    }
    
    func runFast(speed: Double) -> Double {
        self.speed = speed
        return speed
    }
}

var dd = Baozi()
    dd.runFast(speed: 999)
    dd.name
    dd.power

struct Student {
    var name: String
    var age: Int
    
    func middleStudent(name: String) -> String {
        return name
    }
}

let ss = Student(name: "Zhang San", age: 11)
ss.middleStudent(name: "张三")

struct Fullname {
    var firstName: String
    var secondName: String? // optional value
    var salary: Int
    
    // default designed init - 默认的指定初始化方法
    init() {
        firstName = "flion"
        salary = 100
    }
    
    // 带参数的指定初始化
    init(firstName: String, secondName: String?, salary: Int) {
        self.firstName = firstName
        self.secondName = secondName
        self.salary = salary
    }
    
    
    func eat(foodName: String) -> Void {
        print("eat food " + foodName)
    }
    
    
    func fullName() -> String {
        if let tempSecondName = secondName {
            return firstName + "-" + tempSecondName
        } else {
            return firstName
        }
    }
}


var ff = Fullname(firstName: "Chan", secondName: "Wenqiang", salary: 440)
    ff.firstName
    ff.fullName()









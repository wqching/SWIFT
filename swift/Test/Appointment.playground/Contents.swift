//: Playground - noun: a place where people can play

import UIKit

struct Appointment {
    var name: String
    var day: String
    var place: String
    
    init(name: String, day: String, place: String) {
        self.name = name
        self.day = day
        self.place = place
    }
    
    func  meetDetail() -> String {
        return "We will meet with \(self.name) on the day \(self.day) at the place called \(self.place)"
    }
}

var firstMeet = Appointment(name: "Tom", day: "Friday", place: "Beijing")
var secondMeet = firstMeet
firstMeet.meetDetail()
secondMeet.meetDetail()
secondMeet.name = "Jerry"
secondMeet.day = "Sunday"
secondMeet.place = "China"
secondMeet.meetDetail()

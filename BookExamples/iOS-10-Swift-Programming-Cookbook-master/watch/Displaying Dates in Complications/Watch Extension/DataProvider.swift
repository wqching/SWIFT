//
//  DataProvider.swift
//  Constructing Small Complications with Text and Images
//
//  Created by Vandad on 8/7/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import Foundation

protocol Holidayable{
  var date: Date {get}
  var name: String {get}
}

struct Holiday : Holidayable{
  let date: Date
  let name: String
}

struct DataProvider{
  
  private let holidayNames = [
    "Father's Day",
    "Mother's Day",
    "Bank Holiday",
    "Nobel Day",
    "Man Day",
    "Woman Day",
    "Boyfriend Day",
    "Girlfriend Day",
    "Dog Day",
    "Cat Day",
    "Mouse Day",
    "Cow Day",
    ]
  
  private func randomDay() -> Int{
    return Int(arc4random_uniform(20) + 1)
  }
  
  func allHolidays() -> [Holiday]{
    
    var all = [Holiday]()
    
    let now = Date()
    let cal = Calendar.current
    let unitsArray: [Calendar.Component] = [.year, .month, .day]
    let units = Set(unitsArray)
    var comps = cal.dateComponents(units, from: now)
    
    var dates = [Date]()
    
    for month in 1...12{
      comps.day = randomDay()
      comps.month = month
      dates.append(cal.date(from: comps)!)
    }
    
    var i = 0
    for date in dates{
      all.append(Holiday(date: date, name: holidayNames[i]))
      i += 1
    }
    
    return all
    
  }
  
}

//
//  DataProvider.swift
//  Constructing Small Complications with Text and Images
//
//  Created by Vandad on 8/7/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import Foundation

protocol WithDate{
  var hour: Int {get}
  var date: Date {get}
  var fraction: Float {get}
}

struct Data : WithDate{
  let hour: Int
  let date: Date
  let fraction: Float
  var hourAsStr: String{
    return "\(hour)"
  }
}

extension Date{
  func hour() -> Int{
    let cal = Calendar.current
    let unitsArray: [Calendar.Component] = [.hour]
    let units = Set(unitsArray)
    return cal.dateComponents(units, from: self).hour!
  }
}

extension Collection where Iterator.Element : WithDate {
  
  func dataForNow() -> Iterator.Element?{
    let thisHour = Date().hour()
    for d in self{
      if d.hour == thisHour{
        return d
      }
    }
    return nil
  }
  
}

struct DataProvider{
  
  func allDataForToday() -> [Data]{
    
    var all = [Data]()
    
    let now = Date()
    let cal = Calendar.current
    
    let unitsArray: [Calendar.Component] = [.month, .day]
    let units = Set(unitsArray)
    
    var comps = cal.dateComponents(units, from: now)
    comps.minute = 0
    comps.second = 0
    
    for i in 1...24{
      comps.hour = i
      let date = cal.date(from: comps)!
      let fraction = Float(comps.hour!) / 24.0
      let data = Data(hour: comps.hour!, date: date, fraction: fraction)
      all.append(data)
    }
    
    return all
    
  }
  
}

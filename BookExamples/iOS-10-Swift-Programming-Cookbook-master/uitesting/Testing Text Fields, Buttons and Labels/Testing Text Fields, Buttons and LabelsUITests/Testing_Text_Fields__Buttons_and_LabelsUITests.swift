//
//  Testing_Text_Fields__Buttons_and_LabelsUITests.swift
//  Testing Text Fields, Buttons and LabelsUITests
//
//  Created by Vandad on 7/6/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import Foundation
import XCTest

class Testing_Text_Fields__Buttons_and_LabelsUITests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    let app = XCUIApplication()
    app.buttons["Button"].tap()
    
    let lbl = app.staticTexts["Label"]
    XCTAssert(lbl.exists == false)
  }
  
  func testExample2(){
    let app = XCUIApplication()
    
    let txtField = app.textFields["MyTextField"]
    XCTAssert(txtField.exists)
    XCTAssert(txtField.value != nil)
    
    let txt = txtField.value as! String
    
    XCTAssert(txt.characters.count > 0)
    
  }
  
  
}

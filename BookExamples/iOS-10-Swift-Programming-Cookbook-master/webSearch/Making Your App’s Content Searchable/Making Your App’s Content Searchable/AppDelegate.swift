//
//  AppDelegate.swift
//  Making Your App’s Content Searchable
//
//  Created by Vandad on 7/1/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import UIKit
import CoreSpotlight
import SharedCode

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication,
                   continue userActivity: NSUserActivity,
                   restorationHandler: @escaping ([Any]?) -> Void) -> Bool {
    
    guard userActivity.activityType == CSSearchableItemActionType,
      let id = userActivity
        .userInfo?[CSSearchableItemActivityIdentifier] as? String
      else{
        return false
    }
    
    //now we have access to id of the activity. and that is the URL
    print(id)
    
    return true
    
  }
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
    
    Indexer().doIndex()
    
    return true
  }
}


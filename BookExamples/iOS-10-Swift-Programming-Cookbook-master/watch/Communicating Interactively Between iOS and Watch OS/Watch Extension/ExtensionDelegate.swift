//
//  ExtensionDelegate.swift
//  Watch Extension
//
//  Created by Vandad on 8/5/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import WatchKit
import WatchConnectivity

class ExtensionDelegate: NSObject, WKExtensionDelegate, WCSessionDelegate{
  
  var isReachable = false{
    willSet{
      self.rootController?.repliesGroup.setHidden(!newValue)
    }
  }
  
  var rootController: InterfaceController?{
    get{
      guard let interface =
        WKExtension.shared().rootInterfaceController as?
        InterfaceController else{
          return nil
      }
      return interface
    }
  }
  
  func session(
    _ session: WCSession,
    activationDidCompleteWith activationState: WCSessionActivationState,
    error: Error?) {
    //empty for now
  }
  
  var iosAppReply = ""{
    didSet{
      DispatchQueue.main.async{
        self.rootController?.iosAppReplyLbl.setText(self.iosAppReply)
      }
    }
  }
  
  func session(_ session: WCSession,
               didReceiveMessage message: [String : Any],
               replyHandler: @escaping ([String : Any]) -> Void) {
    
    guard message["msg"] is String else{
      replyHandler(["msg" : "failed"])
      return
    }
    
    iosAppReply = message["msg"] as! String
    replyHandler(["msg" : "delivered"])
    
  }
  
  func sessionReachabilityDidChange(_ session: WCSession) {
    isReachable = session.isReachable
  }
  
  func applicationDidFinishLaunching() {
    
    guard WCSession.isSupported() else{
      iosAppReply = "Sessions are not supported"
      return
    }
    
    let session = WCSession.default()
    session.delegate = self
    session.activate()
    isReachable = session.isReachable
    
  }
  
}

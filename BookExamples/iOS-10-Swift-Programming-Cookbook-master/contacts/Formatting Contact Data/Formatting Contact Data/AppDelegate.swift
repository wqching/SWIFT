//
//  AppDelegate.swift
//  Formatting Contact Data
//
//  Created by Vandad on 7/27/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import UIKit
import Contacts
import SharedCode

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  let store = CNContactStore()
  
  //finds the first "john" and prints its name to the console
  func example1(){
    
    let toFetch =
      CNContactFormatter.descriptorForRequiredKeys(for: .fullName)
    
    store.firstUnifiedContactMatching(name: "john", toFetch: [toFetch]){
      guard let contact = $0 else{
        return
      }
      
      guard let name = CNContactFormatter().string(from: contact) else{
        return
      }
      
      print("The name of the contact is \(name)")
      
    }
    
  }
  
  func example2(){
    
    let style = CNContactFormatterStyle.phoneticFullName
    
    let toFetch =
      CNContactFormatter.descriptorForRequiredKeys(for: style)
    
    store.firstUnifiedContactMatching(name: "julian", toFetch: [toFetch]){
      
      guard let contact = $0 else{
        return
      }
      
      guard let name = CNContactFormatter
        .string(from: contact, style: style) else{
          return
      }
      
      print("The phonetic name of the contact is \(name)")
      
    }
    
  }
  
  func example3(){
    
    let toFetch = [CNContactPostalAddressesKey as NSString]
    
    store.firstUnifiedContactMatching(name: "john", toFetch: toFetch){
      guard let contact = $0 else{
        return
      }
      
      guard let firstAddress = contact.postalAddresses.first else{
        print("no postal address could be found")
        return
      }
      
      let formatter = CNPostalAddressFormatter()
      let formattedAddress = formatter.string(from: firstAddress.value)
      
      print("The address is \(formattedAddress)")
      
    }
    
  }
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
    
    ContactAuthorizer.authorizeContacts{
      if $0{
        self.example1()
        self.example2()
        self.example3()
      }
    }
    
    return true
  }
  
}


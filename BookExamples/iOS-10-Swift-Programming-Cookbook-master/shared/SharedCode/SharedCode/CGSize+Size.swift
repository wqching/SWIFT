//
//  CGSize+Size.swift
//  SharedCode
//
//  Created by Vandad on 8/14/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import Foundation

extension CGSize{
  
  public var center: CGPoint{
    return CGPoint(x: width / 2.0, y: height / 2.0)
  }
  
}

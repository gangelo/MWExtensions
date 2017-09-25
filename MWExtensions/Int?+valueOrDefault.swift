//
//  Int?+valueOrDefault.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 9/25/17.
//  Copyright © 2017 Mohojo Werks LLC. All rights reserved.
//

import Foundation

public extension Optional where Wrapped: SignedInteger {
   
   // Returns defaultValue if the int is nil
   func valueOrDefault(_ defaultValue: Int = 0) -> Int {
      return self == nil ? defaultValue : self as! Int
   }
}

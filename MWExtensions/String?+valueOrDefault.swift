//
//  String?+valueOrDefault.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 9/20/16.
//  Copyright © 2016 Mohojo Werks LLC. All rights reserved.
//

import Foundation

public extension Optional where Wrapped: ExpressibleByStringLiteral {

    // Returns defaultValue if the string is nil
    func valueOrDefault(defaultValue: String) -> String {
      if self == nil {
         return defaultValue
      } else {
         return self as! String
      }
   }
}

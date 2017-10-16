//
//  String?+sentenceCase.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 10/10/17.
//  Copyright © 2017 Mohojo Werks LLC. All rights reserved.
//

import Foundation


public extension Optional where Wrapped: ExpressibleByStringLiteral {
   public func sentenceCase() -> String {
      if let string = self as? String {
         let first = String(string.characters.prefix(1)).capitalized
         let other = String(string.characters.dropFirst())
         return first + other
      } else {
         return ""
      }
   }
}

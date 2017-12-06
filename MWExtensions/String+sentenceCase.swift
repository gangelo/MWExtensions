//
//  String+sentenceCase.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 10/10/17.
//  Copyright © 2017 Mohojo Werks LLC. All rights reserved.
//

import Foundation

public extension String {
   public func sentenceCase() -> String {
      let first = String(self.prefix(1)).capitalized
      let other = String(self.dropFirst())
      return first + other
   }
   
   mutating func sentenceCase() {
      self = self.sentenceCase()
   }
}

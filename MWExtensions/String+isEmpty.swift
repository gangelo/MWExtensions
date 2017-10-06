//
//  String+isEmpty.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 10/5/17.
//  Copyright © 2017 Mohojo Werks LLC. All rights reserved.
//

import Foundation

public extension String {
   public func isEmpty() -> Bool {
      return self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
   }
}

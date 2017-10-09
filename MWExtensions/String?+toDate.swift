//
//  String?+toDate.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 10/7/17.
//  Copyright © 2017 Mohojo Werks LLC. All rights reserved.
//

import Foundation

public extension Optional where Wrapped: ExpressibleByStringLiteral {

   public func  toDate(dateFormat: String = "yyyy-MM-dd'T'HH:mm:ss.SSSZ") -> Date? {
      guard let string = self as? String, !(self as? String).isNilOrEmpty() else {
         return nil
      }
      
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = dateFormat
      return dateFormatter.date(from: string)
   }
}

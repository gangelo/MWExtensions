//
//  NSObject+className.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 9/20/17.
//  Copyright © 2017 Mohojo Werks LLC. All rights reserved.
//

import Foundation

extension NSObject {
   var className: String {
      return String(describing: type(of: self))
   }
   
   class var className: String {
      return String(describing: self)
   }
}

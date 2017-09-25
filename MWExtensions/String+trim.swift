//
//  String+trim.swift
//
//  Created by Gene M. Angelo  Jr. on 9/13/16.
//  Copyright © 2016 Mohojo Werks LLC. All rights reserved.
//
import Foundation

public extension String {
    
    public func trim() -> String {
      return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
}

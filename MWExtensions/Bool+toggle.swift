//
//  Bool+toggle.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 9/21/16.
//  Copyright © 2016 Mohojo Werks LLC. All rights reserved.
//

import Foundation

public extension Bool {
    
    public mutating func toggle() -> Bool {
        self = !self
        return self
    }
}

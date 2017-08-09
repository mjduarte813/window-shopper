//
//  Wage.swift
//  window-shopper
//
//  Created by Marcel Duarte on 8/9/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int { //parameterName variableName: Variable Type. Class Func is a "Type Method" - a function called on the Class itself, not an instance of the Class.
        return Int(ceil(price/wage))
    }
}

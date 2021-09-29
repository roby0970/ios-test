//
//  Wage.swift
//  windows-shopper
//
//  Created by FOI on 12.09.2021..
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}

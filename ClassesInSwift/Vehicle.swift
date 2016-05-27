//
//  Vehicle.swift
//  ClassesInSwift
//
//  Created by Ezekiel Abuhoff on 5/26/16.
//  Copyright © 2016 Ezekiel Abuhoff. All rights reserved.
//

import Foundation

class Vehicle {
    
    let hasASoul = false
    let numberOfWheels: Int
    var numberOfPassengers = 0
    
    init(wheels: Int) {
        numberOfWheels = wheels
    }
    
    func statusReport() -> String {
        return "This vehicle has \(numberOfWheels) wheels and \(numberOfPassengers) passengers."
    }
}
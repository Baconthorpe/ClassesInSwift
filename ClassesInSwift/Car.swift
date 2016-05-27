//
//  Car.swift
//  01_Classes_In_Swift
//
//  Created by Ezekiel Abuhoff on 5/26/16.
//  Copyright © 2016 Ezekiel Abuhoff. All rights reserved.
//

import Foundation

class Car : Vehicle {
    
    let make: String
    let model: String
    
    init(make specifiedMake: String, model specifiedModel: String) {
        make = specifiedMake
        model = specifiedModel
        super.init(wheels: 4)
    }
}
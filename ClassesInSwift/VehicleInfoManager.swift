//
//  VehicleInfoManager.swift
//  ClassesInSwift
//
//  Created by Ezekiel Abuhoff on 5/27/16.
//  Copyright © 2016 Ezekiel Abuhoff. All rights reserved.
//

import Foundation

class VehicleInfoManager {
    static func printStatusReport(vehicle: Vehicle) {
        print(vehicle.statusReport())
    }
    
    static func vehiclesWithMostWheels(vehicles: [Vehicle]) -> [Vehicle] {
        var topVehicles: [Vehicle] = []
        
        var topWheels = 0
        for vehicle in vehicles {
            if vehicle.numberOfWheels > topWheels {
                topVehicles = [vehicle]
                topWheels = vehicle.numberOfWheels
            } else if vehicle.numberOfWheels == topWheels {
                topVehicles.append(vehicle)
            }
        }
        
        return topVehicles
    }
}
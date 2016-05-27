//
//  ClassesInSwiftTests.swift
//  ClassesInSwift
//
//  Created by Ezekiel Abuhoff on 5/26/16.
//  Copyright © 2016 Ezekiel Abuhoff. All rights reserved.
//

import XCTest
@testable import ClassesInSwift

class _1_Classes_In_SwiftTests: XCTestCase {
    
    // MARK: Tests
    
    func testMakingABoatTheOldFashionedWay() {
        // I instantiate a dictionary that I'm using to represent a vehicle
        let myBoat = ["numberOfWheels": 0,
                      "hasASoul": false]
        
        // I check that the vehicle is as I expect it to be
        XCTAssert(myBoat["numberOfWheels"] == 0)
        XCTAssert(myBoat["hasaSoul"] == false)
    }
    
    func testMakingABoatUsingAClass() {
        // I instantiate a vehicle, specifying the required details
        let myBoat = Vehicle(wheels: 0)
        
        // I check that the vehicle is as I expect it to be
        XCTAssert(myBoat.numberOfWheels == 0)
        XCTAssert(myBoat.hasASoul == false)
        XCTAssert(myBoat.statusReport() == "This vehicle has 0 wheels and 0 passengers.")
    }
    
    func testBoardingABoatUsingAnInstanceVariable() {
        // I instantiate a vehicle, specifying the required details
        let myBoat = Vehicle(wheels: 0)
        
        // I check that no one is on board yet - 0 passengers should be the default
        XCTAssert(myBoat.statusReport() == "This vehicle has 0 wheels and 0 passengers.")
        
        // My friend and I board the board, a change I record by altering the instance variable
        myBoat.numberOfPassengers = 2
        
        // I check that the instance variable has been updated
        XCTAssert(myBoat.statusReport() == "This vehicle has 0 wheels and 2 passengers.")
    }
    
    func testComparingVehiclesUsingVehicleInfoManager() {
        // I instantiate several vehicles, of varying wheel count
        let myJetSki = Vehicle(wheels: 0)
        let myATV = Vehicle(wheels: 4)
        let myYamaha = Vehicle(wheels: 2)
        let myMinivan = Vehicle(wheels: 4)
        
        // I organize my vehicles into an array and pass them into the relevant VehicleInfoManager function
        let onePackedGarage = [myJetSki,
                               myATV,
                               myYamaha,
                               myMinivan]
        let vehiclesTiedForMostWheels = VehicleInfoManager.vehiclesWithMostWheels(onePackedGarage)
        
        // I check that the number of of vehicles I got back as a result is correct, as well as the number of wheels
        XCTAssert(vehiclesTiedForMostWheels.count == 2)
        XCTAssert(vehiclesTiedForMostWheels[0].numberOfWheels == 4)
    }
}

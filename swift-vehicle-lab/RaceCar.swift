//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Henry Dinhofer on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
    let driver : String
    var sponsors : [String] 
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
    
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    override func accelerate() {
        self.speed += (1/5) * self.maxSpeed
    }
    override func decelerate() {
        self.speed -= (1/5) * self.maxSpeed
    }
    func driftRight() {
        if self.speed > 0 {
            self.heading += 90
            self.speed *= 3/4
        }
    }
    func driftLeft() {
        if self.speed > 0 {
            self.heading -= 90
            self.speed *= 3/4
        }
    }
}

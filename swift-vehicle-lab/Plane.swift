//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Henry Dinhofer on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    let maxAltitude : Double
    var altitude : Double = 0 {
        didSet {
            if self.altitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            }
            else if self.altitude < 0 {
                self.altitude = 0
            }
        }
    }
    var inFlight : Bool {
        var isFlying = false
        if speed > 0 && altitude > 0 {
            isFlying = true
        }
        return isFlying
    }
        init(name: String, weight: Double, maxSpeed: Double, maxAltitude : Double) {
            self.maxAltitude = maxAltitude
            super.init(name: name, weight: weight, maxSpeed: maxSpeed)
        }
    func takeoff() {
        if !inFlight {
            self.speed = 1/10 * self.maxSpeed
            self.altitude = 1/10 * self.maxAltitude
        }
    }
    func land() {
        halt()
        self.altitude = 0
    }
    func climb() {
        if inFlight {
            self.altitude += (1/10) * self.maxAltitude
            decelerate()
        }
    }
    func dive() {
        if inFlight || (self.speed == 0 && self.altitude > 0) {
            self.altitude -= (1/10) * self.maxAltitude
            accelerate()
        }
    }
    func bankRight() {
        if inFlight {
            self.heading += 45
            self.speed = 0.9 * self.speed
        }
    }
    func bankLeft() {
        if inFlight {
            self.heading -= 45
            self.speed = 0.9 * self.speed
        }
    }
}
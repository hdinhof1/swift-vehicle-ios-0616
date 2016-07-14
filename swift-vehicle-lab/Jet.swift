//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Henry Dinhofer on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override func climb() {
        if inFlight {
            self.altitude += (1/5) * self.maxAltitude
            decelerate()
        }
    }
    override func dive() {
        if inFlight {
        self.altitude -= (1/5) * self.maxAltitude
            accelerate()
        }
    }
    func afterburner() {
        if inFlight && self.speed == self.maxSpeed {
            //self.speed = self.maxSpeed * 2 
            //this wont work as i made didSet observers to prevent this
            
            //workaround hack made maxSpeed mutable
            let oldMaxSpeed = self.maxSpeed
            self.maxSpeed *= 2
            self.speed = self.maxSpeed
            self.maxSpeed = oldMaxSpeed
        }
    }

}
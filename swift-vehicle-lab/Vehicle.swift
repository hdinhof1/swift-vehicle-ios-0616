//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Henry Dinhofer on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name : String
    let weight : Double
    var maxSpeed : Double
    var speed : Double = 0
        {
        didSet {
            if self.speed > self.maxSpeed {
                 goFast()
            }
            else if self.speed < 0 {
                halt()
            }
        }
        
    }
    var heading : Double = 0
        {
        didSet {
            if self.heading < 0 {
                self.heading = 360 + self.heading
            }
            else if self.heading > 360 {
                self.heading = self.heading - 360
            }
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    func goFast() {
        self.speed = self.maxSpeed
    }
    func halt() {
        self.speed = 0
    }
    func accelerate() {
        self.speed += (1/10) * self.maxSpeed
    }
    func decelerate() {
        self.speed -= (1/10) * self.maxSpeed
    }
    func turnRight() {
        if self.speed > 0 {
            self.heading += 90
            self.speed /= 2
        }
    }
    func turnLeft() {
        if self.speed > 0 {
            self.heading -= 90
            self.speed /= 2
        }
    }
    
}
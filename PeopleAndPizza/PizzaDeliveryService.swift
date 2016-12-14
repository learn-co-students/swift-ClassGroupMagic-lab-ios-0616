//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Lloyd W. Sykes on 12/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    
    let location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        if location.distanceTo(coordinate: destination) <= 5000 {
            return true
        }
        return false
    }
    
    func deliverPizzaTo(destination: Coordinate) -> Bool {
        if isInRange(destination: destination) && pizzasAvailable > 0 {
            pizzasAvailable -= 1
            return true
        }
        return false
    }
}

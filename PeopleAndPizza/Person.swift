//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Lloyd W. Sykes on 12/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let firstName: String
    let lastName: String
    let home: Coordinate
    var isHungry: Bool = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    func eatPizzaFrom(service: PizzaDeliveryService) -> Bool {
        if isHungry && service.isInRange(destination: home) {
            isHungry = false
            return true
        }
        return false
    }
}

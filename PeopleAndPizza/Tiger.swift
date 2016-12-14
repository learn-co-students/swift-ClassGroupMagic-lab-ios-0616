//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Lloyd W. Sykes on 12/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Tiger {
    
    let name: String
    var isHungry: Bool = true
    
    init(name: String) {
        self.name = name
    }
    
    func eat() {
        self.isHungry = false
    }
}

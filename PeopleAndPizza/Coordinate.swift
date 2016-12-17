//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Lloyd W. Sykes on 12/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate {
    
    let latitude: Double
    let longitude: Double
    
    var isInNorthernHemisphere: Bool { return latitude > 0 }
    var isInSouthernHemisphere: Bool {return latitude < 0}
    var isInWesternHemisphere: Bool { return longitude > 0 }
    var isInEasternHemisphere: Bool { return longitude < 0 }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func distanceTo(to coordinate: Coordinate) -> Double {

        return acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians - coordinate.longitude.radians)) * 6371000 / 1000
    }
}

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}

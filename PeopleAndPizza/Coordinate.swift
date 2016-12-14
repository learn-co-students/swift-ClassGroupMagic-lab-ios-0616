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
    
    func distanceTo(coordinate: Coordinate) -> Double {
//        acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371000 / 1000
        return acos(sin(latitude) * sin(latitude) + cos(latitude) * cos(latitude) * cos(longitude-longitude)) * 6371000 / 1000
    }
}

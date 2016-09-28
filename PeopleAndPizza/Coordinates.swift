//
//  Coordinates.swift
//  PeopleAndPizza
//
//  Created by Marie Park on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
    init (latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
        
        
    var isInNorthernHemisphere: Bool {
            if latitude > 0.0 {
                return true
            } else {
                return false
        }
    }

    var isInSoutherHemisphere: Bool {
        if latitude < 0.0 {
            return true
        } else {
            return false
        }
    }
  
    var isInWesternHemisphere: Bool {
        if longitude > 0.0 {
            return true
        } else {
            return false
        }
    }
    
    var isInEasternHemisphere: Bool {
        if longitude < 0.0 {
            return true
        } else {
            return false
        }
    }
    
    func distanceTo(coordinate: Coordinate) -> Int {
        let distance = Int((acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians - coordinate.longitude.radians)) * 6371000.0 / 1000.0))
        return distance
    }
    
    
    
}

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}

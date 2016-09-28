//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Marie Park on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int
    
    init (location: Coordinate, pizzasAvailable: Int) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(destination: Coordinate) -> Bool {
       return location.distanceTo(coordinate: destination) <= 5000
    }
    
    func deliverPizzaTo(destination: Coordinate) -> Bool {
        return self.isInRange(destination: destination)
    }
    
}

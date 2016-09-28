//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Marie Park on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Tiger {
    var name: String
    var isHungry: Bool
    
    
    init (name:String, isHungry: Bool) {
        self.name = name
        self.isHungry = isHungry
    }
    
    func eat () {
        self.isHungry = false
    }
    
}

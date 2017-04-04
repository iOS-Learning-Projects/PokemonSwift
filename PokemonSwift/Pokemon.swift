//
//  Pokemon.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Cocoa

struct Pokemon {

    var name: NSString;
    var type: NSString;
    var experience: UInt32 = 0;
    var level = arc4random_uniform(10) + 2

    init(_ name: NSString, ofType type: NSString, withExperience experience: UInt32, andLevel level: UInt32) {
        self.name = name
        self.type = type
        self.experience = experience
        self.level = level
    }

    init(_ name: NSString, ofType type: NSString) {
        self.name = name
        self.type = type
    }

    mutating func gainExperience(_ experienceGained: UInt32) {
        self.experience += experienceGained;

        if (self.experience >= 100) {
            self.experience -= 100
            self.level += 1
        }
    }

}

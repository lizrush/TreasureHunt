//
//  Treasure.swift
//  TreasureHunt
//
//  Created by liz on 2/12/14.
//  Copyright (c) 2014 Razeware. All rights reserved.
//

import Foundation

class Treasure: NSObject {
    
    let what: String
    let location: GeoLocation
    
    init(what: String, location: GeoLocation) {
        self.what = what
        self.location = location
    }
}
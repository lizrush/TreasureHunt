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
    
    convenience init(what: String,
        latitude: Double, longitude: Double)
    {
        let location = GeoLocation(latitude: latitude, longitude: longitude)
        self.init(what: what, location: location)
    }
}
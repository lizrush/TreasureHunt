//
//  GeoLocation.swift
//  TreasureHunt
//
//  Created by liz on 2/12/14.
//  Copyright (c) 2014 Razeware. All rights reserved.
//

import Foundation
import MapKit

struct GeoLocation {
    var latitude: Double
    var longitude: Double
    
    func distanceBetween(other: GeoLocation) -> Double {
        let locationA = CLLocation(latitude: self.latitude, longitude: self.longitude)
        let locationB = CLLocation(latitude: other.latitude, longitude: other.longitude)
        return locationA.distanceFromLocation(locationB)
    }
}

extension GeoLocation {
    var coordinate: CLLocationCoordinate2D{
        return CLLocationCoordinate2DMake(self.latitude, self.longitude)
    }
    
    var mapPoint: MKMapPoint {
        return MKMapPointForCoordinate(self.coordinate)
    }
}

extension GeoLocation: Equatable {
}

func ==(lhs: GeoLocation, rhs: GeoLocation) -> Bool {
    return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
}
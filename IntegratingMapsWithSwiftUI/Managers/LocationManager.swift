//
//  LocationManager.swift
//  IntegratingMapsWithSwiftUI
//
//  Created by ramil on 29.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation
import MapKit

class LocationManager: NSObject {
    
    private let locationManager = CLLocationManager()
    var location: CLLocation? = nil
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
}

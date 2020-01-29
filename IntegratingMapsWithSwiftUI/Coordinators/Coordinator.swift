//
//  Coordinator.swift
//  IntegratingMapsWithSwiftUI
//
//  Created by ramil on 29.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: MapView
    
    init(_ control: MapView) {
        self.control = control
    }
    
}

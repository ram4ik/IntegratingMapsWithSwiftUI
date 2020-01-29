//
//  ContentView.swift
//  IntegratingMapsWithSwiftUI
//
//  Created by ramil on 29.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @ObservedObject private var locationManager = LocationManager()
    
    var body: some View {
        
        let coordinate = self.locationManager.location != nil ? self.locationManager.location!.coordinate : CLLocationCoordinate2D()
        
        return ZStack {
            MapView().edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("\(coordinate.latitude), \(coordinate.longitude)")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
                    .opacity(0.6)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  mapbox-swiftui-test
//
//  Created by Adrian Vatchinsky on 3/1/22.
//

import SwiftUI
import MapboxMaps

struct ContentView: View {
    
    @State private var camera = Camera(center: CLLocationCoordinate2D(latitude: 40, longitude: -75), zoom: 14)
    @State private var styleURI = StyleURI.streets
    
    
    var body: some View {
        VStack {
            
            SwiftUIMapView(
                mapInitOptions: MapInitOptions(), camera: $camera
            ).styleURI(styleURI)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

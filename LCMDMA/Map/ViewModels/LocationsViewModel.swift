//
//  LocationsViewModel.swift
//  LCMDMA
//
//  Created by Valentin Munch on 09.03.23.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
//    toutes les localisations
    @Published var locations: [Location]
    
//    position actuelle
    @Published var mapLocation: Location{
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion:MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
    
    @Published var showLocationsList: Bool = false
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location){
        withAnimation(.easeOut){
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut){
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed(){
        
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation }) else {
            print("Could'nt find current index in locations array. Should never happen.")
            return
        }
        
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            guard let firstLocation = locations.first else {return}
            
            showNextLocation(location: firstLocation)
            return
        }
        
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
    
}

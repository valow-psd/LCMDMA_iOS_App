//
//  Location.swift
//  LCMDMA
//
//  Created by Valentin Munch on 09.03.23.
//

import Foundation
import MapKit


struct Location : Identifiable, Equatable {
//    let id = UUID().uuidString
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    
    var id: String {
        name + cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool{
        lhs.id == rhs.id
    }
    
}


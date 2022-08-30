//
//  Coordinate.swift
//  Coordinates
//
//  Created by Richard Barnes on 8/30/22.
//

import Foundation
import MapKit

struct Coordinate : Decodable, Identifiable{
    var id = UUID()

    let title: String
    let latitude: Double
    let longitude: Double

    enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
        case title
    }
}

extension Coordinate {
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

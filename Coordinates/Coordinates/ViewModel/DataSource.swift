//
//  DataSource.swift
//  Coordinates
//
//  Created by Richard Barnes on 8/30/22.
//

import Foundation

protocol DataSource {
    func getCoordinateList() -> [Coordinate]
}

struct JSONDataSource: DataSource {
    func getCoordinateList() -> [Coordinate] {
        guard let coordinates = try? JSONDecoder().decode([Coordinate].self, from: JSONDataSource.json.data(using: .utf16) ?? Data()) else {
            return []
        }

        return coordinates
    }

    static let json = """
    [{"title":"Seatle Needle","latitude":47.62074698783119,"longitude":-122.34915052579885},
    {"title":"Chicago Bean Mirror","latitude":41.88323198402839,"longitude":-87.62343269008572},
    {"title":"Mount Rushmore","latitude":43.879689900375986,"longitude":-103.45893799662677}]
    """
}

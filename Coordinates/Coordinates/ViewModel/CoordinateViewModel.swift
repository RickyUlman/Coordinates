//
//  CoordinateViewModel.swift
//  Coordinates
//
//  Created by Richard Barnes on 8/30/22.
//

import Foundation


@MainActor class CoordinateViewModel: ObservableObject {
    @Published var coordinates: [Coordinate] = []

    init(dataSource: DataSource) {
        coordinates = dataSource.getCoordinateList()
    }
    
}

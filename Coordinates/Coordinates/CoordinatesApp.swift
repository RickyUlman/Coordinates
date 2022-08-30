//
//  CoordinatesApp.swift
//  Coordinates
//
//  Created by Richard Barnes on 8/30/22.
//

import SwiftUI

@main
struct CoordinatesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(coordinateViewModel: CoordinateViewModel(dataSource: JSONDataSource()))
        }
    }
}

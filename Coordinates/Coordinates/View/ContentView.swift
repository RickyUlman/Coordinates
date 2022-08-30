//
//  ContentView.swift
//  Coordinates
//
//  Created by Richard Barnes on 8/30/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var coordinateViewModel: CoordinateViewModel
    @State var latitude = "0"
    @State var longitude = "0"
    @State var selection: Int? = nil

    var body: some View {
        VStack {
            Text("Coordinates")
                .font(.title)
            NavigationView {
                List(coordinateViewModel.coordinates) { coord in
                    NavigationLink(destination: MapView(annotation: coord)) {
                        Text(coord.title)
                    }
                }
                
            }
            .tint(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coordinateViewModel: CoordinateViewModel(dataSource: JSONDataSource()))
    }
}


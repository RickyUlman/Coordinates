//
//  MapView.swift
//  Coordinates
//
//  Created by Richard Barnes on 8/30/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var region: MKCoordinateRegion
    @State var annotations: [Coordinate]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
            MapAnnotation(coordinate: annotation.coordinate) {
                Image(systemName: "mappin.and.ellipse")
                    .font(.title)
                    .foregroundColor(.black)
                    .cornerRadius(20)
            }
        }
            .edgesIgnoringSafeArea(.all)
    }

    init(annotation: Coordinate) {
        self.region = MKCoordinateRegion(center: annotation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.annotations = [annotation]
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(annotation: Coordinate(title: "Test", latitude: 40.6892, longitude: -74.0445))
    }
}

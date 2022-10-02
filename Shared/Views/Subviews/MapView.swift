//
//  MapView.swift
//  ExploreSwiftUI
//
//  Created by Kathelyss on 02.10.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion()

    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate,
                                    span: .init(latitudeDelta: 0.2,
                                                longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: .init(latitude: 34.011_286,
                                  longitude: -116.166_868))
    }
}

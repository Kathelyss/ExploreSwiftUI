//
//  Landmark.swift
//  ExploreSwiftUI (iOS)
//
//  Created by Kathelyss on 02.10.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    
    private var imageName: String
    var image: Image {
        .init(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        .init(latitude: coordinates.latitude,
              longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        let latitude: Double
        let longitude: Double
    }
}

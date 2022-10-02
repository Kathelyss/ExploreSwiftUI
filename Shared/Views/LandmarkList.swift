//
//  LandmarkList.swift
//  ExploreSwiftUI (iOS)
//
//  Created by Kathelyss on 02.10.2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

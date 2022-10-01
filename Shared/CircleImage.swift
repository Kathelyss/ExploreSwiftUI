//
//  CircleImage.swift
//  ExploreSwiftUI
//
//  Created by Kathelyss on 02.10.2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.green, lineWidth: 4)
            }
            .shadow(color: .gray, radius: 7, x: 0, y: 4)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
//
//  CircleImage.swift
//  ExploreSwiftUI
//
//  Created by Kathelyss on 02.10.2022.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: .init("turtlerock"))
    }
}

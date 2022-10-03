//
//  BadgeBackground.swift
//  ExploreSwiftUI (iOS)
//
//  Created by Katik on 03.10.2022.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                let startPoint = CGPoint(x: width * 0.95 + xOffset,
                                         y: height * (0.2 + HexagonParameters.adjustment))
                path.move(to: startPoint)
                
                HexagonParameters.segments.forEach { segment in
                    let nextPoint = CGPoint(x: width * segment.line.x + xOffset,
                                            y: height * segment.line.y)
                    path.addLine(to: nextPoint)
                    let curveEndPoint = CGPoint(x: width * segment.curve.x + xOffset,
                                                y: height * segment.curve.y)
                    let controlPoint = CGPoint(x: width * segment.control.x + xOffset,
                                               y: height * segment.control.y)
                    path.addQuadCurve(to: curveEndPoint, control: controlPoint)
                }
            }
            .fill(.linearGradient(
                Gradient(colors: [Self.lightGreenColor, Self.lightBlueColor]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 0.6)
            ))
        }
        .aspectRatio(1, contentMode: .fit)
    }
    
    static let lightGreenColor = Color(red: 0.0,
                                       green: 1.0,
                                       blue: 0.0)
    static let lightBlueColor = Color(red: 0.2,
                                      green: 0.8,
                                      blue: 1.0)
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}

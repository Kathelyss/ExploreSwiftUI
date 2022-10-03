//
//  HexagonParameters.swift
//  ExploreSwiftUI (iOS)
//
//  Created by Kathelyss on 03.10.2022.
//

import Foundation
import CoreGraphics

struct HexagonParameters {
    
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.085
    
    static let segments: [Segment] = [
        .init(line: CGPoint(x: 0.60, y: 0.05),
              curve: CGPoint(x: 0.40, y: 0.05),
              control: CGPoint(x: 0.50, y: 0.00)),
        .init(line: CGPoint(x: 0.05, y: 0.20 + adjustment),
              curve: CGPoint(x: 0.00, y: 0.30 + adjustment),
              control: CGPoint(x: 0.00, y: 0.25 + adjustment)),
        .init(line: CGPoint(x: 0.00, y: 0.70 - adjustment),
              curve: CGPoint(x: 0.05, y: 0.80 - adjustment),
              control: CGPoint(x: 0.00, y: 0.75 - adjustment)),
        .init(line: CGPoint(x: 0.40, y: 0.95),
              curve: CGPoint(x: 0.60, y: 0.95),
              control: CGPoint(x: 0.50, y: 1.00)),
        .init(line: CGPoint(x: 0.95, y: 0.80 - adjustment),
              curve: CGPoint(x: 1.00, y: 0.70 - adjustment),
              control: CGPoint(x: 1.00, y: 0.75 - adjustment)),
        .init(line: CGPoint(x: 1.00, y: 0.30 + adjustment),
              curve: CGPoint(x: 0.95, y: 0.20 + adjustment),
              control: CGPoint(x: 1.00, y: 0.25 + adjustment))
    ]
}

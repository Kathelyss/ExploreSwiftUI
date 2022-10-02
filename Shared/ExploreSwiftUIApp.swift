//
//  ExploreSwiftUIApp.swift
//  Shared
//
//  Created by Kathelyss on 01.10.2022.
//

import SwiftUI

@main
struct ExploreSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

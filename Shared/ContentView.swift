//
//  ContentView.swift
//  Shared
//
//  Created by Katik on 01.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Explore SwiftUI!")
            .foregroundColor(.mint)
            .font(.largeTitle)
            .italic()
            .bold()
            .underline()
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

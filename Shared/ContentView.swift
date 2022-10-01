//
//  ContentView.swift
//  Shared
//
//  Created by Katik on 01.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Turtle Rock")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.mint)
                .italic()
                .bold()
                .underline()
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                .foregroundColor(.green)
                Spacer()
                Text("California")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
        })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

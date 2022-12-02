//
//  ContentView.swift
//  tic tac toe
//
//  Created by Sora on 10/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = Array(repeating: "", count: 9)
    var body: some View {
        VStack {
            Text("Tic Tac Toe")
                .preferredColorScheme(.dark)
                .foregroundColor(.accentColor)
            VStack {
                LazyVGrid(columns: Array(repeating: GridItem(.fixed(120), spacing: 15), count: 3), spacing: 15) {
                    ForEach(0..<9) { index in
                        ZStack {
                            Color.blue
                            Text(moves[index])
                                .font(.system(size: 90))
                                .fontWeight(.heavy)
                        }
                        .frame(width: 120, height: 120, alignment: .center)
                        .cornerRadius(30)
                        .onTapGesture {
                            moves[index] = "X"
                        }
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

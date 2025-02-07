//
//  ContentView.swift
//  Navigation
//
//  Created by TaeVon Lewis on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0, path: $pathStore.path)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i, path: $pathStore.path)
                        .toolbar {
                            Button("Home") {
                                pathStore = PathStore()
                            }
                        }
                }
        }
    }
}

#Preview {
    ContentView()
}

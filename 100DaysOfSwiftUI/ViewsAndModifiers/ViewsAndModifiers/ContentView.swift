//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by TaeVon Lewis on 10/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("aji")
            .titleStyle()
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
        
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}
#Preview {
    ContentView()
}

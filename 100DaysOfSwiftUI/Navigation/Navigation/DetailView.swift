//
//  DetailView.swift
//  Navigation
//
//  Created by TaeVon Lewis on 1/30/25.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    @Binding var path: NavigationPath
    
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
    }
}

#Preview {
    @Previewable @State var path = NavigationPath()
    
    DetailView(number: 5, path: $path)
}

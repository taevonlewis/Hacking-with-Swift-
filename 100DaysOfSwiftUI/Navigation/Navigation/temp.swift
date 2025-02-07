//
//  temp.swift
//  Navigation
//
//  Created by TaeVon Lewis on 2/7/25.
//

import SwiftUI

struct temp: View {
    @State private var title = "SwiftUI"

    var body: some View {
        NavigationStack {
            Text("Hello, world!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    temp()
}

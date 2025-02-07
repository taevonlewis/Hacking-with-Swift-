//
//  ContentView.swift
//  Moonshot
//
//  Created by TaeVon Lewis on 10/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showList = false
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            Group {
                if showList {
                    List(missions) { mission in
                        MissionRowView(mission: mission, astronauts: astronauts)
                            .listStyle(.plain)
                            .listRowBackground(Color.darkBackground)
                            .padding(.vertical, 8)
                    }
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(missions) { mission in
                                MissionRowView(mission: mission, astronauts: astronauts)
                            }
                        }
                        .padding([.horizontal, .bottom])
                    }
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Toggle(showList ? "Grid view" : "List view", isOn: $showList)
                }
            }
            .navigationDestination(for: Mission.self) { mission in
                MissionView(mission: mission, astronauts: astronauts)
            }
        }
    }
}

#Preview {
    ContentView()
}

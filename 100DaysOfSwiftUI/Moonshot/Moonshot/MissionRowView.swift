//
//  MissionRowView.swift
//  Moonshot
//
//  Created by TaeVon Lewis on 1/27/25.
//

import SwiftUI

struct MissionRowView: View {
    let mission: Mission
    let astronauts: [String: Astronaut]
    
    var body: some View {
        NavigationLink(value: mission) {
            MissionCardView(mission: mission)
                .clipShape(.rect(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(.lightBackground)
                )
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    MissionRowView(mission: missions[0], astronauts: astronauts)
}

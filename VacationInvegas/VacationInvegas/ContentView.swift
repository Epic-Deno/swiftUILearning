//
//  ContentView.swift
//  VacationInvegas
//
//  Created by 张朕 on 2024/12/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Places", systemImage: "photo") {
                PlaceList()
            }
            
            Tab("Trips History", systemImage: "chart.line.uptrend.xyaxis") {
                TripsChart()
            }
        }
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
        .modelContainer(Place.preview)
}

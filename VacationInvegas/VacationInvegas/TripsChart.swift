//
//  ContentView.swift
//  VacationInvegas
//
//  Created by 张朕 on 2024/12/25.
//

import SwiftUI
import Charts

struct SampleTripRating {
    let trip: Int
    let rating: Int
    
    static let ratings: [SampleTripRating] = [
        SampleTripRating(trip: 1, rating: 55),
        SampleTripRating(trip: 2, rating: 27),
        SampleTripRating(trip: 3, rating: 67),
        SampleTripRating(trip: 4, rating: 72),
        SampleTripRating(trip: 5, rating: 81),
    ]
}

struct TripsChart: View {
    var body: some View {
        Chart(SampleRating.ratings, id: \.place) { rating in
            SectorMark(angle: .value("Ratings", rating.rating), innerRadius: .ratio(0.6), angularInset: 1)
                .cornerRadius(7)
                .foregroundStyle(by: .value("place",rating.place))
        }
        .padding()
        .frame(height: 500)
    }
}

#Preview {
    TripsChart()
}

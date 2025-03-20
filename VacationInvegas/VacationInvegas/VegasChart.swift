//
//  ContentView.swift
//  VacationInvegas
//
//  Created by 张朕 on 2024/12/25.
//

import SwiftUI
import Charts

struct SampleRating {
    let place: String
    let rating: Int
    
    static let ratings: [SampleRating] = [
        SampleRating(place: "Nanjing", rating: 88),
        SampleRating(place: "ShangHai", rating: 76),
        SampleRating(place: "Beijing", rating: 33),
        SampleRating(place: "TaiWang", rating: 99),
    ]
}

struct VegasChart: View {
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
    VegasChart()
}

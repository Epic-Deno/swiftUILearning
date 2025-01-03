//
//  ContentView.swift
//  VacationInvegas
//
//  Created by 张朕 on 2024/12/25.
//

import SwiftUI
import SwiftData

struct PlaceList: View {
    @Query(sort: \Place.name) private var places: [Place]
    
    @State private var showImage = false
    
    var body: some View {
        NavigationStack{
            List(places) { place in
                HStack {
                    place.image
                        .resizable()
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 7))
                        .frame(width: 100, height: 100)
                    
                    Text(place.name)
                    
                    Spacer()
                    
                    if place.interested {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .padding(.trailing)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Show Images", systemImage: "photo") {
                        showImage.toggle()
                    }
                }
            }
            .sheet(isPresented: $showImage) {
                Scrolling()
            }
        }
    }
}

#Preview {
    PlaceList()
        .modelContainer(Place.preview)
}

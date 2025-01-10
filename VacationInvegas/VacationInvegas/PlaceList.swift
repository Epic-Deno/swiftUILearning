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
    @State private var  serachText = ""
    @State private var filterByInterested = false
    
    private var predicate: Predicate<Place> {
        #Predicate<Place> {
            if  !serachText.isEmpty && filterByInterested {
                $0.name.localizedStandardContains(serachText) && $0.interested
            } else if !serachText.isEmpty {
                $0.name.localizedStandardContains(serachText)
            } else if filterByInterested {
                $0.interested
            } else {
                true
            }
        }
        
    }
    
    var body: some View {
        NavigationStack{
            List((try? places.filter(predicate)) ?? places) { place in
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
            .navigationTitle("Places")
            .searchable(text: $serachText, prompt: "Find in place")
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

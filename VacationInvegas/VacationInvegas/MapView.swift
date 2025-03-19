//
//  ContentView.swift
//  VacationInvegas
//
//  Created by 张朕 on 2024/12/25.
//

import SwiftUI
import MapKit


struct MapView: View {
    var place: Place
    
    @State var position: MapCameraPosition
    
    var body: some View {
        Map(position: $position) {
            Annotation(place.interested ? "Place of Interseted" : "Not Interseted", coordinate: place.loaction) {
                ZStack {
                    RoundedRectangle(cornerRadius: 7).fill(.ultraThinMaterial).stroke(.secondary, lineWidth: 5)
                    Image(systemName: place.interested ? "face.smiling" : "hand.thumbsdown").foregroundStyle(place.interested ? .yellow : .gray).padding(5)
                }
                .onTapGesture {
                    place.interested.toggle()
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var place = Place.previewPlace[1]
    
    MapView(place: place, position: .camera(MapCamera(
        centerCoordinate: place.loaction, distance: 1000, heading: 250, pitch: 80)))
}

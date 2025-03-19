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
        Map(position: $position)
    }
}

#Preview {
    @Previewable @State var place = Place.previewPlace[2]
    
    MapView(place: place, position: .camera(MapCamera(
        centerCoordinate: place.loaction, distance: 1000, heading: 250, pitch: 80)))
}

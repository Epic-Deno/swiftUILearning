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
        Map()
    }
}

#Preview {
    MapView(place: Place.previewPlace[0], position: .camera(MapCamera(
        centerCoordinate: Place.previewPlace[0].loaction, distance: 1000, heading: 250, pitch: 80)))
}

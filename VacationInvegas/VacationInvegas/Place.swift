//
//  Place.swift
//  VacationInvegas
//
//  Created by 张朕 on 2024/12/26.
//

import SwiftData
import SwiftUI
import MapKit

@Model
class Place {
    #Unique<Place>([\.name, \.latitude, \.longitude])
    
    @Attribute(.unique) var name: String
    var latitude: Double
    var longitude: Double
    var interested: Bool
    
    var loaction: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    var image: Image {
        Image(name.lowercased().replacingOccurrences(of: " ", with: ""))
    }
    
    // "FangChengBao", "SU 7"
    init(name: String, latitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
    }
    
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Place.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        for place in previewPlace {
            container.mainContext.insert(place)
        }
        return container
    }
    
    static var previewPlace: [Place] {
        [
            Place(name: "FangChengBao", latitude: 36.1129, longitude: -115.1765, interested: true),
            Place(name: "SuSeven", latitude: 36.1125, longitude: -115.1707, interested: true),
            Place(name: "YangWang", latitude: 36.1247, longitude: -115.1721, interested: true),
            Place(name: "YUSeven", latitude: 36.0955, longitude: -115.1761, interested: false)
        ]
    }
}

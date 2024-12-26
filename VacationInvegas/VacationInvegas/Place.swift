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
}

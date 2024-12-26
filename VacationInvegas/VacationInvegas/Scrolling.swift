//
//  ScrollImages.swift
//  VacationInvegas
//
//  Created by 张朕 on 2024/12/26.
//

import SwiftUI

struct Scrolling: View {
    var body: some View {
        ScrollView {
            VStack {
                ScrollImage(image: .yangWang)
                
                ScrollImage(image: .uSeven)
                
                ScrollImage(image: .su761)
                
                ScrollImage(image: ._05_03)
                
                ScrollImage(image: ._05_04)
                
                ScrollImage(image: ._03_08_1)
            }
            .padding()
        }
    }
}

#Preview {
    Scrolling()
}

//
//  ContentView.swift
//  VacationInvegas
//
//  Created by 张朕 on 2024/12/25.
//

import SwiftUI

struct Symbols: View {
    @State private var shouldBounce = false
    @State private var shouldRoate = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.pulse)
            
            Image(systemName: "airplane")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.teal)
                .symbolEffect(.wiggle)
            
            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.purple)
                .symbolEffect(.variableColor.reversing)
            
            Image(systemName: "person.crop.circle.badge.plus")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.bounce, value: shouldBounce)
                .onTapGesture {
                    shouldBounce.toggle()
                }
            
            Image(systemName: "cloud.sun.rain.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.gray, .yellow, .mint)
                .symbolEffect(.bounce, value: shouldBounce)
                .onTapGesture {
                    shouldBounce.toggle()
                }
            Image(systemName: "arrow.clockwise.square")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.blue.mix(with: .red, by: 0.25))
                .symbolEffect(.rotate, value: shouldRoate)
                .onTapGesture {
                    shouldRoate.toggle()
                }
            
            Image(systemName: "sun.max.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.yellow)
                .symbolEffect(.breathe)
        }
        .padding()
    }
}

#Preview {
    Symbols()
}

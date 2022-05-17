//
//  SliderValue.swift
//  Sliders-SwiftUI
//
//  Created by Алексей Синяговский on 17.05.2022.
//

import SwiftUI

struct SliderValue: View {
    
    @Binding var value: Double
    
    let colorTrack: Color
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .accentColor(colorTrack)
    }
}


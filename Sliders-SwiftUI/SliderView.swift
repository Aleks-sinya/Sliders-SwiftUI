//
//  SliderView.swift
//  Sliders-SwiftUI
//
//  Created by Алексей Синяговский on 17.05.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    @Binding var valueTextField: String
    
    let colorTrack: Color
    
    var body: some View {
        HStack {
            TextValueView(textValue: value)
            SliderValue(value: $value, colorTrack: colorTrack)
            TextFieldValue(valueTextField: $valueTextField, placeHolderTextField: value) {
                self.value = Double(self.valueTextField) ?? 0
            }
        }
    }
}

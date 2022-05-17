//
//  ContentView.swift
//  Sliders-SwiftUI
//
//  Created by Алексей Синяговский on 17.05.2022.
//

import SwiftUI


struct ContentView: View {
    
    @State private var redValueTextField = ""
    @State private var greenValueTextField = ""
    @State private var blueValueTextField = ""
    
    @State private var redValue: Double = 99
    @State private var greenValue: Double = 184
    @State private var blueValue: Double = 178
    
    
    var body: some View {
        VStack {
            MainRGBView(red: redValue, green: greenValue, blue: blueValue)
            VStack {
                SliderView(value: $redValue, valueTextField: $redValueTextField, colorTrack: .red)
                SliderView(value: $greenValue, valueTextField: $greenValueTextField, colorTrack: .green)
                SliderView(value: $blueValue, valueTextField: $blueValueTextField, colorTrack: .blue)
                Spacer()
            }
            .padding(.top, 32)
        }
        .background(.indigo)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

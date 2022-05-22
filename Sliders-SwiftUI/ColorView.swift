//
//  MainRGBView.swift
//  Sliders-SwiftUI
//
//  Created by Алексей Синяговский on 17.05.2022.
//

import SwiftUI

struct ColorView: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(20)
            .frame(width: 130)
            .overlay(
                RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 4)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 77, green: 77, blue: 77)
    }
}

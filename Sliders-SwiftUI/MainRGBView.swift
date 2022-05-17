//
//  MainRGBView.swift
//  Sliders-SwiftUI
//
//  Created by Алексей Синяговский on 17.05.2022.
//

import SwiftUI

struct MainRGBView: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(width: 300, height: 150)
            .clipShape(Rectangle())
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
            .cornerRadius(15)
    }
}

struct MainRGBView_Previews: PreviewProvider {
    static var previews: some View {
        MainRGBView(red: 77, green: 77, blue: 77)
    }
}

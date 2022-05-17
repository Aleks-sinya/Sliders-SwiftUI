//
//  TextValueView.swift
//  Sliders-SwiftUI
//
//  Created by Алексей Синяговский on 17.05.2022.
//

import SwiftUI

struct TextValueView: View {
    
    var textValue: Double
    
    var body: some View {
        Text("\(lround(textValue))")
            .foregroundColor(.white)
            .frame(width: 70)
            .font(.headline)
    }
}

struct TextValueView_Previews: PreviewProvider {
    static var previews: some View {
        TextValueView(textValue: 255)
    }
}

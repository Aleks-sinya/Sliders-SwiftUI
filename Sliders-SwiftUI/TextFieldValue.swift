//
//  TextFieldValue.swift
//  Sliders-SwiftUI
//
//  Created by Алексей Синяговский on 17.05.2022.
//

import SwiftUI

struct TextFieldValue: View {
    
    @Binding var valueTextField: String
    
    var placeHolderTextField: Double
    
    var commit: () -> () = {}
    
    var body: some View {
        TextField("\(lround(placeHolderTextField))",
                  text: $valueTextField,
                  onCommit: commit)
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
        .background(RoundedRectangle(cornerRadius: 10).fill(.white))
        .foregroundColor(.black)
        .frame(width: 70)
        .padding(.trailing, 16)
    }
}



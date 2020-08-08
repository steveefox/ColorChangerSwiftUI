//
//  ColorSliderTextField.swift
//  ColorChangerSwiftUI
//
//  Created by Nikita on 8/8/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import SwiftUI

struct ColorSliderTextField: View {
    @Binding var textValue: String
    @Binding var value: Double
    var borderColor: Color
    
    func updateValues() {
        guard let doubleValue = Double(self.textValue) else {
            self.value = 0
            self.textValue = ""
            return
        }
        if doubleValue > 255 {
            self.value = 255.0
            self.textValue = ""
        } else if doubleValue < 0 {
            self.value = 255.0
            self.textValue = ""
        } else {
            self.value = Double(lround(doubleValue))
            self.textValue = ""
        }
    }
    
}


extension ColorSliderTextField {
    var body: some View {
        
        TextField("\(lround(value))", text: $textValue) {
            self.updateValues()
        }
        .frame(width: 55, alignment: .trailing)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(borderColor, lineWidth: 1))
        .multilineTextAlignment(.center)
        .keyboardType(.decimalPad)
        
    }

}


struct ColorSliderTextField_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderTextField(textValue: .constant(""), value: .constant(123.0), borderColor: .red)
    }
}

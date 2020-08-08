//
//  ColorSliderStack.swift
//  ColorChangerSwiftUI
//
//  Created by Nikita on 8/8/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import SwiftUI

struct ColorSliderStack: View {
    @Binding var value: Double
    @State var textValue: String
    
    
    var color: Color
    var borderColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
            
            Slider(value: $value, in: 0...255, step: 1) { _ in
//                self.textValue = "\(lround(self.value))"
            }
                .accentColor(color)
                .padding()
            ColorSliderTextField(textValue: $textValue, value: $value, borderColor: borderColor)
        }
        .padding(.horizontal)
    }
}


struct SliderStack_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderStack(value: .constant(10), textValue: "", color: .red, borderColor: .red)
    }
}

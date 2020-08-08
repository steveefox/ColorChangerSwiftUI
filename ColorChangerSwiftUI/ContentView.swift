//
//  ContentView.swift
//  ColorChangerSwiftUI
//
//  Created by Nikita on 8/8/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var redColorValue = Double.random(in: 0...255)
    @State private var greenColorValue = Double.random(in: 0...255)
    @State private var blueColorValue = Double.random(in: 0...255)
    
    
}


extension ContentView {
    
    var body: some View {
        VStack {
            ColorView(redValue: redColorValue, greenValue: greenColorValue, blueValue: blueColorValue)
            
            ColorSliderStack(value: $redColorValue, textValue: "", color: .red, borderColor: .red)
            ColorSliderStack(value: $greenColorValue, textValue: "", color: .green, borderColor: .green)
            ColorSliderStack(value: $blueColorValue, textValue: "", color: .blue, borderColor: .blue)
            Spacer()
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

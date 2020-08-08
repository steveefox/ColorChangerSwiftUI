//
//  ColorView.swift
//  ColorChangerSwiftUI
//
//  Created by Nikita on 8/8/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    
    var redValue: Double
    var greenValue: Double
    var blueValue: Double
    
    var body: some View {
        Color(red: redValue / 255,
              green: greenValue / 255,
              blue: blueValue / 255)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 8))
        .frame(width: 300, height: 150)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redValue: 20 / 255, greenValue: 50 / 255, blueValue: 155 / 255)
    }
}

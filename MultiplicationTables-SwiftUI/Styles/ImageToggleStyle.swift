//
//  ImageToggleStyle.swift
//  MultiplicationTables-SwiftUI
//
//  Created by Mike Jarosch on 12/19/20.
//

import SwiftUI

struct ImageToggleStyle: ToggleStyle {
    let image: String
    let pressedImage: String? = nil
    let disabledImage: String? = nil
    
    func makeBody(configuration: Configuration) -> some View {
        let imageName = configuration.isOn ? (pressedImage ?? "\(image)-pressed") : image
        let shadowColor = configuration.isOn ? Color.yellow : Color.white
        let textColor = configuration.isOn ? Color.white : Color(.darkGray)

        return configuration.label
            .shadow(color: shadowColor, radius: 2, x: 0, y: configuration.isOn ? -2 : 2)
            .foregroundColor(textColor)
            .frame(minWidth: 44, minHeight: 44)
            .padding(.horizontal)
            .background(Image(imageName))
            .font(Font.body.weight(.bold))
            .onTapGesture {
                configuration.isOn.toggle()
            }
    }
}

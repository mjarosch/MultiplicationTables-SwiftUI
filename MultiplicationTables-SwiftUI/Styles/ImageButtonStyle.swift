//
//  ImageButton.swift
//  MultiplicationTables-SwiftUI
//
//  Created by Mike Jarosch on 12/19/20.
//

import SwiftUI

struct ImageButtonStyle: ButtonStyle {
    let image: String
    let pressedImage: String? = nil
    let disabledImage: String? = nil
    
    func makeBody(configuration: Configuration) -> some View {
        let imageName = configuration.isPressed ? (pressedImage ?? "\(image)-pressed") : image
        let shadowColor = configuration.isPressed ? Color.yellow : Color.gray
        //let color = configuration.isPressed ? Color.yellow : Color.white
        
        return configuration.label
            .shadow(color: shadowColor, radius: 2, x: 0, y: configuration.isPressed ? -2 : 2)
            .foregroundColor(.white)
            .frame(minWidth: 44, minHeight: 44)
            .padding(.horizontal)
            .background(Image(imageName))
            .font(Font.body.weight(.bold))
    }
}

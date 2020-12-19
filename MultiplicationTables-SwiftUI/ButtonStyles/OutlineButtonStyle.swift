//
//  OutlineButtonStyle.swift
//  MultiplicationTables-SwiftUI
//
//  Created by Mike Jarosch on 12/18/20.
//

import SwiftUI

struct OutlineButtonStyle: ButtonStyle {
    private let width: CGFloat?
    
    init(width: CGFloat? = nil) {
        self.width = width
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.accentColor)
            .frame(width: width)
            .frame(minWidth: 44, minHeight: 44)
            .padding(.horizontal)
            .background(RoundedRectangle(cornerRadius: 20).stroke(Color.accentColor))
    }
}

//
//  View.swift
//  MultiplicationTables-SwiftUI
//
//  Created by Mike Jarosch on 12/18/20.
//

import SwiftUI

extension View {
    func roundedBorder<S>(_ content: S, cornerRadius: CGFloat, width: CGFloat = 1) -> some View where S : ShapeStyle {
        self.overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(content, lineWidth: width)
        )
    }
}

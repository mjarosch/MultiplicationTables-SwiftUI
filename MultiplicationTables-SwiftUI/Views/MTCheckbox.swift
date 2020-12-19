//
//  MTCheckbox.swift
//  MultiplicationTables-SwiftUI
//
//  Created by Mike Jarosch on 12/18/20.
//

import SwiftUI

struct MTCheckbox: View {
    let label: String

    @Binding var checked: Bool

    var body: some View {
        Button(label) {
            checked.toggle()
        }
        .buttonStyle(OutlineButtonStyle())
        .accentColor(checked ? .accentColor : .secondary)
    }
}

struct MTCheckbox_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            MTCheckbox(label: "1", checked: .constant(false))
                .frame(width: 100)
            MTCheckbox(label: "1", checked: .constant(true))
                .frame(width: 100)
        }
    }
}

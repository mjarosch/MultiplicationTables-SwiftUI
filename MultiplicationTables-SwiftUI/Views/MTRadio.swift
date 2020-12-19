//
//  MTRadio.swift
//  MultiplicationTables-SwiftUI
//
//  Created by Mike Jarosch on 12/18/20.
//

import SwiftUI

struct MTRadio<SelectionValue, Content>: View where SelectionValue : Hashable, Content : View {
    var selection: Binding<SelectionValue>
    var content: () -> Content
    
    public init(selection: Binding<SelectionValue>, @ViewBuilder content: @escaping () -> Content) {
        self.selection = selection
        self.content = content
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MTRadio_Previews: PreviewProvider {
    static var previews: some View {
        MTRadio(selection: .constant(0)) {
            
        }
    }
}

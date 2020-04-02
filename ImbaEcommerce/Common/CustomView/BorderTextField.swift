//
//  BorderTextField.swift
//  ImbaEcommerce
//
//  Created by Nguyen Thanh Trung on 4/2/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct BorderTextField: View {
    
    @Binding var value: String
    
    var placeholder = "Placeholder"
    var icon = Image(systemName: "person.crop.circle")
    var color = Color("lightGrayColor")
    var isSecure: Bool = false
    var keyboardType: UIKeyboardType = .default
    var onEditingChanged: ((Bool) -> ()) = {_ in}
    
    var body: some View {
        HStack {
            if isSecure{
                SecureField(placeholder, text: self.$value, onCommit: {
                    self.onEditingChanged(false)
                }).padding()
            } else {
                TextField(placeholder, text: self.$value, onEditingChanged: { flag in
                    self.onEditingChanged(flag)
                })
                .padding()
                .keyboardType(keyboardType)
            }
            
            icon.imageScale(.large)
                .padding()
                .foregroundColor(color)
        }
        .background(color.opacity(0.2))
        .clipShape(Capsule())
    }
}

struct BorderTextField_Previews: PreviewProvider {
    static var previews: some View {
        BorderTextField(value: .constant(""))
    }
}

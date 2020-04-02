//
//  LoginView.swift
//  ImbaEcommerce
//
//  Created by Nguyen Thanh Trung on 4/2/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var formOffset: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 40.0) {
            Image("Logo")
                .resizable()
                .frame(width: 85, height: 22)
            Text("Login").font(.title).bold()
            VStack {
                BorderTextField(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"), keyboardType: .emailAddress, onEditingChanged: { flag in withAnimation {
                        self.formOffset = flag ? -150 : 0
                    }
                })
                
                BorderTextField(value: self.$email, placeholder: "Password", icon: Image(systemName: "lock"), isSecure: true, onEditingChanged: { flag in withAnimation {
                    
                    }
                })
                
                BorderButton(text: "Login", action: {
                    
                })
            }
        }
        .padding()
        .offset(y: self.formOffset)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

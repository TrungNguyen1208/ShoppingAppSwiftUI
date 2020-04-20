//
//  SignUpView.swift
//  ImbaEcommerce
//
//  Created by Nguyen Thanh Trung on 4/20/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmedPassword = ""
    
    @State private var formOffset: CGFloat = 0
    
    @Binding var presentSignupSheet: Bool
    
    var body: some View {
        VStack(spacing: 40.0) {
            Image("Logo")
                .resizable()
                .frame(width: 170, height: 44)
            
            Text("Sign Up").font(.title).bold()
            
            VStack(spacing: 10.0) {
                BorderTextField(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"), onEditingChanged: { flag in withAnimation {
                        self.formOffset = flag ? -150 : 0
                    }
                })
                BorderTextField(value: self.$password, placeholder: "Password", icon: Image(systemName: "lock"), isSecure: true)
                BorderTextField(value: self.$confirmedPassword, placeholder: "Confirm Password", icon: Image(systemName: "lock.rotation"), isSecure: true)
                BorderButton(text: "Sign up") {
                    
                }
            }
            
            Button(action: {
                self.presentSignupSheet.toggle()
            }) {
                Text("Already have an account?").accentColor(Color.darkBlue)
            }
            
            
        }
        .padding()
        .offset(y: self.formOffset)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(presentSignupSheet: .constant(false))
    }
}

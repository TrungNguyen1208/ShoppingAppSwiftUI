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
    
    @State private var presentSignupSheet = false
    @State private var presentPasswordRecoverySheet = false
    
    var body: some View {
        VStack(spacing: 40.0) {
            Image("Logo")
                .resizable()
                .frame(width: 170, height: 44)
            Text("Login").font(.title).bold()
            VStack(spacing: 10.0) {
                BorderTextField(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"), keyboardType: .emailAddress, onEditingChanged: { flag in withAnimation {
                    self.formOffset = flag ? -150 : 0
                    }
                })
                
                BorderTextField(value: self.$password, placeholder: "Password", icon: Image(systemName: "lock"), isSecure: true, onEditingChanged: { flag in withAnimation {
                    
                    }
                })
                
                BorderButton(text: "Login", action: {
                    
                })
            }
            
            Button(action: {
                self.presentSignupSheet.toggle()
            }) {
                Text("Don't have an account? Sign up.")
                    .font(.fontWithType(.bold, size: 16))
                    .accentColor(Color.black)
            }.sheet(isPresented: self.$presentSignupSheet) {
                SignUpView(presentSignupSheet: self.$presentSignupSheet)
            }
            
            Button(action: {
                self.presentPasswordRecoverySheet.toggle()
            }) {
                Text("Forgot your password?")
                    .font(.fontWithType(.medium, size: 16))
                    .accentColor(Color.darkBlue)
            }.sheet(isPresented: self.$presentPasswordRecoverySheet) {
                ForgotPasswordView(presentPasswordRecoverySheet: self.$presentPasswordRecoverySheet)
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

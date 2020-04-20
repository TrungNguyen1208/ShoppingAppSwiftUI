//
//  ForgotPasswordView.swift
//  ImbaEcommerce
//
//  Created by Nguyen Thanh Trung on 3/30/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State private var email: String = ""
    @Binding var presentPasswordRecoverySheet: Bool
    
    var body: some View {
        VStack(spacing: 40) {
            Image("Logo")
                .resizable()
                .frame(width: 170, height: 44)
            Text("Recover Password").font(.title).bold()
            
            VStack(spacing: 10.0) {
                BorderTextField(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"), keyboardType: .emailAddress)
                BorderButton(text: "Reset Password") {
                    
                }
            }
            
            Button(action: {
                self.presentPasswordRecoverySheet.toggle()
            }) {
                Text("Cancel")
                    .font(.fontWithType(.bold, size: 16))
                    .accentColor(Color.mainColor)
            }
        }
        .padding()
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(presentPasswordRecoverySheet: .constant(false))
    }
}

//
//  BorderButton.swift
//  ImbaEcommerce
//
//  Created by Nguyen Thanh Trung on 3/31/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct BorderButton: View {
    
    var text = "Next"
    var action: (()->()) = {}
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            HStack {
                Text(text)
                .bold()
                .frame(minWidth:0, maxWidth: .infinity)
                .padding(.vertical)
                .accentColor(.white)
                .background(Color.mainColor)
                .cornerRadius(30)
            }
        }
    }
}

struct BorderButton_Previews: PreviewProvider {
    static var previews: some View {
        BorderButton()
    }
}

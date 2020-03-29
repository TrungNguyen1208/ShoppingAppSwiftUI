//
//  ContentView.swift
//  Imba Ecommerce
//
//  Created by Nguyen Thanh Trung on 3/28/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.fontWithType(.semibold, size: 28))
            Text("Hello, World!")
                .font(.system(size: 28))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

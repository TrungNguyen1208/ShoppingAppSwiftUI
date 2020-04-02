//
//  WalkThoughtView.swift
//  Imba Ecommerce
//
//  Created by Nguyen Thanh Trung on 3/29/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct WalkThoughtView: View {
    
    @State var show = false
    //    private let initialLaunchKey = "isInitialLaunch"
    
    var body: some View {
        VStack {
            if show {
                LoginView().transition(.move(edge: .bottom))
            } else {
                PageViewContainer( viewControllers: Page.getAll.map({  UIHostingController(rootView: PageView(page: $0) ) }), didTouchFinishButton: {
                    withAnimation {
                        self.show = true
                    }
                    //                UserDefaults.standard.set(true, forKey: self.initialLaunchKey)
                }).transition(.scale)
            }
        }
        .frame(maxHeight:.infinity)
        .background(Color.backgroundColor)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

struct WalkThoughtView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WalkThoughtView()
            WalkThoughtView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
            WalkThoughtView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
            
        }
    }
}

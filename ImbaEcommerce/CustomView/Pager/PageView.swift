//
//  PagerView.swift
//  Imba Ecommerce
//
//  Created by Nguyen Thanh Trung on 3/29/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct PageView: View {
    
    var page = Page.getAll.first!
    let isIphoneSE: Bool = DeviceGuru().isUnderLineIphoneSE();
    
    var body: some View {
        
        GeometryReader { geo in
            VStack(spacing: self.isIphoneSE ? 15.0 : 30.0) {
                Image(self.page.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width - 60)
                
                VStack(spacing: self.isIphoneSE ? 5 : 15.0) {
                    Text(self.page.heading)
                        .font(.fontWithType(.medium, size: self.isIphoneSE ? 22 : 24))
                        .foregroundColor(.mainColor)
                        .layoutPriority(1)
                        .multilineTextAlignment(.center)
                    Text(self.page.subHeading)
                        .font(.fontWithType(.regular, size: self.isIphoneSE ? 14 : 16))
                        .foregroundColor(.subColor)
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal, 30)
            }
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PageView()
            
            PageView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
        }
    }
}

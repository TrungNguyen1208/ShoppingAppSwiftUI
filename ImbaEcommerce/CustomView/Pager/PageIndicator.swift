//
//  PageIndicator.swift
//  Imba Ecommerce
//
//  Created by Nguyen Thanh Trung on 3/29/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct PageIndicator: View {
    
    var currentIndex: Int = 0
    var pagesCount: Int = 4
    var onColor: Color = Color.mainColor
    var offColor: Color = Color.offColor
    var diameter: CGFloat = 10
    
    var body: some View {
        HStack {
            ForEach(0..<pagesCount) { index in
                Image(systemName: "circle.fill").resizable()
                    .foregroundColor(index == self.currentIndex ? self.onColor : self.offColor)
                    .frame(width: self.diameter, height: self.diameter)
            }
        }
    }
}

struct PageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicator()
    }
}

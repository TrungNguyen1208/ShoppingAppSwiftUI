//
//  PageViewContainer.swift
//  Imba Ecommerce
//
//  Created by Nguyen Thanh Trung on 3/29/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import SwiftUI

struct PageViewContainer<Page: View>: View {
    
    let isIphoneSE: Bool = DeviceGuru().isUnderLineIphoneSE();
    
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    @State var buttonText = "Next"
    var didTouchFinishButton: (()->()) = {}
    
    var body: some View {
        return VStack {
            PageViewController(controllers: viewControllers, currentPage: self.$currentPage)
            
            PageIndicator(currentIndex: self.currentPage, pagesCount: viewControllers.count)
            
            Spacer(minLength: isIphoneSE ? 20 : 30)
            
            VStack {
                
                Button(action: {
                    if self.currentPage < self.viewControllers.count - 1 {
                        self.currentPage += 1
                    } else {
                        self.didTouchFinishButton()
                    }
                }) {
                    Text(currentPage == viewControllers.count - 1 ? "Get started" : "Next" )
                        .font(.fontWithType(.medium, size: 16))
                        .bold()
                        .frame(height: isIphoneSE ? 48.0 : 78.0)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .accentColor(Color.white)
                        .background(Color.mainColor)
                }
            }
            
        }
        .background(Color.backgroundColor)
    }
}

struct PageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PageViewContainer(viewControllers: Page.getAll.map({
                UIHostingController(rootView: PageView(page: $0))
            }))
            .previewDisplayName("iPhone Pro Max")
            
            PageViewContainer(viewControllers: Page.getAll.map({
                UIHostingController(rootView: PageView(page: $0))
            }))
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            .previewDisplayName("iPhone SE")
            
            PageViewContainer(viewControllers: Page.getAll.map({
                UIHostingController(rootView: PageView(page: $0))
            }))
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
        }
    }
}

//
//  Page.swift
//  Imba Ecommerce
//
//  Created by Nguyen Thanh Trung on 3/29/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import Foundation

struct Page: Identifiable {
    
    let id: UUID
    let image: String
    let heading: String
    let subHeading: String
    
    static var getAll: [Page] {
        [
            Page(id: UUID(), image: "walkthrought_1", heading: "Welcome", subHeading: "Free Beauty Samples What They Are And How To Find Them"),
            Page(id: UUID(), image: "walkthrought_2", heading: "Find Store", subHeading: "Knowing What Moisturizer To Use Is Knowing About Your Skin"),
            Page(id: UUID(), image: "walkthrought_3", heading: "Happy Shopping", subHeading: "Cosmetic Surgery A Review Of Facial Surgery With Personal"),
            
        ]
    }
    
}

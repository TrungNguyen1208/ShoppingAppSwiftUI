//
//  Font+Extension.swift
//  Imba Ecommerce
//
//  Created by Nguyen Thanh Trung on 3/29/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import Foundation
import SwiftUI

extension Font {
    
    static func fontWithType(_ type: SFUIDisplayFontStyle, size: CGFloat) -> Font {
        return Font.custom(type.fontName(), size: size)
    }
}

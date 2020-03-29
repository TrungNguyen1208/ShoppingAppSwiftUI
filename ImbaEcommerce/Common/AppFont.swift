//
//  AppFont.swift
//  Imba Ecommerce
//
//  Created by Nguyen Thanh Trung on 3/29/20.
//  Copyright © 2020 Nguyen Thanh Trung. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

enum AppFontStyle {
    case regular
    case light
    case italic
    case bold
    case semibold
}

class AppFont: NSObject {
    class func fontWithStyle(style: AppFontStyle, size: CGFloat) -> UIFont {
        let mappedFontStyle: SFUIDisplayFontStyle
        switch style {
        case .regular:
            mappedFontStyle = .regular
        case .light:
            mappedFontStyle = .light
        case .italic:
            mappedFontStyle = .thin
        case .bold:
            mappedFontStyle = .bold
        case .semibold:
            mappedFontStyle = .semibold
        }
        return SFUIDisplayFont.fontWithType(mappedFontStyle, size: size)
    }
}


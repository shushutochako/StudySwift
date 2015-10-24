//
//  UIColor+Additions.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

extension UIColor {
    // enumでプロジェクト内の色の定義をまとめる
    enum ColorType: String {
        case Primary = "#c9ffff"
        case Causion = "#c97271"
    }
    
    convenience init(type: ColorType, alpha: CGFloat = 1.0) {
        self.init(rgba: type.rawValue, alpha: alpha)
    }
}

//
//  DefaultArgumentsSample.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class DefaultArgumentsSample: NSObject {
    func printName(name: String, isBoy: Bool = true) {
        if isBoy {
            print("\(name)くん")
        } else {
            print("\(name)ちゃん")
        }
    }
}

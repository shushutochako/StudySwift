//
//  PropertyObserveSample.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class PropertyObserveSample: NSObject {
    var height: Float = 160 {
        willSet {
            print("元のBMIは\(self.calculateBmi)だよ！")
        }
        didSet {
            print("新しいBMIは\(self.calculateBmi)だよ！")
        }
    }
    var weight: Float = 60
    var calculateBmi: Float {
        return self.weight / (self.height * self.weight)
    }
}

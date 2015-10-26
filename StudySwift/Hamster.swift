//
//  Hamster.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/26.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class Hamster: NSObject {
    var kind = String()
    var weight = Float()
    
    init(kind: String, weight: Float) {
        self.kind = kind
        self.weight = weight
    }
}

func == (left: Hamster, right: Hamster) -> Bool {
    return left.kind == right.kind && left.weight == right.weight
}


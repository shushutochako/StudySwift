//
//  Car.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

// 2-1
protocol CarBuildable {
    func buildCar() -> Car
}

class Car: NSObject {
    var name = ""
    var speed: Int
    
    override init() {
        self.speed = 0
        super.init()
    }
    
    init(name: String, speed: Int) {
        self.name = name
        self.speed = speed
    }
    
    func run() {
        print("時速\(self.speed)で走り出しました。")
    }
}

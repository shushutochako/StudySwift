//
//  Sample02.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class Sample02: NSObject, CarBuildable {
    // 2-1
    func buildCar() -> Car {
        return Car(name: "クラウン", speed: 1000)
    }
    
    func ex01() {
        // 2-2
        let sample01 = Sample01()
        sample01.printCarInfo(self.buildCar())
    }
}

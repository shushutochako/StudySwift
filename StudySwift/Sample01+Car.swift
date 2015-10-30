//
//  Sample01+Car.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

// 2-2
extension Sample01 {
    func printCarInfo(builder: CarBuildable) {
        let car = builder.buildCar()
        print(car.name)
        print(car.speed)
    }
}

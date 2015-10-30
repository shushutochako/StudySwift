//
//  Sample02.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

// 2-4
struct Profile {
    var name: String
    var age: Int
    var height: Float
    init() {
        self.name = ""
        self.age = 0
        self.height = 0
    }
    
    func printProfile() {
        print("名前：\(self.name) 年齢：\(self.age) 身長：\(self.height)")
    }
}

class Sample02: NSObject, CarBuildable {
    // 2-1
    func buildCar() -> Car {
        return Car(name: "クラウン", speed: 1000)
    }
    
    func ex01() {
        // 2-2
        let sample01 = Sample01()
        sample01.printCarInfo(self)
    }
    
    func ex03() {
        // 2-3
        let human = self.tupleFunction()
        print("名前：\(human.name) 年齢：\(human.age)")
    }
    // 2-5
    func ex04() {
        let ham1 = Hamster(kind: "djungarian", weight: 30)
        let ham2 = Hamster(kind: "djungarian", weight: 30)
        print("\(ham1 == ham2)")
    }
    // 2-3
    func tupleFunction() -> (name: String, age: Int) {
        return (name: "太郎", age: 17)
    }
}

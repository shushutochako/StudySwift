//
//  Sample01.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class Sample01: NSObject {
    func ex1() {
        // 1-1
        var num: Int = 0
        num = 2
        var str = "テキスト"
        str = "text"
        print(num)
        print(str)
        
        // 1-2
        let num2: Int = 0
        let str2 = "テキスト"
        print(num2)
        print(str2)
    }
    
    func ex2() {
        // 1-3
        self.add(1, num2: 2)
        // 1-4
        let closure = {
            (firstName: String, lastName: String) in
            return firstName + lastName
        }
        print(closure("masujima", "nobuyasu"))
    }
    
    func ex3() {
        // 1-5
        let car = Car(name: "スウィフト", speed: 60)
        car.run()
    }
    
    private func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
}

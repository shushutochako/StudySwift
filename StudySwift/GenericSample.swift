//
//  Tips01.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class GenericSample: NSObject {
    func printOptional(message: String) {
        print(message)
    }
    
    func biggerInt(num1: Int, num2: Int) -> Int {
        return num1 > num2 ? num1 : num2
    }
    
    func biggerFloat(num1: Float, num2: Float) -> Float {
        return num1 > num2 ? num1 : num2
    }

    func biggerDouble(num1: Double, num2: Double) -> Double {
        return num1 > num2 ? num1 : num2
    }
    
    func genericbigger<T: Comparable>(num1: T, num2: T) -> T{
        return num1 > num2 ? num1 : num2
    }
    
    func appendStringArray(array1: [String], array2: [String]) -> [String] {
        var retArray = array1
        retArray += array2
        return retArray
    }
    
    func appendGenericArray<T>(array1: [T], array2: [T]) -> [T] {
        var retArray = array1
        retArray += array2
        return retArray
    }
}

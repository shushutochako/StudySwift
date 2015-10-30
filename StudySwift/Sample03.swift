//
//  Sample03.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/30.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class Sample03: NSObject {
    
    func mapSample() {
        let baseArray = [0, 1, 2, 3, 4, 5]
        let resultArray = baseArray.map{
            $0 * 2
        }
        print("MapSample:\(resultArray)")
    }
    
    func filterSample() {
        let baseArray = [0, 1, 2, 3, 4, 5]
        let resultArray = baseArray.filter{
            return $0 % 2 == 0
        }
        print("FilterSasmple:\(resultArray)")
    }
}

//
//  GenericViewController.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var tapAppendArray: UIButton!
    
    @IBAction func tapBigger(sender: AnyObject) {
        let tips = GenericSample()
        print(tips.biggerInt(1, num2: 2))
        print(tips.biggerFloat(3.1, num2: 4.1))
        print(tips.biggerDouble(5.1, num2: 6.1))
        // ジェネリクスを使った場合
        print(tips.genericbigger(7, num2: 8))
        print(tips.genericbigger(7.1, num2: 8.2))
    }
    
    @IBAction func tapAppendArray(sender: AnyObject) {
        let array1 = ["a", "b", "c"]
        let array2 = ["d", "e", "f"]
        var appendArray1 = GenericSample().appendStringArray(array1, array2: array2)
        print(appendArray1)
        appendArray1 = GenericSample().appendGenericArray(["g", "h"], array2: ["i", "j"])
        print(appendArray1)
    }
}

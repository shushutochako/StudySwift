//
//  SampleViewController.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/30.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapEx2(sender: AnyObject) {
        let logic = Sample01()
        logic.ex1()
        logic.ex2()
        logic.ex3()
        
    }
    @IBAction func tapMapFilter(sender: AnyObject) {
        let logic = Sample03()
        logic.mapSample()
        logic.filterSample()
    }
}


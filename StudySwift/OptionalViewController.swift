//
//  OptionalViewController.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class OptionalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapForceUnwrap(sender: AnyObject) {
        let tips: Tips01? = nil
        tips!.printOptional("Force Unwrap")
    }
    
    @IBAction func tapChaining(sender: AnyObject) {
        let tips: Tips01? = nil
        tips?.printOptional("Optional Chaining")
    }
    
    @IBAction func tapBinding(sender: AnyObject) {
        let tips1: Tips01? = nil
        let tips2: Tips01? = Tips01()
        if let tips1 = tips1 {
            tips1.printOptional("Optional Binding01")
        }
        if let tips2 = tips2 {
            tips2.printOptional("Optional Binding02")
        }
    }
}

//
//  OthersViewController.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class OthersViewController: UIViewController {
    @IBOutlet weak var heightTextField: UITextField!
    private let propertyObserveLogic = PropertyObserveSample()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapPropertyObserve(sender: AnyObject) {
        // プロパティの値を変更
        if let text = self.heightTextField.text where !text.isEmpty {
            self.propertyObserveLogic.height = Float(text)!
        }
        self.heightTextField.endEditing(true)
    }
    
    @IBAction func tapDefaultArguments(sender: AnyObject) {
        DefaultArgumentsSample().printName("太郎")
        DefaultArgumentsSample().printName("花子", isBoy: false)
    }
}

//
//  EnumViewController.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class EnumViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCreate(sender: AnyObject) {
        let logic = EnumSample()
        logic.updateLabel(.Create, label: self.messageLabel)
        logic.printConsole(.CreateConsole)
        logic.printConsole2("CreateConsole")
        logic.printConsole3(.Human(name: "増島 亘康"))
    }
    
    @IBAction func tapUpdate(sender: AnyObject) {
        let logic = EnumSample()
        logic.updateLabel(.Update, label: self.messageLabel)
        logic.printConsole(.UpdateConsole)
        logic.printConsole2("UpdateConsole")
        logic.printConsole3(.Car(speed: 60))
    }
    
    @IBAction func tapDelete(sender: AnyObject) {
        let logic = EnumSample()
        logic.updateLabel(.Delete, label: self.messageLabel)
        logic.printConsole(.DeleteConsole)
        logic.printConsole2("DeleteConsole")
    }    
}

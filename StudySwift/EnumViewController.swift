//
//  EnumViewController.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

enum UpdateType {
    case Create, Update, Delete
    func toString() -> String {
        switch self {
        case Create:
            return "Create"
        case Update:
            return "Update"
        case Delete:
            return "Delete"
        }
    }
}

enum PrintConsoleType: String {
    case CreateConsole = "CreateConsole", UpdateConsole = "UpdateConsole", DeleteConsole = "DeleteConsole"
}

class EnumViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCreate(sender: AnyObject) {
        self.updateLabel(.Create)
        self.printConsole(.CreateConsole)
    }
    
    @IBAction func tapUpdate(sender: AnyObject) {
        self.updateLabel(.Update)
        self.printConsole(.UpdateConsole)
    }
    
    @IBAction func tapDelete(sender: AnyObject) {
        self.updateLabel(.Delete)
        self.printConsole(.DeleteConsole)
    }
    
    private func updateLabel(type: UpdateType) {
        self.messageLabel.text = type.toString()
    }
    
    private func printConsole(type: PrintConsoleType) {
        print(type.rawValue)
    }
}

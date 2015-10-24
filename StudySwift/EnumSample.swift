//
//  EnumSample.swift
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
    
    func toJapanese() -> String {
        switch self {
        case .CreateConsole:
            return "作成"
        case .UpdateConsole:
            return "更新"
        case .DeleteConsole:
            return "削除"
        }
    }
}

enum ValueEnumType {
    case Human(name: String)
    case Car(speed: Int)
    
    func printProperty() {
        switch self {
        case Human(let name):
            print("名前は\(name)です。")
        case Car(let speed):
            print("スピードは\(speed)です。")
        }
    }
}

class EnumSample: NSObject {
    func updateLabel(type: UpdateType, label: UILabel) {
        label.text = type.toString()
    }
    
    func printConsole(type: PrintConsoleType) {
        print("printConsole:\(type.rawValue)")
    }
    
    func printConsole2(typeRawValue: String) {
        let type = PrintConsoleType(rawValue: typeRawValue)
        print("日本語化:\(type?.toJapanese())")
    }
    
    func printConsole3(type: ValueEnumType) {
        type.printProperty()
    }
}

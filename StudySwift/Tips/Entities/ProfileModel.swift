//
//  ProfileModel.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class ProfileModel: NSObject {
    var name: String
    var comment: String
    
    init(name: String, comment: String) {
        self.name = name
        self.comment = comment
    }
}

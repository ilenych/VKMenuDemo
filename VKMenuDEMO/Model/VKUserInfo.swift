//
//  VKUserInfo.swift
//  VKMenuDEMO
//
//  Copyright © 2019 <ASi. All rights reserved.
//

import Foundation

class VKUserInfo {
    var name: String
    var avatarImageName: String
    
    init(name: String, avatarImageName: String = "avatar") {
        self.name = name
        self.avatarImageName = avatarImageName
    }
}

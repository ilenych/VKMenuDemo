//
//  ConfigCell.swift
//  VKMenuDEMO
//
//  Copyright © 2019 <ASi. All rights reserved.
//

import Foundation
import UIKit

enum Section: Int {
    case userInfo = 0
    case menu = 1
}

struct Settings {
    let countSectionInUserInfo = 1
    let countSectionInMenu = TableValues.valuesForRowAt.count
    let heightForHeaderInSection: CGFloat = 8
    let heightForUserInfo: CGFloat = 70.0
    let heightForMenu: CGFloat = 44.0
    let numberOfSection = 2
    let openProfile = "Open profile"
    let backgraundColor = #colorLiteral(red: 0.0980265215, green: 0.09804732352, blue: 0.09802197665, alpha: 1)
    var imageSting = [String]()
    
    var user: VKUserInfo {
        get {
            return VKUserInfo(name: "Chris Hemsworth")
        }
    }
    
    func imageString() ->  [String] {
        return TableValues.valuesForRowAt.map {$0.lowercased()}
       }
    
   
    
    func configTitleLabel(label: UILabel, indexPath: IndexPath, section: Int) {
        label.textAlignment = .left
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = section == Section.userInfo.rawValue ? UIFont.boldSystemFont(ofSize: 20) : UIFont.systemFont(ofSize: 20)
        label.text = section == Section.userInfo.rawValue ? user.name : TableValues.valuesForRowAt[indexPath.row]
    }
    
    func configSubTitleLabel(label: UILabel, indexPath: IndexPath, section: Int) {
        label.textAlignment = .left
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = openProfile
    }
    
    func configIconImage(image: UIImageView, indexPath: IndexPath, section: Int) {
        switch section {
        case Section.userInfo.rawValue:
            image.layer.cornerRadius = image.frame.size.width / 2
            image.layer.masksToBounds = true
            image.image = UIImage(named: user.avatarImageName)
        case Section.menu.rawValue:
            image.image = UIImage(named: imageSting[indexPath.row])
        default:
            break
        }
    }
}


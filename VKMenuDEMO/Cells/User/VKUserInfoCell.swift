//
//  VKUserInfoCell.swift
//  VKMenuDEMO
//
//  Copyright © 2019 <ASi. All rights reserved.
//

import Foundation
import UIKit

class VKUserInfoCell: UITableViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView! 
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    static let reuseId = "VKUserInfoCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}



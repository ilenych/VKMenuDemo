//
//  VKMenuCell.swift
//  VKMenuDEMO
//
//  Copyright © 2019 <ASi. All rights reserved.
//

import Foundation
import UIKit

class VKMenuCell: UITableViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var menuNameLabel: UILabel!
    
    static let reuseId = "VKMenuCell"
    
    override func awakeFromNib() {
        super.awakeFromNib() 
    }
}

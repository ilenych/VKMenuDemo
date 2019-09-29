//
//  TestViewController.swift
//  VKMenuDEMO
//
//  Copyright © 2019 <ASi. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // edit navigation controller
        navigationItem.title = "Description"
        let backButton = UIBarButtonItem()
        backButton.title = ""
        backButton.tintColor = UIColor.gray
        self.navigationController!.navigationBar.topItem!.backBarButtonItem = backButton
        
        // description text
        descriptionLabel.text = "You can post next content here"
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = UIFont.systemFont(ofSize: 30)
    }
    
    

}

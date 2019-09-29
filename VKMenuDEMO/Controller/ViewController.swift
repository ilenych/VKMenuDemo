//
//  ViewController.swift
//  VKMenuDEMO
//
//  Copyright © 2019 <ASi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - UI components
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Variables
    var settings = Settings()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // navigationController
        navigationItem.title = "More"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1013203487, green: 0.100725688, blue: 0.101782389, alpha: 1)
        
        // backgraundColor
        tableView.backgroundColor = UIColor.black
        view.backgroundColor = UIColor.black
        
        // Set image names
        settings.imageSting = settings.imageString()
        
        // Hide excess cells
        tableView.tableFooterView = UIView()
        
        // delegate and dataSource
        tableView.dataSource = self
        tableView.delegate = self
        
        // register cell
        tableView.register(UINib(nibName: "VKUserInfoCell", bundle: nil), forCellReuseIdentifier: VKUserInfoCell.reuseId)
        tableView.register(UINib(nibName: "VKMenuCell", bundle: nil), forCellReuseIdentifier: VKMenuCell.reuseId)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings.numberOfSection
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.userInfo.rawValue:
            return settings.countSectionInUserInfo
        case Section.menu.rawValue:
            return settings.countSectionInMenu
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == Section.userInfo.rawValue {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: VKUserInfoCell.reuseId, for: indexPath) as! VKUserInfoCell
            settings.configTitleLabel(label: cell.titleLabel,
                                      indexPath: indexPath,
                                      section: indexPath.section)
            
            settings.configSubTitleLabel(label: cell.subTitleLabel,
                                         indexPath: indexPath,
                                         section: indexPath.section)
            
            settings.configIconImage(image: cell.avatarImage,
                                     indexPath: indexPath,
                                     section: indexPath.section)
            
            cell.backgroundColor = settings.backgraundColor
            cell.selectionStyle = .none
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: VKMenuCell.reuseId, for: indexPath) as! VKMenuCell
            settings.configTitleLabel(label: cell.menuNameLabel,
                                      indexPath: indexPath,
                                      section: indexPath.section)
            
            settings.configIconImage(image: cell.iconImage,
                                     indexPath: indexPath,
                                     section: indexPath.section)
            
            cell.backgroundColor = settings.backgraundColor
            cell.accessoryType = .disclosureIndicator
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == Section.userInfo.rawValue {
            return settings.heightForUserInfo
        } else {
            return settings.heightForMenu
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return settings.heightForHeaderInSection
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "InTestVC", sender: nil)
    }
}


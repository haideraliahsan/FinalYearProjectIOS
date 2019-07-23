//
//  SideBarVC.swift
//  Smack
//
//  Created by haider ali on 09/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseAuth

class SideBarVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemInSections[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTableView.dequeueReusableCell(withIdentifier: menuBtnId, for: indexPath) as? SecondSideMenuViewCell
        cell?.menuBtnLabel.text = itemInSection[indexPath.section][indexPath.row]
        cell?.menuBtnLabel.textColor = UIColor.darkGray
        cell?.menuImageView?.image = UIImage(named: itemInSections[indexPath.section][indexPath.row])
        cell?.menuImageView?.image = cell?.menuImageView?.image?.withRenderingMode(.alwaysTemplate)
        cell?.menuImageView?.tintColor = UIColor.lightGray
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 3 {
            do {
                try Auth.auth().signOut()
                self.dismiss(animated: true, completion: nil)
            }
            catch let error {
                Toast.show(message: error.localizedDescription, controller: self)
            }
        }
        
    }
    
    
    let menuBtnId = "menuBtnId"
    
    let sections = ["", "Communicate"]
    
    let itemInSection = [["Change Password","Help and Feedback","Sign out"],["Share","Send"]]
    let itemInSections = [["eye","HELP","xyz7"],["share","send"]]
    
    @IBOutlet weak var menuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

}



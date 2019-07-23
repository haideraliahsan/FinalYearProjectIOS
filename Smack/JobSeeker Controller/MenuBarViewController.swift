//
//  ChannelVC.swift
//  Smack
//
//  Created by haider ali on 24/03/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class MenuBarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profileEmailLabel: UILabel!
    
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
        let cell = menuTableView.dequeueReusableCell(withIdentifier: menuBtnId, for: indexPath) as? MenuViewCell
        cell?.menuBtnLabel.text = itemInSection[indexPath.section][indexPath.row]
        cell?.menuBtnLabel.textColor = UIColor.darkGray
        cell?.menuImageView?.image = UIImage(named: itemInSections[indexPath.section][indexPath.row])
        cell?.menuImageView?.image = cell?.menuImageView?.image?.withRenderingMode(.alwaysTemplate)
        cell?.menuImageView?.tintColor = UIColor.lightGray
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 5 {
            self.performSegue(withIdentifier: "goToCvManager", sender: self)
        }
        
    }
    
    
    let menuBtnId = "menuBtnId"

    let sections = ["", "Communicate"]
    
    let itemInSection = [["Dashbord","Jobs","CV Folders","Cv Manager","QR Scanner","Change Password","Help and Feedback","Sign out"],["Share","Send"]]
    let itemInSections = [["home","eye","eye","searchBlack","searchBlack","lock","HELP","searchBlack"],["share","send"]]
 
    @IBOutlet weak var menuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        viewRounder(textField: profileImageView)
        
        
        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 60
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

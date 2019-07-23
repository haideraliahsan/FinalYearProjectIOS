//
//  ChannelVC.swift
//  Smack
//
//  Created by haider ali on 24/03/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobSeekerMenuBar: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITableViewDelegate, UITableViewDataSource {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            guard let convertedCIImage = CIImage(image: userPickedImage) else {
                fatalError("cannot convet to CIImage")
                
            }
            
            profileImageView.image = userPickedImage
            
            imagePicker.dismiss(animated: true, completion: nil)
        }
        
        
    }
    
    
    
    
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
        if indexPath.row == 6 {
            self.performSegue(withIdentifier: "goToCvManager", sender: self)
        }
        else if indexPath.row == 7
        {
            photoLibraryLauncher()
        }
        
    }
    
    let imagePicker = UIImagePickerController()
    
    func photoLibraryLauncher () {
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .camera
        //        self.presentViewController(imagePickerController, animated: true, completion: { imageP in
        //
        //        })
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    
    let menuBtnId = "menuBtnId"
    
    let sections = ["", "Communicate"]
    
    let itemInSection = [["My CRS Home","Search Jobs","Who viewed my CV","Matched Jobs","Job match settings","CV Manager","My Jobs","QR Scanner", "Help and Feedback", "Sign out"],["Share","Send"]]
    let itemInSections = [["home","eye","eye","searchBlack","searchBlack","lock","HELP","searchBlack","eye","searchBlack"],["share","send"]]
    
    @IBOutlet weak var menuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        viewRounder(textField: profileImageView)
        
        
        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        
        
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

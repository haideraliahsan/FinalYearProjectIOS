//
//  CVSearchViewController.swift
//  Smack
//
//  Created by haider ali on 11/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class CVSearchViewController: UIViewController {
    

    
    @IBOutlet weak var regionTextFieldView: UIView!
    @IBOutlet weak var searchTextFieldView: UIView!
    @IBOutlet weak var dotButton: UIButton!
    
    @IBOutlet weak var menuBtn: UIButton!
    
    @IBOutlet weak var skillsTextField: UITextField!
    @IBOutlet weak var regionTextFiled: UITextField!
    @IBOutlet weak var popularBtn2: UIButton!
    
    
    @IBOutlet weak var popularBtn1: UIButton!
    @IBOutlet weak var searchBtn: UIButton!
  
    @IBOutlet weak var popularBtn3: UIButton!
    

    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var cvSearchView: UIView!
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayView (view: cvSearchView)
        viewRounder(textField: profileImageView)
        setupTabBarColor ()
        
//
//        viewRounder(textField: skillsTextField)
//        viewRounder(textField: regionTextFiled)
        viewRounder(textField: searchBtn)
        viewRounder(textField: searchTextFieldView)
        viewRounder(textField: regionTextFieldView)
      
        

        
        UITabBar.appearance().tintColor = UIColor.white
        
        
        regionTextFiled.leftViewMode = .always
        
        
       
        // Do any additional setup after loading the view.
    }
    
  
    
    
    func displayView (view: UIView)
    {
        cvSearchView.isHidden = true
        resultView.isHidden = true
        view.isHidden = false
    }
    
    
    func setupTabBarColor () {
        
        
        tabBarItem.selectedImage = UIImage(named: "searchBlack")!.withRenderingMode(.alwaysOriginal)
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
        
        UITabBar.appearance().tintColor = UIColor.white
        
        tabBarItem.image = UIImage(named: "searchBlack")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named: "searchBlack")?.withRenderingMode(.alwaysOriginal)
        
    }
    
    @IBAction func dotBtnPressed(_ sender: Any) {
    }
    
    @IBAction func menuBtnPressed(_ sender: Any) {
    }
    @IBAction func searchBtnPressed(_ sender: Any) {
        displayView(view: resultView)
        
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        displayView(view: cvSearchView)
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

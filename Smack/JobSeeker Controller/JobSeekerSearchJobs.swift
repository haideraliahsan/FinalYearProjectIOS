//
//  JobSeekerSearchJobs.swift
//  Smack
//
//  Created by haider ali on 26/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobSeekerSearchJobs: UIViewController {

    @IBOutlet weak var moreBtn: UIButton!
    @IBOutlet weak var menuBarBtn: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var textFieldView1: UIView!
    
    @IBOutlet weak var findJobsBtn: UIButton!
    @IBOutlet weak var textFieldView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewRounder(textField: textFieldView1)
        viewRounder(textField: textFieldView2)
        viewRounder(textField: findJobsBtn)
        

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

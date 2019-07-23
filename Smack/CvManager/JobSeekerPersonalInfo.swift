//
//  JobSeekerPersonalInfo.swift
//  PDFModule
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobSeekerPersonalInfo: UIViewController {
    
   var shareData: myDelegate?
    
    
    
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var maritalStatus: UITextField!
    @IBOutlet weak var nationality: UITextField!
    @IBOutlet weak var custom: UITextField!
    @IBOutlet weak var saveBtnPersonalInfo: RoundCornerButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
//        shareData?.receivedDataFromJobSeekerForms(form: [dateOfBirth.text!,maritalStatus.text!,nationality.text!,custom.text!])
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

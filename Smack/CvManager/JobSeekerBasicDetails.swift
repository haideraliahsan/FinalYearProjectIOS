//
//  JobSeekerBasicDetails.swift
//  PDFModule
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobSeekerBasicDetails: UIViewController {
    
    var shareData: myDelegate?
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var saveBtnOfContactDetails: RoundCornerButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

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

//
//  JobSeekerReference.swift
//  PDFModule
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobSeekerReference: UIViewController {
    
    var shareData: myDelegate?

    @IBOutlet weak var nameReference: UITextField!
    @IBOutlet weak var designationRefrence: UITextField!
    @IBOutlet weak var institutionName: UITextField!
    @IBOutlet weak var emailIdReference: UITextField!
    @IBOutlet weak var mobileNoReference: UITextField!
    @IBOutlet weak var saveBtnReference: RoundCornerButton!
    
    
    
    
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

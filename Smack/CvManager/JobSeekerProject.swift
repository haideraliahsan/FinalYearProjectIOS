//
//  JobSeekerProjects.swift
//  PDFModule
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobSeekerProject: UIViewController {
    
    var shareData: myDelegate?

    
    @IBOutlet weak var projectTitle: UITextField!
    @IBOutlet weak var projectDescription: UITextField!
    @IBOutlet weak var projectDuration: UITextField!
    @IBOutlet weak var projectRole: UITextField!
    @IBOutlet weak var projectTeamSize: UITextField!
    @IBOutlet weak var saveBtnProjectDetails: RoundCornerButton!
    @IBOutlet weak var savePDFBtn: RoundCornerButton!
    
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

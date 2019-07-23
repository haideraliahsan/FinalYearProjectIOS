//
//  JobSeekerEducation.swift
//  PDFModule
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobSeekerEducation: UIViewController {
    
    var shareData: myDelegate?

    
    
    @IBOutlet weak var courseDegree: UITextField!
    @IBOutlet weak var schoolCollegeUniversity: UITextField!
    @IBOutlet weak var percentageGPA: UISegmentedControl!
    @IBOutlet weak var mark: UITextField!
    @IBOutlet weak var graduatedPursuing: UISegmentedControl!
    @IBOutlet weak var passingYear: UITextField!
    @IBOutlet weak var saveBtnAcademicDetails: RoundCornerButton!
    @IBOutlet weak var viewListAcademicDetails: RoundCornerButton!
    
    
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

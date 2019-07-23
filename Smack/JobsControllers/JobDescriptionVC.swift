//
//  JobDescriptionVC.swift
//  Smack
//
//  Created by haider ali on 08/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobDescriptionVC: UIViewController {
   
    var jobPost: JobPost?
    
    
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var vacancies: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var budget: UILabel!
    @IBOutlet weak var nationality: UILabel!
    @IBOutlet weak var minMaxDegree: UILabel!
    @IBOutlet weak var candidateDescription: UILabel!
    @IBOutlet weak var jobDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        receiveValues()
         
        

        // Do any additional setup after loading the view.
    }
    
    
    func receiveValues() {
        jobTitle.text = jobPost?.jobtitle
        companyName.text = jobPost?.companyName
        duration.text = jobPost?.experience
        vacancies.text = "\(jobPost?.noOfvacancie) No. of vacancies"
        location.text = "\(jobPost?.city), \(jobPost?.country)"
        budget.text = "\(jobPost?.salary) budget per month"
        nationality.text = jobPost?.nationality
        minMaxDegree.text = "\(jobPost?.minDegree)  \(jobPost?.maxDegree)"
        candidateDescription.text = jobPost?.candidateDescription
        jobDescription.text = jobPost?.jobdescription
    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func viewPublisherBtnPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "goToFollowers", sender: self)
        
        
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

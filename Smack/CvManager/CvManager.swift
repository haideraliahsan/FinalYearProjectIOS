//
//  SignatureViewController.swift
//  Smack
//
//  Created by haider ali on 13/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//


import UIKit



protocol myDelegate {
    func receivedDataFromJobSeekerForms (form: [String : String])
}


class CvManager: UIViewController, myDelegate {
    
    var array = [String]()
    
    func receivedDataFromJobSeekerForms(form: [String : String]) {
        
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    var segueArray = ["objective","interest","stengths","academic","reference","awards","signature","personal","experience","project","skill","contact", "industry", "activity"]
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "objective" {
            let controller = segue.destination as! Objective
            controller.shareData = self
        }else if segue.identifier == "interest" {
            let controller = segue.destination as! JobSeekerInterest
            controller.shareData = self
        }else if segue.identifier == "stengths" {
            let controller = segue.destination as! JobSeekerStrength
            controller.shareData = self
        }else if segue.identifier == "academic" {
            let controller = segue.destination as! JobSeekerAcademic
            controller.shareData = self
        }else if segue.identifier == "reference" {
            let controller = segue.destination as! JobSeekerReference
            controller.shareData = self
        }else if segue.identifier == "awards" {
            let controller = segue.destination as! JobSeekerAward
            controller.shareData = self
        }else if segue.identifier == "signature" {
            let controller = segue.destination as! JobSeekerSignature
            controller.shareData = self
        }else if segue.identifier == "personal" {
            let controller = segue.destination as! JobSeekerPersonalInfo
            controller.shareData = self
        }else if segue.identifier == "experience" {
            let controller = segue.destination as! JobSeekerExperience
            controller.shareData = self
        }else if segue.identifier == "project" {
            let controller = segue.destination as! JobSeekerProject
            controller.shareData = self
        }else if segue.identifier == "skill" {
            let controller = segue.destination as! JobSeekerTechnicalSkills
            controller.shareData = self
        }else if segue.identifier == "contact" {
            let controller = segue.destination as! JobSeekerBasicDetails
            controller.shareData = self
        }else if segue.identifier == "industry" {
            let controller = segue.destination as! JobSeekerIndustry
            controller.shareData = self
        }else if segue.identifier == "activity" {
            let controller = segue.destination as! JobSeekerActivities
            controller.shareData = self
        }
    }
    
    
    
 
   
    
    func performSegueByName(name: String){
        self.performSegue(withIdentifier: name, sender: self)
    }
    
    @IBAction func basicDetailsBtnPressed(_ sender: Any) {
        performSegueByName(name: "personal")
    }
    @IBAction func educationBtnPressed(_ sender: Any) {
        performSegueByName(name: "academic")

    }
    @IBAction func projectBtnPressed(_ sender: Any) {
        performSegueByName(name: "project")

    }
        @IBAction func intrestsBtnPressed(_ sender: Any) {
            performSegueByName(name: "interest")

    }
    @IBAction func acheimentsBtnPressed(_ sender: Any) {
        performSegueByName(name: "awards")

    }
    @IBAction func objectiveBtnPressed(_ sender: Any) {
        performSegueByName(name: "objective")

    }
    @IBAction func referencesBtnPressed(_ sender: Any) {
        performSegueByName(name: "reference")

    }
    @IBAction func photoBtnPressed(_ sender: Any) {
        performSegueByName(name: "signature")

    }
    @IBAction func activityBtnPressed(_ sender: Any) {
        performSegueByName(name: "activity")

    }
    @IBAction func strengthsBtnPressed(_ sender: Any) {
        performSegueByName(name: "stengths")

    }
    @IBAction func industrialExposureBtnPressed(_ sender: Any) {
        performSegueByName(name: "industry")

    }
    @IBAction func technicalBtnPressed(_ sender: Any) {
        performSegueByName(name: "skill")

    }
    @IBAction func experienceBtnPressed(_ sender: Any) {
        performSegueByName(name: "experience")

    }
    @IBAction func persionInfoBtnPressed(_ sender: Any) {
        performSegueByName(name: "personal")

    }


    @IBAction func generateResumePressed(_ sender: Any) {
        
        
        //check all fields here and generate pdf
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
    
    

    

}
    
    
    
    


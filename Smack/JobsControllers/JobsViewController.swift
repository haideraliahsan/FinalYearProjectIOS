//
//  JobsViewController.swift
//  Smack
//
//  Created by haider ali on 06/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import Firebase

protocol userDefinedDelegate {
    func shareOnject(jobPost: JobPost)
}

class JobsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let segueIdentifier = "goToJobDescription"
    
    @IBOutlet weak var jobsTableView: UITableView!
    var shareObject: JobPost?
    
    
    
    let menuBarBtn = UIButton()
    
    
    let cellId = "allJobsCell"
    
    var allJobs = [JobPost]()
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allJobs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = jobsTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? AllJobsCell
        cell?.companyName.text = allJobs[indexPath.row].companyName
        cell?.jobTitle.text = allJobs[indexPath.row].jobtitle
        cell?.jobCity.text = allJobs[indexPath.row].city
        cell?.jobCountry.text = allJobs[indexPath.row].country
        cell?.jobPostedDate.text = allJobs[indexPath.row].createdOn
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        shareObject = allJobs[indexPath.row]
        self.performSegue(withIdentifier: segueIdentifier, sender: self)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier {
            let controller = segue.destination as! JobDescriptionVC
            controller.jobPost = shareObject
        }
    }
    
    func fetchData () {
        var ref = Database.database().reference()
        
        ref.child("JobPost").child("yNxAb49HZWa7Za1MD0kdsuSCuCv2").observe(.childAdded) { (data) in
            let dict = data.value as? [String : AnyObject] ?? [:]
          
            
            let job = JobPost(candidateDescription: dict["candidateDescription"] as! String
                , city: dict["city"] as! String
                , companyName: dict["companyName"] as! String
                , country: dict["country"] as! String
                , createdOn: dict["createdOn"] as! String
                , creator_id:  dict["creator_id"] as! String
                , experience: dict["experience"] as! String
                , genderPreference: dict["genderPreference"] as! String
                , jobdescription: dict["jobdescription"] as! String
                , jobpost_id: dict["jobpost_id"] as! String
                , jobtitle: dict["jobtitle"] as! String
                , jobtype: dict["jobtype"] as! String
                , maxDegree: dict["maxDegree"] as! String
                , minDegree: dict["minDegree"] as! String
                , nationality: dict["nationality"] as! String
                , noOfvacancie: dict["noOfvacancie"] as! Int
                , phone: dict["phone"] as! String
                , salary: dict["salary"] as! Int
                , skills: dict["skills"] as! String
                , status: dict["status"] as! Bool
                , yourName: dict["yourName"] as! String)
            
            self.allJobs.append(job)
            self.jobsTableView.reloadData()
            
            
            
            
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        addTargetToButton(button: menuBarBtn, this: self)
        
        fetchData()
        
        
        
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

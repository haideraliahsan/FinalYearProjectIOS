//
//  JobsByRecruiter.swift
//  Smack
//
//  Created by haider ali on 08/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseDatabase

class specialImageView: UIImageView {
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 5.0
        layer.borderColor = #colorLiteral(red: 0.01253364049, green: 0.8522203565, blue: 0.7708237767, alpha: 1)
        layer.cornerRadius = frame.size.height/2
        clipsToBounds = true
        
    }
    
}


class JobsByRecruiter: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    
    
    
    var userData: RecruiterUser!
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var recruiterName: UILabel!
    
    
    
    
    
    

    @IBOutlet weak var followersTableView: UITableView!
    
    var allJobs: [JobPost] = []
    
    let cellId = "followerCell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        followersTableView.delegate = self
        followersTableView.dataSource = self
        fetchUserData()
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
    
    
    
    
    func fetchUserData() {
        
        
        var ref = Database.database().reference()
        
        ref.child("RecruiterUser").child("hxGnvVHr10MPLvshUWcNk0Y0Sbz2").observe(.value) { (data) in
            let dict = data.value as? [String : AnyObject] ?? [:]
            
         
            self.recruiterName.text = "\(dict["firstname"]) \(dict["lastname"])"
            self.phoneLabel.text = "\(dict["phone"])"
            self.professionLabel.text = "\(dict["email"])"
            
            
        }
        
        
    }
    
    
    
    
    func fetchData () {
        var ref = Database.database().reference()
        
        ref.child("JobPost").child(RECRUITER_USER).observe(.childAdded) { (data) in
            let dict = data.value as? [String : AnyObject] ?? [:]
            
            
            let job = JobPost(
                candidateDescription: dict["candidateDescription"] as! String
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
            self.followersTableView.reloadData()
            
            
            
            
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allJobs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = followersTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! FollowersCell
        var index = allJobs[indexPath.row]
        
        
        cell.budgetLabel.text = "\(index.salary)"
        cell.TitleLabel.text = index.jobtitle
        cell.locationLabel.text = "\(index.city), \(index.city)"
        cell.vacanciesLabel.text = "\(index.noOfvacancie) No. of vacancies"
        
        return cell
    }
    

}

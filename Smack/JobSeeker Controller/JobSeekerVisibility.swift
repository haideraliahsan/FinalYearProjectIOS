//
//  JobSeekerVisibility.swift
//  Smack
//
//  Created by haider ali on 28/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class JobSeekerVisibility: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let cellId = "openJobId"
    
    let developerArray = ["IOS and Android app developer", "Programmer(Job location: Lahore)", "Engineer"]
    let solution = ["MFM Event", "Resettlement solution", "Executive solution"]
    let rank = ["8","8","8"]
    
    @IBOutlet weak var openJobsTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
        // Initialization code
    }
    
    
    func tableViewSize () {
        
        openJobsTableView.dataSource = self
        openJobsTableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return developerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? OpenJobsCell
        cell?.jobDescriptionLabel.text = developerArray[indexPath.row]
        cell?.rankLabel.text = rank[indexPath.row]
        cell?.solutionLabel.text = solution[indexPath.row]
        return cell!
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewSize()


        
  
        }



}

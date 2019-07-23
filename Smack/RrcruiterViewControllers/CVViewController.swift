//
//  CVViewController.swift
//  Smack
//
//  Created by haider ali on 06/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseDatabase

class CVViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var allCvs = [CV]()
    

    @IBOutlet weak var cvTableView: UITableView!
    
    let cellId = "cvCell"
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCvs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cvTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? CvCell
        
        cell?.cvTitle.text = allCvs[indexPath.row].title
        cell?.name.text = allCvs[indexPath.row].firstName! + " " + allCvs[indexPath.row].lastName!
        cell?.cityAndCountry.text = String(allCvs[indexPath.row].city! + ", " + allCvs[indexPath.row].country!)
        cell?.uploadDate.text = allCvs[indexPath.row].date
        
        return cell!
        
    }
    
    
    func fetchData() {
        
        
        var ref = Database.database().reference()
        
        ref.child("MyResume").observe(.childAdded) { (data) in
            let postDict = data.value as? [String : AnyObject] ?? [:]
            guard let firstName = postDict["firstname"] else {return}
            guard let lastName = postDict["lastname"] else {return}
            guard let city = postDict["city"] else {return}
            guard let country = postDict["country"] else {return}
            guard let title = postDict["cv_title"] else {return}
            guard let date = postDict["createdon"] else {return}
            
            let cvs = CV(city: city as! String , country: country as! String, firstName: firstName as! String, lastName: lastName as! String, title: title as! String, date: date as! String)
            
            self.allCvs.append(cvs)
            self.cvTableView.reloadData()

            
            
        }


    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

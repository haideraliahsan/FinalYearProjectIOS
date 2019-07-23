//
//  PreferedJobController.swift
//  Smack
//
//  Created by haider ali on 03/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class PreferedJobController: UIViewController {

    let dayPicker = UIPickerView()
    let toolBar = UIToolbar()
    
    var array : [String] = [""]

    
    @IBOutlet weak var jobRole: UITextField!
    
    @IBOutlet weak var monthlySalary: UITextField!
    @IBOutlet weak var employementType: UITextField!
    @IBOutlet weak var carrerIndustry: UITextField!
    @IBOutlet weak var targetJobLocation: UITextField!
    @IBOutlet weak var preferredJobCity: UITextField!
    @IBOutlet weak var carrerLevel: UITextField!
    @IBOutlet weak var jobDescription: UITextField!
    let carrerLevelArray = ["Student/Internship",
                "Fresh Graduate",
                "Entry Level",
                "Mid Carrer",
                "Senior Executive",
                "Management",
                "Director/Head"]
    let jobLocationArray = ["America",
                            "Bahrain",
                            "Dubai",
                            "India",
                            "Pakistan",
                            "Kuwait",
                            "Saudia Arabia"]
    let industries = ["Accounting",
                            "Advertising",
                            "Architexture",
                            "Airlines",
                            "Bankng",
                            "Coumputer"]
    
    
    let empType = ["Commission",
                      "Contract",
                      "Freelancer",
                      "Full Time",
                      "Internship",
                      "Part Time Employee",
                      "Temporary Employee",
                      "Volunteer"]

    let role = ["Accounting",
                "Advertising",
                "Architexture",
                "Airlines",
                "Bankng",
                "Coumputer"]
    
    
    let salary = ["50 500" + " USSD-US dollar",
                   "500-2000" + " USSD-US dollar",
                   "2000-5000" + " USSD-US dollar",
                   "5000-6000" + " USSD-US dollar",
                   "6000-10000" + " USSD-US dollar",
                   "10000-15000" + " USSD-US dollar",
                   "20000+" + " USSD-US dollar",
                   "Volunteer" + " USSD-US dollar"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        createDayPicker()
        createToolbar()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
    }
    
    @IBAction func submitPressed(_ sender: Any) {
    }
    
//    monthlySalary: UITextField!
//    @IBOutlet weak var employementType: UITextField!
//    @IBOutlet weak var carrerIndustry: UITextField!
//    @IBOutlet weak var targetJobLocation: UITextField!
//    @IBOutlet weak var preferredJobCity: UITextField!
//    @IBOutlet weak var carrerLevel: UITextField!
//    @IBOutlet weak var jobDescription: UITextField!
    
    
    
    func createDayPicker() {
        
        dayPicker.delegate = self
        
        assignInputType()
        
        //Customizations
        dayPicker.backgroundColor = .white
    }
    
    func assignInputType () {
        monthlySalary.inputView = dayPicker
        employementType.inputView = dayPicker
        carrerIndustry.inputView = dayPicker
        targetJobLocation.inputView = dayPicker
        jobRole.inputView = dayPicker
        carrerLevel.inputView = dayPicker
        
     
        monthlySalary.addTarget(self, action: #selector(monthlySalaryTapped), for: UIControl.Event.touchDown)
        employementType.addTarget(self, action: #selector(employementType1), for: UIControl.Event.touchDown)
        carrerIndustry.addTarget(self, action: #selector(carrerIndustry1), for: UIControl.Event.touchDown)
        targetJobLocation.addTarget(self, action: #selector(targetJobLocation1), for: UIControl.Event.touchDown)
        jobRole.addTarget(self, action: #selector(jobRole1), for: UIControl.Event.touchDown)
        carrerLevel.addTarget(self, action: #selector(carrerLevel1), for: UIControl.Event.touchDown)
        
   
        

    }
    @objc func monthlySalaryTapped () {
        array = salary
        dayPicker.reloadAllComponents()
    }
    @objc func employementType1 () {
        array = empType
        dayPicker.reloadAllComponents()
    }
    @objc func carrerIndustry1 () {
        array = industries
        dayPicker.reloadAllComponents()
    }
    @objc func targetJobLocation1 () {
        array = jobLocationArray
        dayPicker.reloadAllComponents()
    }
    @objc func jobRole1 () {
        array = role
        dayPicker.reloadAllComponents()
    }
    @objc func carrerLevel1 () {
        array = carrerLevelArray
        dayPicker.reloadAllComponents()
    }
    
    
    
    
    func createToolbar() {
        
        toolBar.sizeToFit()
        
        //Customizations
        toolBar.barTintColor = .black
        toolBar.tintColor = .white
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(PreferedJobController.dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        assignInputAccessoryView()
    }
    func assignInputAccessoryView () {
        monthlySalary.inputAccessoryView = toolBar
        employementType.inputAccessoryView = toolBar
        carrerIndustry.inputAccessoryView = toolBar
        targetJobLocation.inputAccessoryView = toolBar
        jobRole.inputAccessoryView = toolBar
        carrerLevel.inputAccessoryView = toolBar
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




extension PreferedJobController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if array == carrerLevelArray {
            carrerLevel.text = array[row]
        }else if array == jobLocationArray {
            targetJobLocation.text = array[row]
        }else if array == industries {
            carrerIndustry.text = array[row]
        }else if array == salary {
            monthlySalary.text = array[row]
        }else if array == empType {
            employementType.text = array[row]
        }else {
            array = role
            jobRole.text = array[row]
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var label: UILabel
        
        if let view = view as? UILabel {
            label = view
        } else {
            label = UILabel()
        }
        
        label.textColor = .black
        label.textAlignment = .center
        
        label.text = array[row]
        
        return label
}


}

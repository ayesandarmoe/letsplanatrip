//
//  AddTripViewController.swift
//  letsplan
//
//  Created by Aye Moe on 12/9/14.
//  Copyright (c) 2014 Aye Moe. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {

    var selectedTextFieldTap = String()
    
    @IBOutlet weak var tripNameField: UITextField!
    
    @IBOutlet weak var startDateTextField: UITextField!
    
    @IBOutlet weak var endDateTextField: UITextField!
    
    @IBAction func startDateTextFieldTap(sender: UITextField) {
        var datePickerView: UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: Selector("handleDatePicker:"), forControlEvents: UIControlEvents.ValueChanged)
        selectedTextFieldTap = "startDateTextFieldTap"
    }
    
    @IBAction func endDateTextFieldTap(sender: UITextField) {
        var datePickerView: UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: Selector("handleDatePicker:"), forControlEvents: UIControlEvents.ValueChanged)
        selectedTextFieldTap = "endDateTextFieldTap"
    }
    
    func handleDatePicker(sender: UIDatePicker) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        if selectedTextFieldTap == "startDateTextFieldTap"{
            startDateTextField.text = dateFormatter.stringFromDate(sender.date)
        }
        if selectedTextFieldTap == "endDateTextFieldTap"{
            endDateTextField.text = dateFormatter.stringFromDate(sender.date)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true) //hide keyboard & date picker
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}

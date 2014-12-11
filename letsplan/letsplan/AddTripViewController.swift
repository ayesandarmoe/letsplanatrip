//
//  AddTripViewController.swift
//  letsplan
//
//  Created by Aye Moe on 12/9/14.
//  Copyright (c) 2014 Aye Moe. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {

    @IBOutlet weak var tripNameField: UITextField!
    @IBOutlet weak var startDateBtnField: UIButton! //start date of the trip
    @IBOutlet weak var endDateBtnField: UIButton! //end date of the trip
    
    @IBOutlet weak var datePicker: UIDatePicker!
    //this button is called after a date is selected
    @IBOutlet weak var doneBtn: UIBarButtonItem!
    
    //date picker view contain date picker and a tool bar
    @IBOutlet weak var datePickerView: UIView!
    
    @IBOutlet weak var testLabel: UILabel!
    var selectedStartDate: NSDate!
    var selectedEndDate: NSDate!
    var dateFormatter = NSDateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //self.datePicker.hidden = true
        self.datePickerView.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startDateBtnClicked(sender: AnyObject) {
        self.hideDatePickerView(false)
    }
    
    @IBAction func endDateBtnClicked(sender: AnyObject) {
        self.hideDatePickerView(false)
    }

    @IBAction func doneSelectingDate(sender: UIDatePicker) {
        
        self.dateFormatter.dateFormat = "MMM-dd-yyyy"
        self.hideDatePickerView(true)
        let date = self.dateFormatter.stringFromDate(self.datePicker.date)
        self.startDateBtnField.setTitle(date, forState: nil)
    }
   
    func hideDatePickerView(hideView: Bool) {
        self.datePickerView.hidden = hideView
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

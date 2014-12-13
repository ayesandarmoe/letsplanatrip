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
    
    @IBOutlet weak var cancelDateBtn: UIBarButtonItem!
    @IBOutlet weak var clearDateBtn: UIBarButtonItem!
    //date picker view contain date picker and a tool bar
    @IBOutlet weak var datePickerView: UIView!
    
    var selectedBtn = String()
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
        self.selectedBtn = "Start"
    }
    
    @IBAction func endDateBtnClicked(sender: AnyObject) {
        self.hideDatePickerView(false)
        self.selectedBtn = "End"
    }

    @IBAction func doneSelectingDate(sender: UIDatePicker) {
        if (self.selectedBtn == "Start") {
            self.doneSelectingDate(self.datePicker.date, btn: self.startDateBtnField)
        }
        else if (self.selectedBtn == "End"){
            self.doneSelectingDate(self.datePicker.date, btn: self.endDateBtnField)
        }
        else{
            
        }
    }
   
    
    func hideDatePickerView(hideView: Bool) {
        self.datePickerView.hidden = hideView
    }
    
    func doneSelectingDate(date: NSDate, btn: UIButton) {
        self.dateFormatter.dateFormat = "MMM dd, yyyy"
        self.hideDatePickerView(true)
        let date = self.dateFormatter.stringFromDate(date)
        btn.setTitle(date, forState: nil)
        
    }
    
    @IBAction func cancelDateSelection(sender: AnyObject) {
        self.hideDatePickerView(true)
    }
    
    /**
    **/
    func clearDateSelection(date:NSDate, btn:UIButton) {
        btn.setTitle("Select Date>", forState: nil)
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

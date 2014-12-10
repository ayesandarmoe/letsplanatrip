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
    @IBOutlet weak var pickDateField: UIDatePicker!
    @IBOutlet weak var startDateBtnField: UIButton!
    @IBOutlet weak var endDateBtnField: UIButton!
    
    var selectedStartDate: NSDate!
    var selectedEndDate: NSDate!
    var dateFormatter: NSDateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startDateBtnClicked(sender: AnyObject) {
        self.pickDateField.hidden = false
    }

    @IBAction func doneSelectingDate(sender: AnyObject) {
        self.selectedStartDate = self.pickDateField.date
        self.pickDateField.hidden = true
        self.startDateBtnField.setTitle(self.selectedStartDate.description, forState: nil)
        
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

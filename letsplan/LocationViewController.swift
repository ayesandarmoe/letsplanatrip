//
//  LocationViewController.swift
//  letsplan
//
//  Created by Aye Moe on 12/12/14.
//  Copyright (c) 2014 Aye Moe. All rights reserved.
//

import UIKit
import CoreData

class LocationViewController: UISearchController {

    var locations = [Location]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let context = (UIApplication.sharedApplication().delegate as AppDelegate).managedObjectContext
        
        self.locations = [ Location(city: "Barcelona",country: "Spain",context: context!),
            Location(city:"Paris", country:"France", context:context!),
            Location(city:"Cairo", country:"Egypt", context:context!),
            Location(city:"Santorini", country:"Greece", context:context!)]
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

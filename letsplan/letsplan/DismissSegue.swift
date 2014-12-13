//
//  DismissSegue.swift
//  letsplan
//
//  Created by Aye Moe on 12/13/14.
//  Copyright (c) 2014 Aye Moe. All rights reserved.
//

import UIKit



@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    
    override func perform() {
        if let controller = sourceViewController.presentingViewController? {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
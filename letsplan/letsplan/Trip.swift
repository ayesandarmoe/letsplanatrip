//
//  Trip.swift
//  letsplan
//
//  Created by Aye Moe on 12/12/14.
//  Copyright (c) 2014 Aye Moe. All rights reserved.
//

import Foundation
import CoreData

class Trip: NSManagedObject {

    @NSManaged var endDate: NSDate
    @NSManaged var name: String
    @NSManaged var startDate: NSDate
    @NSManaged var locations: NSSet

}

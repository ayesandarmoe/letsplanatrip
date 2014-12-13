//
//  Location.swift
//  letsplan
//
//  Created by Aye Moe on 12/12/14.
//  Copyright (c) 2014 Aye Moe. All rights reserved.
//

import Foundation
import CoreData

class Location: NSManagedObject {

    @NSManaged var city: String
    @NSManaged var country: String
    @NSManaged var trips: NSSet

//    init(city: String, country: String, entity: NSEntityDescription,   insertIntoManagedObjectContext context: NSManagedObjectContext!){
//        super.init(entity: entity, insertIntoManagedObjectContext: context)
//        self.city  = city
//        self.country = country
//    }
    
    convenience init(city: String, country: String, context: NSManagedObjectContext){
        let entity = NSEntityDescription.entityForName("Location", inManagedObjectContext: context)
        self.init(entity: entity!, insertIntoManagedObjectContext: context)
        self.city = city
        self.country = country
    }
    
//    func createLocation(city: String,
//        country: String, context: NSManagedObjectContext) -> Location{
//        let aLocation = NSEntityDescription.insertNewObjectForEntityForName("Location", inManagedObjectContext: context) as Location
//        aLocation.city = city
//        aLocation.country = country
//        return aLocation
//    }
}

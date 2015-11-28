//
//  CDCard+CoreDataProperties.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/27/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension CDCard {

    @NSManaged var manaCost: String?
    @NSManaged var name: String?
    @NSManaged var text: String?
    @NSManaged var cardCounts: CDCardCount?
    @NSManaged var color: NSSet?

}

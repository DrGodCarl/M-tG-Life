//
//  CDCardCount+CoreDataProperties.swift
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

extension CDCardCount {

    @NSManaged var count: Int32
    @NSManaged var card: CDCard?
    @NSManaged var deck: CDDeck?

}

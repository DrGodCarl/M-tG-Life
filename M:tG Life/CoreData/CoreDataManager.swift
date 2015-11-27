//
//  CoreDataManager.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/25/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

import UIKit
import CoreData

protocol CoreDataConsumer {
    mutating func setCoreDataManager(coreDataManager: CoreDataManager)
}

class CoreDataManager: NSObject {
    var managedObjectContext: NSManagedObjectContext!

    init(managedObjectContext: NSManagedObjectContext) {
        self.managedObjectContext = managedObjectContext
        super.init()
    }

    func saveContext () {
        if managedObjectContext.hasChanges {
            do {
                try managedObjectContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
                abort()
            }
        }
    }
}

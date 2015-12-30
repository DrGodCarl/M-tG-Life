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
    var colorCache = [String: CDColor]()

    init(managedObjectContext: NSManagedObjectContext) {
        self.managedObjectContext = managedObjectContext
        super.init()
    }

    func saveContext() {
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

    func colorForName(name: String) throws -> CDColor? {
        if let cachedValue = colorCache[name] {
            return cachedValue
        }
        let fetchRequest = NSFetchRequest(entityName: NSStringFromClass(CDColor))
        fetchRequest.predicate = NSPredicate(format: "name == %@", name)
        if let fetchResults = try managedObjectContext!.executeFetchRequest(fetchRequest) as? [CDColor] {
            let result = fetchResults[0]
            colorCache[name] = result
            return result
        }
        return nil
    }

    func createNewColor() -> CDColor {
        return NSEntityDescription.insertNewObjectForEntityForName(NSStringFromClass(CDColor), inManagedObjectContext: managedObjectContext) as! CDColor
    }

    func createNewCard() -> CDCard {
        return NSEntityDescription.insertNewObjectForEntityForName(NSStringFromClass(CDCard), inManagedObjectContext: managedObjectContext) as! CDCard
    }
}

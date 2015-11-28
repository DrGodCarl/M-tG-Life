//
//  SearchCollectionViewModel.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/25/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

import Foundation
import CoreData

class SearchCollectionViewModel : NSObject, CoreDataConsumer, CardSearchResultsProtocol {
    private var results: NSFetchedResultsController!

    func setCoreDataManager(coreDataManager: CoreDataManager) {

    }

    func numberOfSections() -> Int {
        return 0
    }

    func numberOfObjectsInSection(section: Int) -> Int {
        return 0
    }

    func objectAtIndexPath(indexPath: NSIndexPath) -> Card {
        return Card()
    }
}
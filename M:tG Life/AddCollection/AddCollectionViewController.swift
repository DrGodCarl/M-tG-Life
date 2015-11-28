//
//  AddCollectionViewController.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/25/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

import UIKit

class AddCollectionViewController: UIViewController, CoreDataConsumer {
    let SEGUE_IDENTIFIER = "AddCollectionContained"

    @IBOutlet var viewModel: AddCollectionViewModel!
    private var _coreDataManager: CoreDataManager!

    func setCoreDataManager(coreDataManager: CoreDataManager) {
        viewModel.setCoreDataManager(coreDataManager)
        self._coreDataManager = coreDataManager
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == SEGUE_IDENTIFIER {
            let destination = segue.destinationViewController as? SearchResultsTableViewController
            destination?.setSearchResults(viewModel)
        }
    }
}

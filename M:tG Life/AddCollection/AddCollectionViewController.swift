//
//  AddCollectionViewController.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/25/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

import UIKit

class AddCollectionViewController: UIViewController, CoreDataConsumer {
    @IBOutlet var viewModel: AddCollectionViewModel!
    var _coreDataManager: CoreDataManager!

    func setCoreDataManager(coreDataManager: CoreDataManager) {
        self._coreDataManager = coreDataManager
    }

}

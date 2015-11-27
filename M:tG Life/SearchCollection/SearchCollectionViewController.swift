//
//  SearchCollectionViewController.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/25/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//
import UIKit

class SearchCollectionViewController: UIViewController, UISearchBarDelegate {
    @IBOutlet var viewModel: SearchCollectionViewModel!
    var _coreDataManager: CoreDataManager!

    func setCoreDataManager(coreDataManager: CoreDataManager) {
        self._coreDataManager = coreDataManager
    }
}

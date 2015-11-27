//
//  BaseTabBarController.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/25/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

import UIKit
import CoreData

class BaseTabBarController: UITabBarController, CoreDataConsumer {
    var _coreDataManager: CoreDataManager!

    func setCoreDataManager(coreDataManager: CoreDataManager) {
        self._coreDataManager = coreDataManager
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var dest = segue.destinationViewController as! CoreDataConsumer
        dest.setCoreDataManager(_coreDataManager)
    }

}

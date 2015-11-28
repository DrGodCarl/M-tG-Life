//
//  SearchResultsProtocol.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/27/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//
import UIKit

protocol CardSearchResultsProtocol {
    func numberOfSections() -> Int
    func numberOfObjectsInSection(section: Int) -> Int
    func objectAtIndexPath(indexPath: NSIndexPath) -> Card
}

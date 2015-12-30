//
//  CardSetup.swift
//  M:tG Life
//
//  Created by Carl Benson on 11/27/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

import UIKit

class CardSetup: NSObject {

    static func insertInitialDataIntoCoreData(coreDataManager: CoreDataManager) {
        for colorName in ["White", "Blue", "Black", "Red", "Green"] {
            coreDataManager.createNewColor().name = colorName
        }
        let filePath = NSBundle.mainBundle().pathForResource("AllCards", ofType: "json")
        let jsonData = NSData(contentsOfFile: filePath!)
        do {
            let jsonDict = try NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.init(rawValue: 0))
            insertCards(jsonDict as! NSDictionary, coreDataManager: coreDataManager)
        } catch {}
    }

    static func insertCards(cards: NSDictionary, coreDataManager: CoreDataManager) {
        for (name, content) in cards {
            insertCard(name as! String, content: content as! NSDictionary, coreDataManager: coreDataManager)
        }
        coreDataManager.saveContext()
    }

    static func insertCard(name: String, content: NSDictionary, coreDataManager: CoreDataManager) {
        let card = coreDataManager.createNewCard()
        card.name = name
        card.manaCost = content["manaCost"] as? String
        card.text = content["text"] as? String
        let textColors = content["colors"] as? Array<String>
        var colors = Set<CDColor>()
        if let certainColors = textColors {
            for textColor in certainColors {
                do {
                    colors.insert(try coreDataManager.colorForName(textColor)!)
                } catch {}
            }
        }
        card.color = colors
    }
}

//
//  MTGCard+CoreDataProperties.h
//  M:tG Life
//
//  Created by Carl Benson on 1/28/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MTGCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTGCard (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *mtgBtmRightDescription;
@property (nullable, nonatomic, retain) NSString *mtgColors;
@property (nullable, nonatomic, retain) NSString *mtgFirstLetterOfName;
@property (nullable, nonatomic, retain) NSString *mtgName;
@property (nullable, nonatomic, retain) NSString *mtgText;
@property (nullable, nonatomic, retain) NSString *mtgTypes;
@property (nullable, nonatomic, retain) MTGCardCount *mtgCardCounts;

@end

NS_ASSUME_NONNULL_END

//
//  MTGCard+CoreDataProperties.h
//  M:tG Life
//
//  Created by Carl Benson on 1/12/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MTGCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTGCard (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *colors;
@property (nullable, nonatomic, retain) NSString *firstLetterOfName;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *text;
@property (nullable, nonatomic, retain) NSString *types;
@property (nullable, nonatomic, retain) NSString *btmRightDescription;
@property (nullable, nonatomic, retain) MTGCardCount *cardCounts;

@end

NS_ASSUME_NONNULL_END

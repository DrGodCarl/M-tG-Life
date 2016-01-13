//
//  MTGCardCount+CoreDataProperties.h
//  M:tG Life
//
//  Created by Carl Benson on 1/12/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MTGCardCount.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTGCardCount (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *count;
@property (nullable, nonatomic, retain) MTGCard *card;
@property (nullable, nonatomic, retain) MTGDeck *deck;

@end

NS_ASSUME_NONNULL_END

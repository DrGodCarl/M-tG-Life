//
//  MTGDeck+CoreDataProperties.h
//  M:tG Life
//
//  Created by Carl Benson on 1/28/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MTGDeck.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTGDeck (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *mtgName;
@property (nullable, nonatomic, retain) NSSet<MTGCardCount *> *mtgCardCounts;

@end

@interface MTGDeck (CoreDataGeneratedAccessors)

- (void)addMtgCardCountsObject:(MTGCardCount *)value;
- (void)removeMtgCardCountsObject:(MTGCardCount *)value;
- (void)addMtgCardCounts:(NSSet<MTGCardCount *> *)values;
- (void)removeMtgCardCounts:(NSSet<MTGCardCount *> *)values;

@end

NS_ASSUME_NONNULL_END

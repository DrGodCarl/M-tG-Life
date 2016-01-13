//
//  MTGDeck+CoreDataProperties.h
//  M:tG Life
//
//  Created by Carl Benson on 1/12/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MTGDeck.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTGDeck (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSSet<MTGCardCount *> *cardCounts;

@end

@interface MTGDeck (CoreDataGeneratedAccessors)

- (void)addCardCountsObject:(MTGCardCount *)value;
- (void)removeCardCountsObject:(MTGCardCount *)value;
- (void)addCardCounts:(NSSet<MTGCardCount *> *)values;
- (void)removeCardCounts:(NSSet<MTGCardCount *> *)values;

@end

NS_ASSUME_NONNULL_END

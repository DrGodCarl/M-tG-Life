//
//  MTGColor+CoreDataProperties.h
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MTGColor.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTGColor (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *cards;

@end

@interface MTGColor (CoreDataGeneratedAccessors)

- (void)addCardsObject:(NSManagedObject *)value;
- (void)removeCardsObject:(NSManagedObject *)value;
- (void)addCards:(NSSet<NSManagedObject *> *)values;
- (void)removeCards:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END

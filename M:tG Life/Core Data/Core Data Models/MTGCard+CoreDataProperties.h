//
//  MTGCard+CoreDataProperties.h
//  M:tG Life
//
//  Created by Carl Benson on 1/7/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MTGCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTGCard (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *firstLetterOfName;
@property (nullable, nonatomic, retain) NSSet<MTGColor *> *colors;

@end

@interface MTGCard (CoreDataGeneratedAccessors)

- (void)addColorsObject:(MTGColor *)value;
- (void)removeColorsObject:(MTGColor *)value;
- (void)addColors:(NSSet<MTGColor *> *)values;
- (void)removeColors:(NSSet<MTGColor *> *)values;

@end

NS_ASSUME_NONNULL_END

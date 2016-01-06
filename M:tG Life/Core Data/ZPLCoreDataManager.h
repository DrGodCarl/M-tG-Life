//
//  ZPLCoreDataManager.h
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "MTGColor.h"
#import "MTGCard.h"

@class ZPLCoreDataManager;
@protocol ZPLCoreDataConsumer <NSObject>

- (void)ingestCoreDataManager:(ZPLCoreDataManager *)coreDataManager;

@end

@interface ZPLCoreDataManager : NSObject

- (instancetype)initWithManagedObjectContext:(NSManagedObjectContext *)moc;
- (void)saveContext;

- (MTGColor *)colorForName:(NSString *)name;
- (MTGCard *)cardForName:(NSString *)name;

@end

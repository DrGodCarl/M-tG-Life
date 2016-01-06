//
//  ZPLCoreDataManager.h
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "ZPLCardProtocol.h"
#import "ZPLColorProtocol.h"

@class ZPLCoreDataManager;
@protocol ZPLCoreDataConsumer <NSObject>

- (void)ingestCoreDataManager:(ZPLCoreDataManager *)coreDataManager;

@end

@interface ZPLCoreDataManager : NSObject

- (instancetype)initWithManagedObjectContext:(NSManagedObjectContext *)moc;
- (void)saveContext;

- (id<ZPLColorProtocol>)colorForName:(NSString *)name;
- (id<ZPLCardProtocol>)cardForName:(NSString *)name;

@end

//
//  ZPLCoreDataManager.h
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ZPLCoreDataManager;
@protocol ZPLCoreDataConsumer <NSObject>

- (void)setCoreDataManager:(ZPLCoreDataManager *)coreDataManager;

@end

@interface ZPLCoreDataManager : NSObject

- (instancetype)initWithManagedObjectContext:(NSManagedObjectContext *)moc;

@end

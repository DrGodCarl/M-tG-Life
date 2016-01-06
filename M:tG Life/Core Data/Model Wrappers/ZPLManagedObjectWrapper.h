//
//  ZPLManagedObjectWrapper.h
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#import "ZPLCoreDataManager.h"

@interface ZPLManagedObjectWrapper : NSObject

@property (strong, nonatomic, readonly) __kindof NSManagedObject *__nonnull object;
@property (strong, nonatomic, readonly) ZPLCoreDataManager *__nonnull coreDataManager;

- (__nonnull instancetype)initWithManagedObject:(NSManagedObject * __nonnull)managedObject
                                coreDataManager:(ZPLCoreDataManager * __nonnull)coreDataManager;

@end

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

@class ZPLManagedObjectWrapper;
typedef ZPLManagedObjectWrapper * _Nonnull(^WrapperCreationBlock)(__kindof NSManagedObject * _Nonnull ,  ZPLCoreDataManager * _Nonnull);

@interface ZPLManagedObjectWrapper : NSObject

+ (WrapperCreationBlock _Nonnull)creationBlock;

@property (strong, nonatomic, readonly) __kindof NSManagedObject *_Nonnull object;
@property (strong, nonatomic, readonly) ZPLCoreDataManager *_Nonnull coreDataManager;

- (_Nonnull instancetype)initWithManagedObject:(NSManagedObject * _Nonnull)managedObject
                                coreDataManager:(ZPLCoreDataManager * _Nonnull)coreDataManager;


@end

//
//  ZPLManagedObjectWrapper.m
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLManagedObjectWrapper.h"

@implementation ZPLManagedObjectWrapper

- (instancetype)initWithManagedObject:(NSManagedObject *)managedObject
                      coreDataManager:(ZPLCoreDataManager *)coreDataManager {
    if (self = [super init]) {
        _object = managedObject;
        _coreDataManager = coreDataManager;
    }
    return self;
}

+ (WrapperCreationBlock)creationBlock {
    return ^__kindof ZPLManagedObjectWrapper *(__kindof NSManagedObject *manObj, ZPLCoreDataManager *coreDataManager) {
        return [[self alloc] initWithManagedObject:manObj
                                   coreDataManager:coreDataManager];
    };
}

@end

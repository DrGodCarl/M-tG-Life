//
//  ZPLManagedResultsController.h
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ZPLManagedObjectWrapper.h"
#import "ZPLCoreDataManager.h"


@interface ZPLManagedResultsController<ObjectType:ZPLManagedObjectWrapper *> : NSObject
typedef ObjectType(^GeneratorBlock)(__kindof NSManagedObject *);

- (instancetype)initWithCoreDataManager:(ZPLCoreDataManager *)coreDataManager generatorFunction:(GeneratorBlock)genFunc;

@end

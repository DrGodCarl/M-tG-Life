//
//  ZPLManagedResultsController.m
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLManagedResultsController.h"

@interface ZPLManagedResultsController()

@property (strong, nonatomic) ZPLCoreDataManager *coreDataManager;
@property (strong, nonatomic) GeneratorBlock genBlock;

@end

@implementation ZPLManagedResultsController

- (instancetype)initWithCoreDataManager:(ZPLCoreDataManager *)coreDataManager
                      generatorFunction:(GeneratorBlock)genFunc {
    if (self = [super init]) {
        self.coreDataManager = coreDataManager;
        self.genBlock = genFunc;
    }
    return self;
}

@end

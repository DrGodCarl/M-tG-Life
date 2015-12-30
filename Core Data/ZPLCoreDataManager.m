//
//  ZPLCoreDataManager.m
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import "ZPLCoreDataManager.h"

@interface ZPLCoreDataManager()

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) NSMutableDictionary<NSString *, NSManagedObject *> *colorCache;

@end

@implementation ZPLCoreDataManager

- (instancetype)initWithManagedObjectContext:(NSManagedObjectContext *)moc {
    if (self = [super init]) {
        self.managedObjectContext = moc;
        self.colorCache = [[NSMutableDictionary alloc] init];
    }
    return self;
}

@end

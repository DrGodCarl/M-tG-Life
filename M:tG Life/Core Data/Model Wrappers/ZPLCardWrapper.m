//
//  ZPLCardWrapper.m
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLCardWrapper.h"

#import "MTGCard.h"
#import "MTGColor.h"

#import "ZPLColorWrapper.h"

@interface ZPLCardWrapper()

@property (nonatomic, readonly) MTGCard *card;

@end


@implementation ZPLCardWrapper
@dynamic card;

- (MTGCard *)card {
    return self.object;
}

- (NSString *)name {
    return self.card.name;
}

- (NSSet<id<ZPLColorProtocol>> *)getColors {
    NSMutableSet *colors = [[NSMutableSet alloc] initWithCapacity:[self.card.colors count]];
    [self.card.colors enumerateObjectsUsingBlock:^(MTGColor * _Nonnull obj, BOOL * _Nonnull stop) {
        [colors addObject:[[ZPLColorWrapper alloc] initWithManagedObject:obj
                                                         coreDataManager:self.coreDataManager]];
    }];
    return [colors copy];
}

@end

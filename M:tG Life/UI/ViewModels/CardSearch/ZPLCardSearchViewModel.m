//
//  CardSearchViewModel.m
//  M:tG Life
//
//  Created by Carl Benson on 1/28/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLCardSearchViewModel.h"

@interface ZPLCardSearchViewModel()

@property (nonatomic) ZPLSearchState currentState;



@end

@implementation ZPLCardSearchViewModel

- (instancetype)init {
    if (self = [super init]) {
        self.currentState = ZPLDefaultSearchState;
        self.validCotypes = [NSSet setWithObjects:@"Artifact", @"Creature", @"Enchantment", @"Land", @"Planeswalker", @"Instant", @"Sorcery", @"Tribal", nil];
        self.typeToCotypes = @{
                               @"Artifact" : [NSSet setWithObjects:@"Creature", @"Enchantment", @"Land", nil],
                               @"Creature" : [NSSet setWithObjects:@"Artifact", @"Enchantment", @"Land", nil],
                               @"Enchantment" : [NSSet setWithObjects:@"", nil],
                               @"Land" : [NSSet setWithObjects:@"", nil],
                               @"Planeswalker" : [NSSet setWithObjects:@"", nil],
                               @"Instant" : [NSSet setWithObjects:@"", nil],
                               @"Sorcery" : [NSSet setWithObjects:@"", nil],
                               @"Tribal" : [NSSet setWithObjects:@"", nil],
                               };
    }
    return self;
}

- (void)typeTapped {
    if (self.currentState == ZPLTypeSearchState) {
        self.currentState = ZPLDefaultSearchState;
    } else {
        self.currentState = ZPLTypeSearchState;
    }
}

- (ZPLSearchState)displayMode {
    return self.currentState;
}

- (void)andTapped {

}

- (UIControlState)andState {
    return UIControlStateNormal;
}

- (void)orTapped {

}

- (UIControlState)orState {
    return UIControlStateNormal;
}

@end

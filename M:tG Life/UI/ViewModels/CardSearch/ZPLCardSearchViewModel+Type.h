//
//  ZPLCardSearchViewModel+Type.h
//  M:tG Life
//
//  Created by Carl Benson on 2/1/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLCardSearchViewModel.h"

@interface ZPLCardSearchViewModel (Type)

- (void)artifactTapped;

- (UIControlState)artifactState;

- (void)creatureTapped;

- (UIControlState)creatureState;

- (void)enchantmentTapped;

- (UIControlState)enchantmentState;

- (void)instantTapped;

- (UIControlState)instantState;

- (void)landTapped;

- (UIControlState)landState;

- (void)planeswalkerTapped;

- (UIControlState)planeswalkerState;

- (void)sorceryTapped;

- (UIControlState)sorceryState;

- (void)tribalTapped;

- (UIControlState)tribalState;

@end

//
//  CardSearchViewModel.h
//  M:tG Life
//
//  Created by Carl Benson on 1/28/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ZPLSearchState) {
    ZPLDefaultSearchState,
    ZPLManaSearchState,
    ZPLSupertypeSearchSate,
    ZPLTypeSearchState,
    ZPLSubtypeSearchState,
    ZPLSetSearchState,
    ZPLTextSearchState,
    ZPLArtistSearchState,
    ZPLPowerToughnessSearchState,
};

@interface ZPLCardSearchViewModel : NSObject

@property NSSet<NSString *> *validCotypes;
@property NSDictionary<NSString *, NSSet *> *typeToCotypes;

- (void)typeTapped;

- (ZPLSearchState)displayMode;

- (void)andTapped;

- (UIControlState)andState;

- (void)orTapped;

- (UIControlState)orState;

@end

#import "ZPLCardSearchViewModel+Type.h"

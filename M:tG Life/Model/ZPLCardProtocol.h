//
//  ZPLCardProtocol.h
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ZPLManaOrdering) {
    MTG_W,
    MTG_U,
    MTG_B,
    MTG_R,
    MTG_G,
    MTG_WU,
    MTG_WB,
    MTG_UB,
    MTG_UR,
    MTG_BR,
    MTG_BG,
    MTG_RG,
    MTG_RW,
    MTG_GW,
    MTG_GU,
    MTG_WUB,
    MTG_WBR,
    MTG_UBR,
    MTG_URG,
    MTG_BRG,
    MTG_BGW,
    MTG_RGW,
    MTG_RWU,
    MTG_GWU,
    MTG_GUB,
    MTG_WUBR,
    MTG_UBRG,
    MTG_BRGW,
    MTG_RGWU,
    MTG_GWUB,
    MTG_WUBRG
};

@protocol ZPLCardProtocol <NSObject>

- (NSString *)name;
- (NSString *)text;
- (NSArray<NSString *> *)colors;
- (NSArray<NSString *> *)types;

@end

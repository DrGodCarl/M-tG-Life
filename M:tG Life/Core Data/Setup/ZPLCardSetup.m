//
//  ZPLCardSetup.m
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import "ZPLCardSetup.h"
#import "MTGColor.h"
#import "MTGCard.h"

// Super secret hidden interface :)
@interface ZPLCoreDataManager()

- (MTGColor *)createNewColor;
- (MTGCard *)createNewCard;

@end


@implementation ZPLCardSetup

+ (void)insertInitialDataIntoCoreData:(ZPLCoreDataManager *)coreDataManager {
    if ([coreDataManager cardForName:@"Abbot of Keral Keep"]) {
        return;
    }
    for (NSString *colorName in @[@"White", @"Blue", @"Black", @"Red", @"Green"]) {
        [coreDataManager createNewColor].name = colorName;
    }
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"AllCards" ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:filePath];
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:0
                                                               error:nil];
    [self insertCards:jsonDict
         intoCoreData:coreDataManager];
}

+ (void)insertCards:(NSDictionary *)cards intoCoreData:(ZPLCoreDataManager *)coreDataManager {
    [cards enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull name, NSDictionary * _Nonnull card, BOOL * _Nonnull _) {
        [self insertCard:card named:name intoCoreData:coreDataManager];
    }];
    [coreDataManager saveContext];
}

+ (void)insertCard:(NSDictionary *)content named:(NSString *)cardName intoCoreData:(ZPLCoreDataManager *)coreDataManager {
    MTGCard *card = [coreDataManager createNewCard];
    card.name = cardName;
    NSArray<NSString *> *colors = content[@"colors"];
    NSMutableSet<MTGColor *> *cardColors = [NSMutableSet setWithCapacity:[colors count]];
    for (NSString *color in colors) {
        [cardColors addObject:[coreDataManager colorForName:color]];
    }
    card.colors = [cardColors copy];
}

@end

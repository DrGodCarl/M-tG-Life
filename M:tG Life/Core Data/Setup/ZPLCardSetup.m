//
//  ZPLCardSetup.m
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import "ZPLCardSetup.h"
#import "MTGCard.h"

// Super secret hidden interface :)
@interface ZPLCoreDataManager()

- (MTGCard *)createNewCard;

- (MTGCard *)mtgCardForName:(NSString *)name;

@end


@implementation ZPLCardSetup

+ (void)insertInitialDataIntoCoreData:(ZPLCoreDataManager *)coreDataManager {
    if ([coreDataManager mtgCardForName:@"Abbot of Keral Keep"]) {
        return;
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
    NSString *colors = [((NSArray<NSString *> *)content[@"colors"]) componentsJoinedByString:@""];
    colors = [NSString stringWithFormat:@"%@", colors];
    card.colors = colors;
    card.types = [((NSArray<NSString *> *) content[@"types"]) componentsJoinedByString:@""];
    card.text = content[@"text"];
    NSString *bottomRight;
    if (content[@"power"]) {
        bottomRight = [NSString stringWithFormat:@"%@ / %@", content[@"power"], content[@"toughness"]];
    } else if (content[@"loyalty"]) {
        bottomRight = [NSString stringWithFormat:@"%@", content[@"loyalty"]];
    }
    card.btmRightDescription = bottomRight;
    
}

@end

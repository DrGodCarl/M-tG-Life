//
//  ZPLCardSetup.m
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import "ZPLCardSetup.h"


@implementation ZPLCardSetup

+ (void)insertInitialDataIntoCoreData:(ZPLCoreDataManager *)coreDataManager {
    for (NSString *colorName in @[@"White", @"Blue", @"Black", @"Red", @"Green"]) {
        NSLog(@"%@", colorName);
    }
    
}

+ (void)insertCards:(NSDictionary *)card intoCoreData:(ZPLCoreDataManager *)coreDataManager {

}

+ (void)insertCard:(NSDictionary *)card named:(NSString *)cardName intoCoreData:(ZPLCoreDataManager *)coreDataManager {

}

@end

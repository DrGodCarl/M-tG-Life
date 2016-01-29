//
//  MTGCard.m
//  M:tG Life
//
//  Created by Carl Benson on 1/12/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "MTGCard.h"
#import "MTGCardCount.h"

@implementation MTGCard

#pragma mark - MTGCard
- (NSString *)mtgFirstLetterOfName {
    return [[self.name substringToIndex:1] uppercaseString];
}


#pragma mark - ZPLCardProtocol
- (NSString *)name {
    return self.mtgName;
}

- (NSString *)text {
    return self.mtgText;
}

- (NSArray<NSString *> *)colors {
    return [self.mtgColors componentsSeparatedByString:@", "];
}

- (NSArray<NSString *> *)types {
    return [self.mtgTypes componentsSeparatedByString:@", "];
}


@end

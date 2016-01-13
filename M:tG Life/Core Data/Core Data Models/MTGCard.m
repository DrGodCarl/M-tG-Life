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

- (NSString *)fetchName {
    return self.name;
}

- (NSString *)fetchText {
    return self.text;
}

- (NSString *)firstLetterOfName {
    return [[self.name substringToIndex:1] uppercaseString];
}

- (NSArray<NSString *> *)fetchColors {
    return [self.colors componentsSeparatedByString:@", "];
}

- (NSArray<NSString *> *)fetchTypes {
    return [self.types componentsSeparatedByString:@", "];
}


@end

//
//  MTGCard.m
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "MTGCard.h"
#import "MTGColor.h"

@implementation MTGCard

- (NSString *)firstLetterOfName {
    return [[self.name substringToIndex:1] uppercaseString];
}

@end

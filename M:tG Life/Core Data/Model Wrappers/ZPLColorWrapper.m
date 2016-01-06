//
//  ZPLColorWrapper.m
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLColorWrapper.h"

#import "MTGColor.h"

@interface ZPLColorWrapper()

@property (nonatomic, readonly) MTGColor *color;

@end

@implementation ZPLColorWrapper
@dynamic color;

- (MTGColor *)color {
    return self.object;
}

- (NSString *)name {
    return self.color.name;
}

@end

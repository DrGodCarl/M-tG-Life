//
//  ZPLCardProtocol.h
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ZPLColorProtocol.h"

@protocol ZPLCardProtocol <NSObject>

@property (readonly) NSString *name;

- (NSSet<id<ZPLColorProtocol>> *)getColors;

@end

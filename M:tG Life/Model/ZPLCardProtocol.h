//
//  ZPLCardProtocol.h
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol ZPLCardProtocol <NSObject>

- (NSString *)name;
- (NSString *)text;
- (NSArray<NSString *> *)colors;
- (NSArray<NSString *> *)types;

@end

//
//  MTGCard.h
//  M:tG Life
//
//  Created by Carl Benson on 1/12/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#import "ZPLCardProtocol.h"

@class MTGCardCount;

NS_ASSUME_NONNULL_BEGIN

@interface MTGCard : NSManagedObject <ZPLCardProtocol>

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "MTGCard+CoreDataProperties.h"

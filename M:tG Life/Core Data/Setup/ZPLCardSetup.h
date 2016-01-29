//
//  ZPLCardSetup.h
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZPLCoreDataManager.h"

@interface ZPLCardSetup : NSObject

+ (void)insertInitialDataIntoCoreData:(ZPLCoreDataManager *)coreDataManager
                             jsonFile:(NSURL *)jsonFileURL;
@end

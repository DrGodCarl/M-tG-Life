//
//  ZPLManagedResultsController.h
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ZPLManagedObjectWrapper.h"
#import "ZPLCoreDataManager.h"
#import <CoreData/CoreData.h>


@interface ZPLFetchedResultsController<ObjectType> : NSObject
typedef ObjectType(^GeneratorBlock)(__kindof NSManagedObject *, ZPLCoreDataManager *);

- (instancetype)initWithCoreDataManager:(ZPLCoreDataManager *)coreDataManager
managedResultsController:(NSFetchedResultsController *)resultsController
generatorFunction:(GeneratorBlock)genFunc;

- (ObjectType)objectAtIndexPath:(NSIndexPath *)indexPath;
- (NSIndexPath *)indexPathForObject:(ObjectType)object;

- (NSString *)sectionIndexTitleForSectionName:(NSString *)sectionName;
@property (nonatomic, readonly) NSArray<NSString *> *sectionIndexTitles;
- (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex;

@end

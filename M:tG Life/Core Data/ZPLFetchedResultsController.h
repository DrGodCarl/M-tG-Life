//
//  ZPLManagedResultsController.h
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ZPLCoreDataManager.h"
#import <CoreData/CoreData.h>


@interface ZPLFetchedResultsController<ObjectType> : NSObject

- (instancetype)initWithManagedResultsController:(NSFetchedResultsController *)resultsController;

- (NSUInteger)numberOfSections;
- (NSArray<NSString *> *)sectionIndexTitles;
- (NSUInteger)numberOfObjectsInSection:(NSUInteger)sectionNumber;

- (ObjectType)objectAtIndexPath:(NSIndexPath *)indexPath;
- (NSIndexPath *)indexPathForObject:(ObjectType)object;

- (NSString *)sectionIndexTitleForSectionName:(NSString *)sectionName;
@property (nonatomic, readonly) NSArray<NSString *> *sectionIndexTitles;
- (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex;

@end

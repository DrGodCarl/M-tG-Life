//
//  ZPLManagedResultsController.m
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLFetchedResultsController.h"

@interface ZPLFetchedResultsController()

@property (strong, nonatomic) NSFetchedResultsController *resultsController;

@end

@implementation ZPLFetchedResultsController
@dynamic sectionIndexTitles;

- (instancetype)initWithManagedResultsController:(NSFetchedResultsController *)resultsController {
    if (self = [super init]) {
        self.resultsController = resultsController;
    }
    return self;
}

- (NSUInteger)numberOfSections {
    return [[self.resultsController sections] count];
}

- (NSArray<NSString *> *)sectionIndexTitles {
    return [self.resultsController sectionIndexTitles];
}

- (NSUInteger)numberOfObjectsInSection:(NSUInteger)sectionNumber {
    return [[[self.resultsController sections] objectAtIndex:sectionNumber] numberOfObjects];
}

- (id)objectAtIndexPath:(NSIndexPath *)indexPath {
    return [self.resultsController objectAtIndexPath:indexPath];
}

- (NSIndexPath *)indexPathForObject:(__kindof NSManagedObject *)object {
    return [self.resultsController indexPathForObject:object];
}

- (NSString *)sectionIndexTitleForSectionName:(NSString *)sectionName {
    return [self.resultsController sectionIndexTitleForSectionName:sectionName];
}

- (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex {
    return [self.resultsController sectionForSectionIndexTitle:title atIndex:sectionIndex];
}

@end

//
//  ZPLManagedResultsController.m
//  M:tG Life
//
//  Created by Carl Benson on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLFetchedResultsController.h"

@interface ZPLFetchedResultsController()

@property (strong, nonatomic) ZPLCoreDataManager *coreDataManager;
@property (strong, nonatomic) NSFetchedResultsController *resultsController;
@property (strong, nonatomic) GeneratorBlock genBlock;

@end

@implementation ZPLFetchedResultsController
@dynamic sectionIndexTitles;

- (instancetype)initWithCoreDataManager:(ZPLCoreDataManager *)coreDataManager
               managedResultsController:(NSFetchedResultsController *)resultsController
                      generatorFunction:(GeneratorBlock)genFunc {
    if (self = [super init]) {
        self.coreDataManager = coreDataManager;
        self.resultsController = resultsController;
        self.genBlock = genFunc;
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
    return self.genBlock([self.resultsController objectAtIndexPath:indexPath], self.coreDataManager);
}

- (NSIndexPath *)indexPathForObject:(ZPLManagedObjectWrapper *)object {
    return [self.resultsController indexPathForObject:object.object];
}

- (NSString *)sectionIndexTitleForSectionName:(NSString *)sectionName {
    return [self.resultsController sectionIndexTitleForSectionName:sectionName];
}

- (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex {
    return [self.resultsController sectionForSectionIndexTitle:title atIndex:sectionIndex];
}

@end

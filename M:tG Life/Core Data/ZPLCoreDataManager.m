//
//  ZPLCoreDataManager.m
//  M:tG Life
//
//  Created by Carl Benson on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import "ZPLCoreDataManager.h"

#import "MTGColor.h"
#import "MTGCard.h"

#import "ZPLCardWrapper.h"
#import "ZPLColorWrapper.h"
#import "ZPLFetchedResultsController.h"

@interface ZPLCoreDataManager()

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) NSMutableDictionary<NSString *, MTGColor *> *colorCache;

@end

@implementation ZPLCoreDataManager

- (instancetype)initWithManagedObjectContext:(NSManagedObjectContext *)moc {
    if (self = [super init]) {
        self.managedObjectContext = moc;
        self.colorCache = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

// This is pretty verbose to repeat over and over again.
- (__kindof NSManagedObject *)createNewManagedObjectForClass:(Class)clazz {
    return [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass(clazz)
                                         inManagedObjectContext:self.managedObjectContext];
}

- (id<ZPLColorProtocol>)colorForName:(NSString *)name {
    MTGColor *color = [self mtgColorForName:name];
    if (!color) {
        return nil;
    }
    return [[ZPLColorWrapper alloc] initWithManagedObject:color
                                          coreDataManager:self];
}

- (id<ZPLCardProtocol>)cardForName:(NSString *)name {
    MTGCard *card = [self mtgCardForName:name];
    if (!card) {
        return nil;
    }
    return [[ZPLCardWrapper alloc] initWithManagedObject:card
                                         coreDataManager:self];
}

- (ZPLFetchedResultsController<ZPLCardWrapper *> *)fetchAllCards {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:NSStringFromClass(MTGCard.class)
                                              inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    [fetchRequest setFetchBatchSize:50];
    NSSortDescriptor *nameDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
    NSArray *sortDescriptors = @[nameDescriptor];
    [fetchRequest setSortDescriptors:sortDescriptors];
    NSFetchedResultsController *controller = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest
                                                                                 managedObjectContext:self.managedObjectContext
                                                                                   sectionNameKeyPath:nil
                                                                                            cacheName:@"allCards"];
    NSError *error;
    if (![controller performFetch:&error]) {
        NSLog(@"%@", error);
        return nil;
    }
    return [[ZPLFetchedResultsController alloc] initWithCoreDataManager:self
                                               managedResultsController:controller
                                                      generatorFunction:[ZPLCardWrapper creationBlock]];
}

#pragma mark - Hidden / Internal methods
/** 
  * Below here is a collection of methods that need to be public for utility reasons,
  * like basic population of initial database, but will otherwise remain unexposed.
  * The interfaces for these should be in the place that needs them. If more than one
  * place ends up needing them I'll create a category somewhere.
  */

- (MTGColor *)createNewColor {
    return [self createNewManagedObjectForClass:MTGColor.class];
}

- (MTGCard *)createNewCard {
    return [self createNewManagedObjectForClass:MTGCard.class];
}

- (MTGColor *)mtgColorForName:(NSString *)name {
    if (self.colorCache[name]) {
        return self.colorCache[name];
    }
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:NSStringFromClass(MTGColor.class)];
    request.predicate = [NSPredicate predicateWithFormat:@"name == %@", name];
    NSArray<MTGColor *> *colors = [self.managedObjectContext executeFetchRequest:request error:nil];
    MTGColor *color = colors[0];
    self.colorCache[name] = color;
    return color;
}

- (MTGCard *)mtgCardForName:(NSString *)name {
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:NSStringFromClass(MTGCard.class)];
    request.predicate = [NSPredicate predicateWithFormat:@"name == %@", name];
    NSArray<MTGCard *> *cards = [self.managedObjectContext executeFetchRequest:request error:nil];
    if (![cards count]) {
        return nil;
    }
    return cards[0];
}


@end

//
//  ZPLMainTabBarController.m
//  M:tG Life
//
//  Created by Nick Wallin on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import "ZPLMainTabBarController.h"

@interface ZPLMainTabBarController ()

@property (nonatomic, weak) ZPLCoreDataManager* coreDataManager;

@end

@implementation ZPLMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ZPLCoreDataConsumer

- (void)ingestCoreDataManager:(ZPLCoreDataManager *)coreDataManager {
    self.coreDataManager = coreDataManager;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue destinationViewController] conformsToProtocol:@protocol(ZPLCoreDataConsumer)]) {
        [[segue destinationViewController] setCoreDataManager:self.coreDataManager];
    }
}

@end

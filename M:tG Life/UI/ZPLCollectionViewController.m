//
//  ZPLCollectionViewController.m
//  M:tG Life
//
//  Created by Nick Wallin on 12/29/15.
//  Copyright © 2015 Zero Point Logic. All rights reserved.
//

#import "ZPLCollectionViewController.h"

@interface ZPLCollectionViewController ()

@property (nonatomic, weak) ZPLCoreDataManager* coreDataManager;

@end

@implementation ZPLCollectionViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ZPLCardSearchViewModel_TypeTest.m
//  M:tG Life
//
//  Created by Carl Benson on 2/1/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ZPLCardSearchViewModel.h"

@interface ZPLCardSearchViewModel_TypeTest : XCTestCase

@property (strong, nonatomic) ZPLCardSearchViewModel *viewModel;

@end

@implementation ZPLCardSearchViewModel_TypeTest

- (void)setUp {
    [super setUp];
    self.viewModel = [[ZPLCardSearchViewModel alloc] init];

    XCTAssertEqual([self.viewModel displayMode], ZPLDefaultSearchState);
    [self.viewModel typeTapped];
    XCTAssertEqual([self.viewModel displayMode], ZPLTypeSearchState);
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAndCreature {
    [self.viewModel andTapped];
    [self.viewModel creatureTapped];

    XCTAssertEqual([self.viewModel creatureState], UIControlStateSelected);

    XCTAssertEqual([self.viewModel enchantmentState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel artifactState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel landState], UIControlStateNormal);

    XCTAssertEqual([self.viewModel planeswalkerState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel sorceryState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel instantState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel tribalState], UIControlStateDisabled);
}

- (void)testAndEnchantment {
    [self.viewModel andTapped];
    [self.viewModel enchantmentTapped];

    XCTAssertEqual([self.viewModel enchantmentState], UIControlStateSelected);

    XCTAssertEqual([self.viewModel creatureState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel artifactState], UIControlStateNormal);

    XCTAssertEqual([self.viewModel landState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel planeswalkerState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel sorceryState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel instantState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel tribalState], UIControlStateDisabled);
}

- (void)testAndArtifact {
    [self.viewModel andTapped];
    [self.viewModel artifactTapped];

    XCTAssertEqual([self.viewModel artifactState], UIControlStateSelected);

    XCTAssertEqual([self.viewModel enchantmentState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel creatureState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel landState], UIControlStateNormal);

    XCTAssertEqual([self.viewModel planeswalkerState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel sorceryState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel instantState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel tribalState], UIControlStateDisabled);
}

- (void)testAndLand {
    [self.viewModel andTapped];
    [self.viewModel landTapped];

    XCTAssertEqual([self.viewModel landState], UIControlStateSelected);

    XCTAssertEqual([self.viewModel creatureState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel artifactState], UIControlStateNormal);

    XCTAssertEqual([self.viewModel enchantmentState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel planeswalkerState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel sorceryState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel instantState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel tribalState], UIControlStateDisabled);
}

- (void)testAndPlaneswalker {
    [self.viewModel andTapped];
    [self.viewModel planeswalkerTapped];

    XCTAssertEqual([self.viewModel planeswalkerState], UIControlStateSelected);

    XCTAssertEqual([self.viewModel creatureState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel artifactState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel enchantmentState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel landState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel sorceryState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel instantState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel tribalState], UIControlStateDisabled);
}

- (void)testAndInstant {
    [self.viewModel andTapped];
    [self.viewModel instantTapped];

    XCTAssertEqual([self.viewModel instantState], UIControlStateSelected);

    XCTAssertEqual([self.viewModel creatureState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel artifactState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel enchantmentState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel landState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel sorceryState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel planeswalkerState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel tribalState], UIControlStateDisabled);
}

- (void)testAndSorcery {
    [self.viewModel andTapped];
    [self.viewModel sorceryTapped];

    XCTAssertEqual([self.viewModel sorceryState], UIControlStateSelected);

    XCTAssertEqual([self.viewModel creatureState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel artifactState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel enchantmentState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel landState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel instantState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel planeswalkerState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel tribalState], UIControlStateDisabled);
}

- (void)testAndTribal {
    [self.viewModel andTapped];
    [self.viewModel tribalTapped];

    XCTAssertEqual([self.viewModel tribalState], UIControlStateSelected);

    XCTAssertEqual([self.viewModel enchantmentState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel instantState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel sorceryState], UIControlStateNormal);
    XCTAssertEqual([self.viewModel artifactState], UIControlStateNormal);

    XCTAssertEqual([self.viewModel creatureState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel landState], UIControlStateDisabled);
    XCTAssertEqual([self.viewModel planeswalkerState], UIControlStateDisabled);
}

@end

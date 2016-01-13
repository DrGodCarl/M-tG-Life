//
//  ZPLColorSelectorView.m
//  M:tG Life
//
//  Created by Nick Wallin on 1/5/16.
//  Copyright © 2016 Zero Point Logic. All rights reserved.
//

#import "ZPLColorSelectorView.h"

typedef NS_ENUM(NSUInteger, ZPLCardinalColor) {
    ZPLCardinalColorWhite,
    ZPLCardinalColorBlue,
    ZPLCardinalColorBlack,
    ZPLCardinalColorRed,
    ZPLCardinalColorGreen,
    ZPLCardinalColorCount,
};

NSString* cardinalColorToString(ZPLCardinalColor cardinalColor) {
    switch (cardinalColor) {
        case ZPLCardinalColorWhite:
            return @"White";
            break;
        case ZPLCardinalColorBlue:
            return @"Blue";
            break;
        case ZPLCardinalColorBlack:
            return @"Black";
            break;
        case ZPLCardinalColorRed:
            return @"Red";
            break;
        case ZPLCardinalColorGreen:
            return @"Green";
            break;
        default:
            return nil;
            break;
    }
}

@interface ZPLColorSelectorView ()

@property (nonatomic, strong) NSArray *colorButtons; // need?

@end

@implementation ZPLColorSelectorView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (!self) {
        return nil;
    }

    [self setupView];

    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (!self) {
        return nil;
    }

    [self setupView];

    return self;
}

- (void)setupView {
    NSMutableArray *colorButtonArray = [[NSMutableArray alloc] init];
    for (ZPLCardinalColor colorInt = ZPLCardinalColorWhite; colorInt < ZPLCardinalColorCount; colorInt++) {
        UIButton *colorButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [colorButton setTitle:cardinalColorToString(colorInt) forState:UIControlStateNormal];
        [colorButton.titleLabel setTintColor:[UIColor blueColor]];
        [colorButton setTag:colorInt];
        [self addSubview:colorButton];
        [colorButtonArray addObject:colorButton];
    }

    self.colorButtons = [colorButtonArray copy];
}

- (void)layoutSubviews {
    CGFloat offset = 0.f;
    for (UIButton *button in self.colorButtons) {
        [button setFrame:CGRectMake(offset, 0, self.frame.size.width / ZPLCardinalColorCount, self.frame.size.height)];
        offset += button.frame.size.width;
    }
}

- (void)colorSelected:(UIButton *)colorButton {

}

@end

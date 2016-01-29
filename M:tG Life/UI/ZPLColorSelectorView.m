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

UIColor* cardinalColorToUIColor(ZPLCardinalColor cardinalColor) {
    switch (cardinalColor) {
        case ZPLCardinalColorWhite:
            return [UIColor colorWithRed:0.67f green:0.55f blue:0.09f alpha:1.0f];
            break;
        case ZPLCardinalColorBlue:
            return [UIColor blueColor];
            break;
        case ZPLCardinalColorBlack:
            return [UIColor blackColor];
            break;
        case ZPLCardinalColorRed:
            return [UIColor redColor];
            break;
        case ZPLCardinalColorGreen:
            return [UIColor colorWithRed:0.14f green:0.41f blue:0.18f alpha:1.0f];
            break;
        default:
            return [UIColor clearColor];
            break;
    }
}

UIColor* cardinalColorToContrastUIColor(ZPLCardinalColor cardinalColor) {
    switch (cardinalColor) {
        case ZPLCardinalColorWhite:
            return [UIColor colorWithRed:0.96f green:0.945f blue:0.87f alpha:1.0f];
            break;
        case ZPLCardinalColorBlue:
            return [UIColor colorWithRed:0.64f green:0.80f blue:0.95f alpha:1.0f];
            break;
        case ZPLCardinalColorBlack:
            return [UIColor lightGrayColor];
            break;
        case ZPLCardinalColorRed:
            return [UIColor colorWithRed:1.0f green:0.68f blue:0.68f alpha:1.0f];
            break;
        case ZPLCardinalColorGreen:
            return [UIColor colorWithRed:0.75f green:0.97f blue:0.43f alpha:1.0f];
            break;
        default:
            return [UIColor clearColor];
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
        UIButton *colorButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [colorButton setTitle:cardinalColorToString(colorInt) forState:UIControlStateNormal];
        [colorButton setTitleColor:cardinalColorToUIColor(colorInt) forState:UIControlStateNormal];
        [colorButton setBackgroundColor:cardinalColorToContrastUIColor(colorInt)];
        [colorButton.titleLabel setTintColor:[UIColor blueColor]];
        [colorButton setTag:colorInt];
        [colorButton addTarget:self action:@selector(colorSelected:) forControlEvents:UIControlEventTouchUpInside];
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
    [colorButton setSelected:!colorButton.selected];
    [colorButton setTitleColor:colorButton.selected ? cardinalColorToContrastUIColor(colorButton.tag) : cardinalColorToUIColor(colorButton.tag)
                      forState:UIControlStateNormal];
    [colorButton setBackgroundColor:colorButton.selected ? cardinalColorToUIColor(colorButton.tag) : cardinalColorToContrastUIColor(colorButton.tag)];
}

@end

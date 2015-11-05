//
//  TLCityGroupCell.m
//  TLCityPickerDemo
//
//  Created by 李伯坤 on 15/11/5.
//  Copyright © 2015年 李伯坤. All rights reserved.
//

#import "TLCityGroupCell.h"

#define     MIN_SPACE           10
#define     WIDTH_SPACE         13.5
#define     WIDTH_BUTTON        85
#define     HEIGHT_BUTTON       38

@interface TLCityGroupCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) NSMutableArray *arrayCityButtons;

@end

@implementation TLCityGroupCell

- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setBackgroundColor:[UIColor colorWithWhite:0.95 alpha:1.0]];
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        [self addSubview:self.titleLabel];
    }
    return self;
}

- (void) layoutSubviews
{
    [super layoutSubviews];
    float x = WIDTH_SPACE;
    float y = 5;
    CGSize size = [self.titleLabel sizeThatFits:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    [self.titleLabel setFrame:CGRectMake(x, y, self.frame.size.width - 10, size.height)];
    y += size.height + 10;
    
    float space = MIN_SPACE;       // 最小空隙
    int t = (self.frame.size.width - WIDTH_SPACE - 20) / (WIDTH_BUTTON + space);
    space = (self.frame.size.width - 20 - WIDTH_BUTTON * t) / (t + 1);      // 修正空隙大小
    for (int i = 0; i < self.arrayCityButtons.count; i ++) {
        UIButton *button = [self.arrayCityButtons objectAtIndex:i];
        [button setFrame:CGRectMake(x, y, WIDTH_BUTTON, HEIGHT_BUTTON)];
        if ((i + 1) % t == 0) {
            y += HEIGHT_BUTTON + 5;
            x = WIDTH_SPACE;
        }
        else {
            x += WIDTH_BUTTON + space;
        }
    }
}

+ (CGFloat) getCellHeightOfCityArray:(NSArray *)cityArray
{
    float space = MIN_SPACE;       // 最小空隙
    int t = ([UIScreen mainScreen].bounds.size.width - 20 - WIDTH_SPACE) / (WIDTH_BUTTON + space);
    space = ([UIScreen mainScreen].bounds.size.width - 20 - WIDTH_BUTTON * t) / (t + 1);
    float y = 40 + (HEIGHT_BUTTON + 5) * (cityArray.count / t + (cityArray.count % t == 0 ? 0 : 1));
    return y;
}

#pragma mark - Setter
- (void) setTitle:(NSString *)title
{
    _title = title;
    [_titleLabel setText:title];
}

- (void) setCityArray:(NSArray *)cityArray
{
    _cityArray = cityArray;
    for (int i = 0; i < cityArray.count; i ++) {
        TLCity *city = [cityArray objectAtIndex:i];
        UIButton *button = nil;
        if (i < self.arrayCityButtons.count) {
            button = [self.arrayCityButtons objectAtIndex:i];
        }
        else {
            button = [[UIButton alloc] init];
            [button setBackgroundColor:[UIColor whiteColor]];
            [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
            [button.titleLabel setFont:[UIFont systemFontOfSize:14.0f]];
            [button.layer setMasksToBounds:YES];
            [button.layer setCornerRadius:2.0f];
            [button.layer setBorderColor:[UIColor colorWithWhite:0.8 alpha:1.0].CGColor];
            [button.layer setBorderWidth:1.0f];
            [button addTarget:self action:@selector(cityButtonDown:) forControlEvents:UIControlEventTouchUpInside];
            [self.arrayCityButtons addObject:button];
            [self addSubview:button];
        }
        [button setTitle:city.cityName forState:UIControlStateNormal];
        button.tag = i;
    }
    while (cityArray.count < self.arrayCityButtons.count) {
        [self.arrayCityButtons removeLastObject];
    }
}

#pragma mark - Event Response
- (void) cityButtonDown:(UIButton *)sender
{
    TLCity *city = [self.cityArray objectAtIndex:sender.tag];
    if (_delegate && [_delegate respondsToSelector:@selector(cityGroupCellDidSelectCity:)]) {
        [_delegate cityGroupCellDidSelectCity:city];
    }
}

#pragma mark - Getter
- (UILabel *) titleLabel
{
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
        [_titleLabel setFont:[UIFont systemFontOfSize:14.0]];
    }
    return _titleLabel;
}

- (NSMutableArray *) arrayCityButtons
{
    if (_arrayCityButtons == nil) {
        _arrayCityButtons = [[NSMutableArray alloc] init];
    }
    return _arrayCityButtons;
}


@end

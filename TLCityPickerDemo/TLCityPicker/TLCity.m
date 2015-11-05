//
//  TLCity.m
//  TLCityPickerDemo
//
//  Created by 李伯坤 on 15/11/5.
//  Copyright © 2015年 李伯坤. All rights reserved.
//

#import "TLCity.h"

@implementation TLCity

@end

#pragma mark - TLCityGroup
@implementation TLCityGroup

- (NSMutableArray *) arrayCitys
{
    if (_arrayCitys == nil) {
        _arrayCitys = [[NSMutableArray alloc] init];
    }
    return _arrayCitys;
}

@end

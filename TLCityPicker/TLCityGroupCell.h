//
//  TLCityGroupCell.h
//  TLCityPickerDemo
//
//  Created by 李伯坤 on 15/11/5.
//  Copyright © 2015年 李伯坤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TLCity.h"
#import "TLCityPickerDelegate.h"

@interface TLCityGroupCell : UITableViewCell

@property (nonatomic, assign) id<TLCityGroupCellDelegate>delegate;

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSArray *cityArray;

+ (CGFloat) getCellHeightOfCityArray:(NSArray *)cityArray;

@end

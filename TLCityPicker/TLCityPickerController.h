//
//  TLCityPickerController.h
//  TLCityPickerDemo
//
//  Created by 李伯坤 on 15/11/5.
//  Copyright © 2015年 李伯坤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TLCityPickerDelegate.h"
#import "TLCity.h"

#define     MAX_COMMON_CITY_NUMBER      8
#define     COMMON_CITY_DATA_KEY        @"TLCityPickerCommonCityArray"

@interface TLCityPickerController : UITableViewController

@property (nonatomic, assign) id<TLCityPickerDelegate>delegate;

/*
 *  定位城市id
 */
@property (nonatomic, strong) NSString *locationCityID;

/*
 *  常用城市id数组,自动管理，也可赋值
 */
@property (nonatomic, strong) NSMutableArray *commonCitys;

/*
 *  热门城市id数组
 */
@property (nonatomic, strong) NSArray *hotCitys;


/*
 *  城市数据，可在Getter方法中重新指定
 */
@property (nonatomic, strong) NSMutableArray *data;

@end

//
//  TLCityPickerSearchResultController.h
//  TLCityPickerDemo
//
//  Created by 李伯坤 on 15/11/5.
//  Copyright © 2015年 李伯坤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TLCityPickerDelegate.h"

@interface TLCityPickerSearchResultController : UITableViewController <UISearchResultsUpdating>

@property (nonatomic, assign) id<TLSearchResultControllerDelegate>searchResultDelegate;

@property (nonatomic, strong) NSArray *cityData;

@end

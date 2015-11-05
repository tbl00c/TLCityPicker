//
//  TLCityPickerDelegate.h
//  TLCityPickerDemo
//
//  Created by 李伯坤 on 15/11/5.
//  Copyright © 2015年 李伯坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TLCity;
@class TLCityPickerController;

@protocol TLCityPickerDelegate <NSObject>

- (void) cityPickerController:(TLCityPickerController *)cityPickerViewController
                    didSelectCity:(TLCity *)city;

- (void) cityPickerControllerDidCancel:(TLCityPickerController *)cityPickerViewController;

@end

@protocol TLCityGroupCellDelegate <NSObject>

- (void) cityGroupCellDidSelectCity:(TLCity *)city;

@end

@protocol TLSearchResultControllerDelegate <NSObject>

- (void) searchResultControllerDidSelectCity:(TLCity *)city;

@end

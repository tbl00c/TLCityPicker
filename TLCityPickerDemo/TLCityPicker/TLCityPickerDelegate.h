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

@protocol TLCitySelectedDelegate <NSObject>

- (void) didSelectCity:(TLCity *)city;

@end

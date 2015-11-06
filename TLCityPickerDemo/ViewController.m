//
//  ViewController.m
//  TLCityPickerDemo
//
//  Created by 李伯坤 on 15/11/5.
//  Copyright © 2015年 李伯坤. All rights reserved.
//

#import "ViewController.h"
#import "TLCityPickerController.h"

@interface ViewController () <TLCityPickerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *cityPickerButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)cityPickerButtonDown:(UIButton *)sender {
    TLCityPickerController *cityPickerVC = [[TLCityPickerController alloc] init];
    [cityPickerVC setDelegate:self];
//    
//    cityPickerVC.locationCityID = @"1400010000";
//    cityPickerVC.commonCitys = @[@"1400010000", @"100010000"];
//    cityPickerVC.hotCitys = @[@"100010000", @"200010000", @"300210000", @"600010000", @"300110000",];
    
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:cityPickerVC] animated:YES completion:^{
        
    }];
}

#pragma mark - TLCityPickerDelegate
- (void) cityPickerController:(TLCityPickerController *)cityPickerViewController didSelectCity:(TLCity *)city
{
    [self.cityPickerButton setTitle:city.cityName forState:UIControlStateNormal];
    [cityPickerViewController dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void) cityPickerControllerDidCancel:(TLCityPickerController *)cityPickerViewController
{
    [cityPickerViewController dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end

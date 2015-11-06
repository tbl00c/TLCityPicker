#TLCityPicker
中国城市选择器

## Usage
```c
TLCityPickerController *cityPickerVC = [[TLCityPickerController alloc] init];
[cityPickerVC setDelegate:self];

// 设置定位城市
cityPickerVC.locationCityID = @"1400010000";

// 最近访问城市，如果不设置，将自动管理
//  cityPickerVC.commonCitys = [[NSMutableArray alloc] initWithArray: @[@"1400010000", @"100010000"]];

// 热门城市，需手动设置
cityPickerVC.hotCitys = @[@"100010000", @"200010000", @"300210000", @"600010000", @"300110000"];

// 支持push、present方式跳入，但需要有UINavigationController
[self presentViewController:[[UINavigationController alloc] initWithRootViewController:cityPickerVC] animated:YES completion:^{  
}];
```

## DEMO
![image](https://github.com/tbl00c/TLCityPicker/blob/master/Demo.gif)

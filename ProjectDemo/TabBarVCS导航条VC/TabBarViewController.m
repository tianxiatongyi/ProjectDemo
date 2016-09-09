//
//  TabBarViewController.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "TabBarViewController.h"
#import "Header.h"
#import "NavigationViewController.h"
#import "MyViewController.h"
#import "HomepageViewController.h"
#import "FairViewController.h"
#import "ManualViewController.h"
#import "TeachViewController.h"
@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createView];
}
-(void)createView{
    
    NSArray *childVCArr=@[@{ClassKey:@"HomepageViewController",
                            TitleKey:@"首页",
                            ImageKey:@"icon_jiaocheng_@3x",
                            SelectImageKey:@"icon_jiaocheng_s@3x"},
                          @{ClassKey:@"TeachViewController",
                            TitleKey:@"教程",
                            ImageKey:@"icon_ketang_@3x",
                            SelectImageKey:@"icon_ketang_s@3x"},
                          @{ClassKey:@"ManualViewController",
                            TitleKey:@"手工圈",
                            ImageKey:@"icon_shougongquan_@3x",
                            SelectImageKey:@"icon_shougongquan_s@3x"},
                          @{ClassKey:@"FairViewController",
                            TitleKey:@"市集",
                            ImageKey:@"icon_shiji_@3x",
                            SelectImageKey:@"icon_shiji_s@3x"},
                          @{ClassKey:@"MyViewController",
                            TitleKey:@"我的",
                            ImageKey:@"icon_wode_@3x",
                            SelectImageKey:@"icon_wode_s@3x"}];
    __block UIViewController *vc=nil;
    [childVCArr enumerateObjectsUsingBlock:^(NSDictionary *dic, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *className=dic[ClassKey];
        vc=[NSClassFromString(className) new];
        vc.title=dic[TitleKey];
        NavigationViewController *nav=[[NavigationViewController alloc]initWithRootViewController:vc];
        nav.tabBarItem.title=dic[TitleKey];
        nav.tabBarItem.image=[UIImage imageNamed:dic[ImageKey]];
        nav.tabBarItem.selectedImage = [[UIImage imageNamed:dic[SelectImageKey]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:238/255.0 green:65/255.0 blue:67/255.0 alpha:1]} forState:UIControlStateSelected];
        [self addChildViewController:nav];
    }];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

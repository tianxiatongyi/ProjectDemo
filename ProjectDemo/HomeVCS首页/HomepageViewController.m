//
//  HomepageViewController.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HomepageViewController.h"
#import "Header.h"
#import "jingxuanVC.h"
#import "HuoDongVC.h"
#import "PeopleVc.h"
#import "guanZhuVc.h"
@interface HomepageViewController ()

@end

@implementation HomepageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUpView];
    [self setUpAllViewController];
}
-(void)setUpAllViewController
{
    jingxuanVC *handpickVC=[jingxuanVC new];
    handpickVC.title=@"精选";
    guanZhuVc *attentionVC=[guanZhuVc new];
    attentionVC.title=@"关注";
    PeopleVc *experManVC=[PeopleVc new];
    experManVC.title=@"达人";
    HuoDongVC *actionVC=[HuoDongVC new];
    actionVC.title=@"活动";
    
    
    [self addChildViewController:handpickVC];
    [self addChildViewController:attentionVC];
    [self addChildViewController:experManVC];
    [self addChildViewController:actionVC];
    
}
-(void)setUpView
{
    
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight, CGFloat *titleWidth) {
        *titleScrollViewColor = [UIColor whiteColor];
        *norColor = [UIColor lightGrayColor];
        *selColor = [UIColor redColor];
    }];
    [self setUpUnderLineEffect:^(BOOL *isUnderLineDelayScroll, CGFloat *underLineH, UIColor *__autoreleasing *underLineColor, BOOL *isUnderLineEqualTitleWidth) {
        *underLineColor=[UIColor redColor];
        *isUnderLineEqualTitleWidth=YES;
        
    }];
    [self setUpContentViewFrame:^(UIView *contentView) {
        contentView.frame=CGRectZero;
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

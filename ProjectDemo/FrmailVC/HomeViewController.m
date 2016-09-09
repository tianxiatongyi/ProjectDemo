//
//  HomeViewController.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self creatNavigationLeftBar];
    [self creatNavigationRightBar];
    
}
-(void)creatNavigationLeftBar
{
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"icon_editGroup"] style:(UIBarButtonItemStyleDone) target:self action:@selector(editBtnClick)];
    
}
-(void)creatNavigationRightBar
{
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"icon_fangdajing_"] style:(UIBarButtonItemStyleDone) target:self action:@selector(searchBtnClick)];
    
    
}
-(void)editBtnClick
{
    
    
}
-(void)searchBtnClick
{
    NSLog(@"222222");
    
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

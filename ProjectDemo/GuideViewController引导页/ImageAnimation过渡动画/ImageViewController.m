//
//  ImageViewController.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "ImageViewController.h"
#import "Header.h"
#import "TabBarViewController.h"
@interface ImageViewController ()

{
    UIImageView* _imageView;
    
    
}
@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createImageView];
    [self performSelector:@selector(enterMainVCBtnClick) withObject:nil afterDelay:1];
}
-(void)createImageView
{
    UIImageView *imageView=[[UIImageView alloc]initWithFrame:kMainB];
    imageView.image=[UIImage imageNamed:@"ad.jpg"];
    [self.view addSubview:imageView];
    _imageView=imageView;
}
-(void)enterMainVCBtnClick
{
    [UIView animateWithDuration:1 animations:^{
        
        _imageView.transform=CGAffineTransformMakeScale(1.5f, 1.5f);
        _imageView.alpha=0.0f;
    } completion:^(BOOL finished) {
        
        KeyWindow.rootViewController=[TabBarViewController new];
        
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

//
//  GuideViewController.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "GuideViewController.h"
#import "Header.h"
#import "ImageViewController.h"
@interface GuideViewController ()

@end

@implementation GuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self creatScrollView];
}
-(void)creatScrollView
{
    UIScrollView *scrollView=[[UIScrollView alloc]initWithFrame:kMainB];
    scrollView.contentSize=CGSizeMake(kMainW*5, kMainH);
    scrollView.pagingEnabled=YES;
    scrollView.bounces=NO;
    scrollView.showsHorizontalScrollIndicator=NO;
    [self.view addSubview:scrollView];
    for (NSInteger i=0; i<5; i++)
    {
        UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(i*kMainW, 0, kMainW, kMainH)];
        imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"newfeature_0%ld_736@3x.jpg",i+1]];
        imageView.userInteractionEnabled=YES;
        [scrollView addSubview:imageView];
        
    }
    
    UIButton *button=[UIButton buttonWithType:(UIButtonTypeCustom)];
    button.frame=CGRectMake(0, 0, 200, 80);
    button.center=CGPointMake(kMainW/2*9, kMainH-80);
    [button addTarget:self action:@selector(enterImageVCBtnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    [scrollView addSubview:button];
    
    
}
-(void)enterImageVCBtnClick:(UIButton*)sender
{
    KeyWindow.rootViewController=[ImageViewController new];
    CATransition *animation=[CATransition animation];
    animation.type=@"rippleEffect";
    animation.duration=1;
    [KeyWindow.layer addAnimation:animation forKey:nil];
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

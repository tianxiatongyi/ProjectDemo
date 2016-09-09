//
//  GuideTool.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "GuideTool.h"
#import "GuideViewController.h"
#import "ImageViewController.h"
@implementation GuideTool
+(UIViewController*)chooseRootViewController{
    UIViewController* rerurnVc=nil;
    NSDictionary* dic=[NSBundle mainBundle].infoDictionary;
    NSString* nowVc=dic[@"CFBundleShortVersionString"];
    NSString* lastVc=[[NSUserDefaults standardUserDefaults] objectForKey:@"VersionsKey"];
    if ([nowVc isEqualToString:lastVc]) {
        rerurnVc=[ImageViewController new];
    }
    else{
        rerurnVc=[GuideViewController new];
        [[NSUserDefaults standardUserDefaults] setObject:nowVc forKey:@"VersionsKey"];
    }
    return rerurnVc;
}
@end

//
//  Header.h
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#ifndef Header_h
#define Header_h


#endif /* Header_h */
#define kMainB [UIScreen mainScreen].bounds
#define kMainW [UIScreen mainScreen].bounds.size.width
#define kMainH [UIScreen mainScreen].bounds.size.height
#define KeyWindow [[UIApplication sharedApplication].delegate window]
#define ClassKey @"ClassKey"
#define TitleKey @"TitleKey"
#define ImageKey @"ImageKey"
#define SelectImageKey @"SelectImageKey"
#define PicUrl @"http://m.shougongke.com/index.php?&c=index&a=indexNewest&vid=20"
#define ActionUrl  @"http://m.shougongke.com/index.php?&c=Course&a=activityList&vid=20"
#define RefreshImages @[[UIImage imageNamed:@"loading_1"],[UIImage imageNamed:@"loading_2"],[UIImage imageNamed:@"loading_3"],[UIImage imageNamed:@"loading_4"],[UIImage imageNamed:@"loading_5"],[UIImage imageNamed:@"loading_6"],[UIImage imageNamed:@"loading_7"],[UIImage imageNamed:@"loading_8"],[UIImage imageNamed:@"loading_9"],[UIImage imageNamed:@"loading_10"]]
#define DaRenUrl @"http://m.shougongke.com/index.php?&c=Index&a=daren"
#define AddGuanzhuUrl @"http://m.shougongke.com/index.php?c=User&a=addGuan"
#define IndicaterStart  UIActivityIndicatorView *indicator=[[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(self.view.center.x, self.view.center.y-100, 0, 0)]
#define IndicaterEnd [indicator stopAnimating]

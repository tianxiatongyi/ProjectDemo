//
//  guanZhuVc.m
//  ProjectDemo
//
//  Created by student on 16/9/8.
//  Copyright © 2016年 student. All rights reserved.
//

#import "guanZhuVc.h"
#import "Header.h"
#import "MJRefreshGifHeader.h"
#import "MJRefreshAutoGifFooter.h"
#import "MJRefreshHeader.h"
#import "SVProgressHUD.h"

@interface guanZhuVc ()
@property (nonatomic,strong) NSMutableArray* dataArr;
@end

@implementation guanZhuVc
//懒加载
-(NSMutableArray*)dataArr{
    if (!_dataArr) {
        _dataArr=[NSMutableArray array];
    }
    return _dataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

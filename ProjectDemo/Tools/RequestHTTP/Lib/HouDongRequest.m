//
//  HouDongRequest.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HouDongRequest.h"
#import "Header.h"
#import "RequestDataTool.h"
#import "YYModel.h"
#import "HuoDongModel.h"
#import "HuodongData.h"
@implementation HouDongRequest
+(void)getDataWithID:(NSString*)acId withBlock:(HuoDongBlock)block withErrorBlock:(ErrorBlock)failure{
    NSString* url=[NSString stringWithFormat:@"http://m.shougongke.com/index.php?&c=Course&a=activityList&vid=20&id=%@",acId];
    [RequestDataTool get:url params:nil success:^(id responseObj) {
        HuodongData  *data=[HuodongData yy_modelWithJSON:responseObj];
        if (block) {
            block(data);
        }
        
        
    } failure:^(NSError * error) {
        if (failure) {
            failure(error);
        }
    }];
    
}

@end

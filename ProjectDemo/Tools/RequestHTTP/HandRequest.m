//
//  HandRequest.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HandRequest.h"
#import "RequestDataTool.h"
#import "YYModel.h"
#import "Header.h"
@implementation HandRequest
+(void)getData:(HandpicBlock)block
{
    [RequestDataTool get:PicUrl params:nil success:^(id responseObj) {
        HandData *data=[HandData yy_modelWithJSON:responseObj[@"data"]];
        if (block)
        {
            block(data);
        }
    } failure:^(NSError *error) {
        if (error)
        {
            NSLog(@"精品error---%@",error);
        }
    }];
    
    
}

@end

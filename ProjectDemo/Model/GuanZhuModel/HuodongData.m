//
//  HuodongData.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HuodongData.h"
#import "HuoDongModel.h"
#import "YYModel.h"
@implementation HuodongData
+(NSDictionary*)modelContainerPropertyGenericClass{
    
    return @{@"data":[HuoDongModel class]};
    
}
@end

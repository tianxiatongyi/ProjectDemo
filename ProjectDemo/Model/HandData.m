//
//  HandData.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HandData.h"
#import "SlideModel.h"
#import "NavigitoinModel.h"
#import "AdvanceMpdel.h"
#import "HotTopicModel.h"
@implementation HandData
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"slide" : [SlideModel class],
             @"navigation" : [NavigitoinModel class],
             @"advance" : [AdvanceMpdel class],
             @"hotTopic" : [HotTopicModel class],
             };
}

@end

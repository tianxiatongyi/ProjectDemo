//
//  HouDongRequest.h
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HuodongData.h"
typedef void(^HuoDongBlock)(HuodongData* data);
typedef void(^ErrorBlock)(NSError*);
@interface HouDongRequest : NSObject
@property(nonatomic,copy)HuoDongBlock block;
+(void)getDataWithID:(NSString*)acId withBlock:(HuoDongBlock)block withErrorBlock:(ErrorBlock)failure;
@end

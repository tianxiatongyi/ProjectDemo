//
//  HandRequest.h
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HandData.h"
typedef void(^HandpicBlock)(HandData* );

@interface HandRequest : NSObject
@property(nonatomic,copy)HandpicBlock block;
+(void)getData:(HandpicBlock)block;
@end

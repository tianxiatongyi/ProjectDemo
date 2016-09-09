//
//  HandData.h
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MembersOpendModel.h"
@interface HandData : NSObject
@property(nonatomic,strong)NSArray* slide;
@property (nonatomic,strong)NSArray *navigation;
@property (nonatomic,strong)NSArray *advance;
@property (nonatomic,strong)NSArray *hotTopic;
@property (nonatomic,strong)MembersOpendModel* membersOpened;
@end

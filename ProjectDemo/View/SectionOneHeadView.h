//
//  SectionOneHeadView.h
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^SectionBlock)(NSInteger);
@interface SectionOneHeadView : UIView
@property(nonatomic,strong)SectionBlock block;
-(instancetype)initWithFrame:(CGRect)frame withImageUrlArr:(NSMutableArray*)urlArr;
-(void)clickImageOfCycleScrollViewWithBlock:(SectionBlock)block;

@end

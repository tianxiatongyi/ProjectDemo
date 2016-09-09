//
//  HotspotCell.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HotspotCell.h"
#import "HotTopicModel.h"
#import "Header.h"
#import "UIImageView+WebCache.h"
@interface HotspotCell ()
{
    UIImageView* _imageView;
    UILabel* _label;
}

@end


@implementation HotspotCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    
    if (self=[super initWithCoder:aDecoder])
    {
        [self createView];
    }
    return self;
    
}

-(void)createView
{
    UIImageView *imageView=[UIImageView new];
    [self addSubview:imageView];
    UILabel *subjectLb=[UILabel new];
    subjectLb.textColor=[UIColor whiteColor];
    [imageView addSubview:subjectLb];
    _imageView=imageView;
    _label=subjectLb;
}
-(void)setModel:(HotTopicModel *)model
{
    if (_model!=model)
    {
        _model=model;
    }
    [_imageView sd_setImageWithURL:[NSURL URLWithString:model.pic]];
    CGFloat height=kMainH/3;
    _imageView.frame=CGRectMake(0, 0, kMainW, height);
    _label.text=model.subject;
    _label.frame=CGRectMake(20, height-30, kMainW-40, 20);
}


@end

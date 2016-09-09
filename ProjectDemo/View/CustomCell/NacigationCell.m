//
//  NacigationCell.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "NacigationCell.h"
#import "NavigitoinModel.h"
#import "Header.h"
#import "UIImageView+WebCache.h"
@interface NacigationCell ()

{
    UIImageView* _imageView;
    UILabel* _nameLb;

}

@end


@implementation NacigationCell

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
    UILabel *nameLb=[UILabel new];
    _nameLb=nameLb;
    _nameLb.textAlignment=NSTextAlignmentCenter;
    _nameLb.textColor=[UIColor grayColor];
    _nameLb.adjustsFontSizeToFitWidth=YES;
    [self addSubview:imageView];
    [self addSubview:nameLb];
    _imageView=imageView;
    
}
-(void)setModel:(NavigitoinModel *)model
{
    if (_model!=model)
    {
        _model=model;
    }
    CGFloat width =kMainW/8;
    if (model.pic)
    {
        [_imageView sd_setImageWithURL:[NSURL URLWithString:model.pic]];
        _nameLb.frame=CGRectMake(0, width, width, width/2);
    }
    else
    {
        _imageView.image=[UIImage imageNamed:@"icon_qiandao_"];
        _nameLb.frame=CGRectMake(width/6, width, width*2/3, width/2);
    }
    _imageView.frame=CGRectMake(0, 0, width, width);
    _nameLb.text=model.name;
    [_nameLb adjustsFontSizeToFitWidth];
    
}


@end

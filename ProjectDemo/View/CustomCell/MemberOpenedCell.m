//
//  MemberOpenedCell.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "MemberOpenedCell.h"
#import "Header.h"
#import "UIImageView+WebCache.h"
#import "MembersOpendModel.h"

@interface MemberOpenedCell ()
{
    
    UIImageView* _imageView;
}

@end



@implementation MemberOpenedCell

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
    _imageView=imageView;
}
-(void)setModel:(MembersOpendModel *)model
{
    if (_model!=model)
    {
        _model=model;
    }
    [_imageView sd_setImageWithURL:[NSURL URLWithString:model.url]];
    CGFloat height=kMainW/[model.width floatValue] *[model.height floatValue];
    _imageView.frame=CGRectMake(0, 0, kMainW, height);
}

@end

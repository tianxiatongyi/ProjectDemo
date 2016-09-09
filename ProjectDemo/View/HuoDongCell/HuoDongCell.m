//
//  HuoDongCell.m
//  ProjectDemo
//
//  Created by student on 16/9/7.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HuoDongCell.h"
#import "UIImageView+WebCache.h"
#import "Header.h"
#import "HuoDongModel.h"
@interface HuoDongCell ()
{
    UIImageView* _imageView;
    UILabel* _importantLb;
    UILabel* _secondaryLb;
}

@end


@implementation HuoDongCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createView];
    }
    return self;
    
}
-(void)createView{
    
    UIImageView* imageView=[UIImageView new];
    [self.contentView addSubview:imageView];
    _imageView=imageView;
    
    UILabel* label=[UILabel new];
    label.font=[UIFont systemFontOfSize:15.0f];
    label.textColor=[UIColor lightGrayColor];
    label.numberOfLines=0;
    [self.contentView addSubview:label];
    _importantLb=label;
    
    UILabel* secondaryLb=[UILabel new];
    
    secondaryLb.font=[UIFont systemFontOfSize:17.0f];
    secondaryLb.textAlignment=NSTextAlignmentRight;
    [self.contentView addSubview:secondaryLb];
    _secondaryLb=secondaryLb;
    

    
}
-(void)setModel:(HuoDongModel *)model{
    
    if (_model!=model) {
        _model=model;
    }
    CGFloat height=kMainW/[model.width floatValue]*[model.height floatValue];
    _imageView.frame=CGRectMake(0, 0, kMainW, height);
    [_imageView sd_setImageWithURL:[NSURL URLWithString:model.m_logo]];
    
    _importantLb.frame=CGRectMake(10, height, kMainW*4/5, kMainW/8);
    _importantLb.text=[NSString stringWithFormat:@"%@\n征集作品时间:%@",model.c_name,model.c_time];
    _secondaryLb.frame=CGRectMake(kMainW*4/5, height+kMainW/32, kMainW/5, kMainW/16);
    if ([model.c_status isEqualToString:@"1"]) {
        _secondaryLb.text=@"进行中";
    }else if ([model.c_status isEqualToString:@"0"])
    {
        _secondaryLb.text=@"即将开始";
    }else{
        _secondaryLb.text=@"已结束";
    }
    
    
    
    
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

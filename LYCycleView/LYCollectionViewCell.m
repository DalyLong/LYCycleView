//
//  NewsCollectionViewCell.m
//  YHCollaboration
//
//  Created by Public on 17/2/23.
//  Copyright © 2017年 longyue. All rights reserved.
//

#import "LYCollectionViewCell.h"

@implementation LYCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.frame = CGRectMake(10, 10, self.bounds.size.height-10, self.bounds.size.height-20);
    _imageView = imageView;
    [self.contentView addSubview:imageView];
    
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.frame = CGRectMake(self.bounds.size.height+10, 10, self.bounds.size.width-self.bounds.size.height-20, self.bounds.size.height-20);
    [titleLabel setFont:[UIFont systemFontOfSize:15]];
    _titleLabel = titleLabel;
    [self.contentView addSubview:_titleLabel];
}

-(void)setModel:(LYModel *)model{
    _model = model;
    if (_model) {
        _titleLabel.text = model.title;
        _imageView.image = model.image;
    }
}

-(void)layoutSubviews{
    [super layoutSubviews];
}

@end

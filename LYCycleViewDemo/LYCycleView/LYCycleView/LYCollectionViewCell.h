//
//  NewsCollectionViewCell.h
//  YHCollaboration
//
//  Created by Public on 17/2/23.
//  Copyright © 2017年 longyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LYModel.h"
@interface LYCollectionViewCell : UICollectionViewCell
@property(nonatomic,weak)UIImageView *imageView;
@property(nonatomic,weak)UILabel *titleLabel;
@property(nonatomic,strong)LYModel *model;
@end

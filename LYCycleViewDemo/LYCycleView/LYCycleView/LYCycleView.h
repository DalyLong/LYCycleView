//
//  NewsCycleView.h
//  YHCollaboration
//
//  Created by Public on 17/2/23.
//  Copyright © 2017年 longyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LYModel.h"
@protocol LYCycleViewDelegate <NSObject>
-(void)lyCycleViewSelectItemAtIndex:(NSUInteger)index;
@end
@interface LYCycleView : UIView
@property(nonatomic,weak)id<LYCycleViewDelegate> delegate;

/** 是否自动滚动,默认Yes */
@property (nonatomic,assign) BOOL autoScroll;
/** 自动滚动间隔时间,默认2s */
@property (nonatomic, assign) CGFloat autoScrollTimeInterval;
/** 是否无限循环,默认Yes */
@property (nonatomic,assign) BOOL infiniteLoop;
/** 是否支持手动滑动,默认Yes */
@property (nonatomic,assign) BOOL touchScroll;

/**解决viewWillAppear时出现时轮播图卡在一半的问题，在控制器viewWillAppear时调用此方法 */
- (void)adjustWhenControllerViewWillAppera;

+(instancetype)lyCycleViewWithFrame:(CGRect)frame lyModels:(NSArray*)lyModels;

@end

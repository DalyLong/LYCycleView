//
//  ViewController.m
//  LYCycleView
//
//  Created by Public on 17/6/16.
//  Copyright © 2017年 longyue. All rights reserved.
//

#import "ViewController.h"
#import "LYCycleView.h"
@interface ViewController ()<LYCycleViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *lyModels = [NSMutableArray array];
    LYModel *model1 = [[LYModel alloc]init];
    model1.title = @"第一条信息内容";
    model1.image = [UIImage imageNamed:@"dizhi"];
    [lyModels addObject:model1];
    
    LYModel *model2 = [[LYModel alloc]init];
    model2.title = @"第二条信息内容";
    model2.image = [UIImage imageNamed:@"bu"];
    [lyModels addObject:model2];
    
    LYModel *model3 = [[LYModel alloc]init];
    model3.title = @"第三条信息内容";
    model3.image = [UIImage imageNamed:@"fei"];
    [lyModels addObject:model3];
    
    //////LYModel和LYCollectionViewCell可以通过自定义达到最终想要的效果
    LYCycleView *lyCycleView = [LYCycleView lyCycleViewWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 50) lyModels:lyModels];
    lyCycleView.delegate = self;
    lyCycleView.touchScroll = NO;
    [self.view addSubview:lyCycleView];
    
}

/**点击cell的代理事件*/
-(void)lyCycleViewSelectItemAtIndex:(NSUInteger)index{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

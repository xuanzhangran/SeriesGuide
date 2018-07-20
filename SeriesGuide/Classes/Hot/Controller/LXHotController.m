//
//  SGHotController.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXHotController.h"
#import "LXHotHeaderView.h"

@interface LXHotController ()

@property (nonatomic, weak) LXHotHeaderView *headerView;
@end

@implementation LXHotController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"热点";
    
    self.view.backgroundColor = LXColorRandom;
    
    LXHotHeaderView *headerView = [LXHotHeaderView headerView];
    [self.view addSubview:headerView];
    self.headerView = headerView;
    self.headerView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 300);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if (self.subject) {
        [self.subject sendNext:@"什么广东省郭德纲"];
    }
}

@end

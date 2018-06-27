//
//  SGHomeController.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "SGHomeController.h"

@interface SGHomeController ()

@end

@implementation SGHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.title = @"首页";
    
    self.view.backgroundColor = SGColorRandom;
    
    
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    self.tableView.frame = self.view.bounds;
}

@end

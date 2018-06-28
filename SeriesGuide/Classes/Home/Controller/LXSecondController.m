//
//  LXSecondController.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/28.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXSecondController.h"

@interface LXSecondController ()

@end

@implementation LXSecondController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.view.backgroundColor = LXColorRandom;
//    self.view.alpha = 0.5;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    button.backgroundColor = LXColorRandom;
    [button setTitle:@"关闭" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)clickBtn:(UIButton *)btn{
    DLog(@"%@",NSStringFromCGRect(self.view.frame));
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}

@end

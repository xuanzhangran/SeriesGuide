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
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

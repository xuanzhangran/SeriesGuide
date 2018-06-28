//
//  SGRootTool.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXRootTool.h"
#import "SGTabBarController.h"
#import "SGNavigationController.h"

@implementation LXRootTool

+ (void)chooseRootWithTabBarVC:(UIWindow *)window{
    SGTabBarController *tabBarVC = [[SGTabBarController alloc] init];
    window.rootViewController = tabBarVC;
}

@end

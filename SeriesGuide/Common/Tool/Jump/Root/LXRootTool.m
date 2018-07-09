//
//  SGRootTool.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXRootTool.h"
#import "LXTabBarController.h"
#import "LXNavigationController.h"

@implementation LXRootTool

+ (void)chooseRootWithTabBarVC:(UIWindow *)window{
    LXTabBarController *tabBarVC = [[LXTabBarController alloc] init];
    window.rootViewController = tabBarVC;
}

@end

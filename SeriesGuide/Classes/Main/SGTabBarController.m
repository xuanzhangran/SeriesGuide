//
//  SGTabBarController.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "SGTabBarController.h"
#import "SGNavigationController.h"
#import "SGHomeController.h"
#import "UIImage+Extension.h"

@interface SGTabBarController ()

@end

@implementation SGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.创建tabBar
    self.tabBar.tintColor = UIColor.blackColor;
    //2.添加子控制器
    [self setUpChildViewController];
}

- (void)setUpChildViewController{
    
    SGHomeController *homeVC = [[SGHomeController alloc] init];
    [self setUpChildController:homeVC image:[UIImage imageNamed:@"tab_home_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_home_selected"] title:@"首页"];
    
    SGHomeController *memberVC = [[SGHomeController alloc] init];
    [self setUpChildController:memberVC image:[UIImage imageNamed:@"tab_order_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_order_selected"] title:@"订单"];
    
    SGHomeController *billVC = [[SGHomeController alloc] init];
    [self setUpChildController:billVC image:[UIImage imageNamed:@"tab_message_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_message_selected"] title:@"消息"];
    
    SGHomeController *mineVC = [[SGHomeController alloc] init];
    [self setUpChildController:mineVC image:[UIImage imageNamed:@"tab_my_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_my_selected"] title:@"我的"];
}

- (void)setUpChildController:(UIViewController *)vc image:(UIImage *)image selectImage:(UIImage *)selectImage title:(NSString *)title{
    
    vc.tabBarItem.title = title;
    
    vc.tabBarItem.image = image;
    
    vc.tabBarItem.badgeValue = nil;
    
    vc.tabBarItem.selectedImage = selectImage;
    
    SGNavigationController *navi = [[SGNavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:navi];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end

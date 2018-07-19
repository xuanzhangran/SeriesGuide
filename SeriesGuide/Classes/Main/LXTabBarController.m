//
//  SGTabBarController.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXTabBarController.h"
#import "LXNavigationController.h"
#import "LXHomeController.h"
#import "LXInterestController.h"
#import "LXHotController.h"
#import "LXMineController.h"
#import "LXMusicController.h"
#import "UIImage+Extension.h"

@interface LXTabBarController ()

@end

@implementation LXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.创建tabBar
    self.tabBar.tintColor = UIColor.blackColor;
    //2.添加子控制器
    [self setUpChildViewController];
}

- (void)setUpChildViewController{
    
    LXHomeController *homeVC = [[LXHomeController alloc] init];
    [self setUpChildController:homeVC image:[UIImage imageNamed:@"tab_movie_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_movie_selected"] title:@"影视"];
    
    LXMusicController *musicVC = [[LXMusicController alloc] init];
    [self setUpChildController:musicVC image:[UIImage imageNamed:@"tab_interest_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_interest_selected"] title:@"音乐"];
    
    LXInterestController *interestVC = [[LXInterestController alloc] init];
    [self setUpChildController:interestVC image:[UIImage imageNamed:@"tab_interest_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_interest_selected"] title:@"图文"];
    
    LXHotController *hotVC = [[LXHotController alloc] init];
    [self setUpChildController:hotVC image:[UIImage imageNamed:@"tab_hot_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_hot_selected"] title:@"新闻"];
    
    LXMineController *mineVC = [[LXMineController alloc] init];
    [self setUpChildController:mineVC image:[UIImage imageNamed:@"tab_mine_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_mine_selected"] title:@"我的"];
}

- (void)setUpChildController:(UIViewController *)vc image:(UIImage *)image selectImage:(UIImage *)selectImage title:(NSString *)title{
    
    vc.tabBarItem.title = title;
    
    vc.tabBarItem.image = image;
    
    vc.tabBarItem.badgeValue = nil;
    
    vc.tabBarItem.selectedImage = selectImage;
    
    LXNavigationController *navi = [[LXNavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:navi];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end

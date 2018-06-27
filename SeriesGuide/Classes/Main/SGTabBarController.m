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
#import "SGInterestController.h"
#import "SGHotController.h"
#import "SGMineController.h"
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
    [self setUpChildController:homeVC image:[UIImage imageNamed:@"tab_movie_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_movie_selected"] title:@"影视"];
    
    SGInterestController *memberVC = [[SGInterestController alloc] init];
    [self setUpChildController:memberVC image:[UIImage imageNamed:@"tab_interest_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_interest_selected"] title:@"娱乐"];
    
    SGHotController *billVC = [[SGHotController alloc] init];
    [self setUpChildController:billVC image:[UIImage imageNamed:@"tab_hot_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_hot_selected"] title:@"热点"];
    
    SGMineController *mineVC = [[SGMineController alloc] init];
    [self setUpChildController:mineVC image:[UIImage imageNamed:@"tab_mine_normal"] selectImage:[UIImage imageWithOriginalName:@"tab_mine_normal"] title:@"我的"];
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

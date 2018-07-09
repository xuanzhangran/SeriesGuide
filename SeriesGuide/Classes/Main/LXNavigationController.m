//
//  LXNavigationController.m
//  SeriesGuide
//
//  Created by xuan on 2018/7/9.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXNavigationController.h"
#import "UIBarButtonItem+Extention.h"

@interface LXNavigationController ()<UINavigationControllerDelegate>
@property (nonatomic, strong) id popDelegate;
@end

@implementation LXNavigationController

//第一次使用这个类或者这个类的子类的时候
+ (void)initialize{
    if (self == [LXNavigationController class]) {//保证只调用一次
        
        //设置当前导航条，不是整个工程
        //        UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[QDNavigationController class], nil];
        //        bar.barTintColor = [UIColor redColor];
        //        NSMutableDictionary *barAttr = [NSMutableDictionary dictionary];
        //        barAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
        //        barAttr[NSFontAttributeName] = [UIFont systemFontOfSize:20.0];
        //        [bar setTitleTextAttributes:barAttr];
        //
        
        //设置导航条按钮文字颜色
        //        UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedIn:[QDNavigationController class], nil];
        //        NSMutableDictionary *titleAttr = [NSMutableDictionary dictionary];
        //        titleAttr[NSForegroundColorAttributeName] = QDColorNavBarTitle;
        //        titleAttr[NSFontAttributeName] = [UIFont systemFontOfSize:20.0];
        //        [item setTitleTextAttributes:titleAttr forState:UIControlStateNormal];
        
        UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[LXNavigationController class], nil];
        //设置导航条的透明度
        bar.translucent = NO;
        //设置背景图片
        //[bar setBackgroundImage:[UIImage imageNamed:@"navBarBg"] forBarMetrics:UIBarMetricsDefault];
        //去掉下边线
        [bar setShadowImage:[UIImage new]];
        //设置当前导航条背景色
        bar.barTintColor = LXColorWhite;
        //设置导航条文字颜色和大小
        NSMutableDictionary *barAttr = [NSMutableDictionary dictionary];
        barAttr[NSForegroundColorAttributeName] = UIColor.blackColor;
        //barAttr[NSFontAttributeName] = [UIFont systemFontOfSize:17.0];
        barAttr[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17.0];
        [bar setTitleTextAttributes:barAttr];
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //清空之前记住代理先
    _popDelegate = self.interactivePopGestureRecognizer.delegate;
    //实现滑动返回功能，清空滑动返回手势的代理，就能实现滑动功能
    self.interactivePopGestureRecognizer.delegate = nil;
    //添加代理(否则系统导航方法不调用)
    self.delegate = self;
    
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];
    
}

//导航控制器即将跳转的时候的调用
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (viewController == self.viewControllers[0]) {//显示根控制器
        
    }else{
        
    }
    
    //    //获取主主窗口
    //    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    //    if ([keyWindow.rootViewController isKindOfClass:[UITabBarController class]]) {
    //        UITabBarController *tabBarVC = (UITabBarController *) keyWindow.rootViewController;
    //        //移除系统tabBarButton
    //        for (UIView *tabBarButton in tabBarVC.tabBar.subviews) {
    //            if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
    //                [tabBarButton removeFromSuperview];
    //            }
    //        }
    //    }
}

//导航控制器跳转完成时候的调用
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    UIViewController* vc = [self topViewController];
    if ([vc respondsToSelector:@selector(shouldPopGestureRecognizerWithNavigationCtrl:)]) {
        if ([vc shouldPopGestureRecognizerWithNavigationCtrl:self]) {
            self.interactivePopGestureRecognizer.delegate = _popDelegate;
        } else {
            self.interactivePopGestureRecognizer.delegate = nil;
        }
        return;
    }
    
    if (viewController == self.viewControllers[0]) {//显示根控制器
        self.interactivePopGestureRecognizer.delegate = _popDelegate;
        //设置当前导航条背景色
        //        viewController.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
        //        //设置导航条文字颜色和大小
        //        NSMutableDictionary *barAttr = [NSMutableDictionary dictionary];
        //        barAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
        //        barAttr[NSFontAttributeName] = [UIFont systemFontOfSize:20.0];
        //        [viewController.navigationController.navigationBar setTitleTextAttributes:barAttr];
        
    }else{//不是显示根控制器
        self.interactivePopGestureRecognizer.delegate = nil;//清空滑动返回手势的代理，就能实现滑动功能
        
        //        if ([viewController isKindOfClass:[DTWebViewController class]]) {
        //            //设置当前导航条背景色
        //            viewController.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
        //            //设置导航条文字颜色和大小
        //            NSMutableDictionary *barAttr = [NSMutableDictionary dictionary];
        //            barAttr[NSForegroundColorAttributeName] = [UIColor blackColor];
        //            barAttr[NSFontAttributeName] = [UIFont systemFontOfSize:20.0];
        //            [viewController.navigationController.navigationBar setTitleTextAttributes:barAttr];
        //        }else{
        //            //设置当前导航条背景色
        //            viewController.navigationController.navigationBar.barTintColor = QDColor(221.0, 39.0, 9.0);
        //            //设置导航条文字颜色和大小
        //            NSMutableDictionary *barAttr = [NSMutableDictionary dictionary];
        //            barAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
        //            barAttr[NSFontAttributeName] = [UIFont systemFontOfSize:20.0];
        //            [viewController.navigationController.navigationBar setTitleTextAttributes:barAttr];
        //        }
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.childViewControllers.count) { //不是根控制器
        
        viewController.hidesBottomBarWhenPushed = YES;
        UIBarButtonItem *left = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"arrow_left"] highImage:[UIImage imageNamed:@"arrow_left"] target:self action:@selector(popToPre) forControlEvents:UIControlEventTouchUpInside];
        // 设置导航条的按钮
        viewController.navigationItem.leftBarButtonItem = left;
        
        //        if ([viewController isKindOfClass:[QDWebViewController class]]) {
        //            //设置导航条按钮文字颜色
        //            UIBarButtonItem *item = [UIBarButtonItem appearance];
        //            NSMutableDictionary *titleAttr = [NSMutableDictionary dictionary];
        //            titleAttr[NSForegroundColorAttributeName] = [UIColor blackColor];
        //            [item setTitleTextAttributes:titleAttr forState:UIControlStateNormal];
        //        }
        
        //        UIBarButtonItem *right = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"navigationbar_more"] highImage:[UIImage imageNamed:@"navigationbar_more_highlighted"] target:self action:@selector(popToRoot) forControlEvents:UIControlEventTouchUpInside];
        //        viewController.navigationItem.rightBarButtonItem = right;
        //        viewController.navigationItem.rightBarButtonItem = right;
    }
    return [super pushViewController:viewController animated:animated];
}

- (void)popToPre{
    
    UIViewController* vc = [self topViewController];
    if([vc respondsToSelector:@selector(willPopOnBackWithNavigationCtrl:)]) {
        
        [vc willPopOnBackWithNavigationCtrl:self];
        
        return;
    }
    
    [self popViewControllerAnimated:YES];
}

#pragma mark -返回到根控制器-
- (void)popToRoot{
    [self popToRootViewControllerAnimated:YES];
}

#pragma mark -返回到指定控制器-
- (void)popToAppointVC:(UIViewController *)targetVC{
    
    if (targetVC == nil) return;
    
    for (UIViewController *temp in self.viewControllers) {
        if ([temp isKindOfClass:[targetVC class]]) {
            [self popToViewController:temp animated:YES];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

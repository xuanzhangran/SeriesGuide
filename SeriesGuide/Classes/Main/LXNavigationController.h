//
//  LXNavigationController.h
//  SeriesGuide
//
//  Created by xuan on 2018/7/9.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LXNavigationController;

@protocol BackButtonHandlerProtocol <NSObject>

@optional
- (void)willPopOnBackWithNavigationCtrl:(LXNavigationController *)navigationCtrl;
- (BOOL)shouldPopGestureRecognizerWithNavigationCtrl:(LXNavigationController *)navigationCtrl;

@end

@interface UIViewController (BackButtonHandler) <BackButtonHandlerProtocol>

@end

@interface LXNavigationController : UINavigationController

@end

//
//  SGNavigationController.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SGNavigationController;

@protocol BackButtonHandlerProtocol <NSObject>

@optional
- (void)willPopOnBackWithNavigationCtrl:(SGNavigationController *)navigationCtrl;
- (BOOL)shouldPopGestureRecognizerWithNavigationCtrl:(SGNavigationController *)navigationCtrl;

@end

@interface UIViewController (BackButtonHandler) <BackButtonHandlerProtocol>

@end

@interface SGNavigationController : UINavigationController

@end

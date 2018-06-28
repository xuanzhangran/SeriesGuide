//
//  TransitionDelegate.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/28.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

@interface TransitionDelegate : NSObject<UIViewControllerTransitioningDelegate>

//实现单例模式
SingletonInterface(Transition)

@end

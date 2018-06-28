//
//  AnimatedTransitioning.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/28.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimatedTransitioning : NSObject<UIViewControllerAnimatedTransitioning>

//用于记录控制器是创建还是销毁
@property (nonatomic, assign) BOOL presented;

@end

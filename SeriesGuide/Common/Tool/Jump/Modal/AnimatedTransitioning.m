//
//  AnimatedTransitioning.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/28.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "AnimatedTransitioning.h"
#import "UIView+Extension.h"

//动画执行时间
const NSTimeInterval duration = 0.5;

@implementation AnimatedTransitioning

#pragma mark - UIViewControllerAnimatedTransitioning
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext{
    //动画执行时间
    return duration;
}

//实际动画效果（以后需要改的地方只有这里）
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    if (self.presented) {//创建控制器
        UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
        //toView.layer.transform = CATransform3DMakeRotation(M_PI_2, 1, 1, 1);3D动画
        //toView.y = -toView.height;
        toView.y = toView.height;
        //toView.x = toView.width;
        [UIView animateWithDuration:duration animations:^{
            //toView.layer.transform = CATransform3DIdentity;3D动画
            //toView.y = 0;
            toView.y = toView.height - 200;
            //toView.x = 40;//注意同PresentationController设置的尺寸位置相关
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }else{//销毁控制器
        [UIView animateWithDuration:duration animations:^{
            UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
            //fromView.layer.transform = CATransform3DMakeRotation(M_PI_2, 1, 1, 1);
            //fromView.y = - fromView.height;
            fromView.y = fromView.height;
            //fromView.x = -fromView.width;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
            
        }];
    }
}

@end

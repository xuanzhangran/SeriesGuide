//
//  LXNetReachablityTool.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/28.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, LXNetworkStatus) {
    LXNetworkStatusUnkown = 0,     //未知状态
    LXNetworkStatusWifi = 1,       //有网，Wifi环境
    LXNetworkStatus3G,             //有网，3G环境
    LXNetworkStatusNoNetwork3G,    //无网，但是有3G  这种情况在app退到后台，切换网络，然后打开可现
    LXNetworkStatusNoNetwork,      //无网，无wifi，无3G
};

@interface LXNetReachablityTool : NSObject

+ (void)reachablityStatus:(void (^)(LXNetworkStatus networkStatus))success fail:(void (^)(LXNetworkStatus networkStatus))failure;

+ (BOOL)netWorkAbility;

@end

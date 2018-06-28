//
//  LXNetReachablityTool.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/28.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXNetReachablityTool.h"
#import <AFNetworking/AFNetworking.h>

static LXNetworkStatus _networkStatus;

@implementation LXNetReachablityTool

+ (void)reachablityStatus:(void (^)(LXNetworkStatus networkStatus))success fail:(void (^)(LXNetworkStatus networkStatus))failure{
    
    //创建一个网络监听器（单例manager）
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                DLog(@"没有网络");
                if (failure) {
                    _networkStatus = LXNetworkStatusUnkown;
                    failure(LXNetworkStatusUnkown);
                }
                break;
            case AFNetworkReachabilityStatusNotReachable:
                DLog(@"连接到路由器网络不能到达");
                if (failure) {
                    _networkStatus = LXNetworkStatusNoNetwork;
                    failure(LXNetworkStatusNoNetwork);
                }
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                DLog(@"2G/3G/4G");
                if (success) {
                    _networkStatus = LXNetworkStatus3G;
                    success(LXNetworkStatus3G);
                }
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                DLog(@"wifi");
                if (success) {
                    _networkStatus = LXNetworkStatusWifi;
                    success(LXNetworkStatusWifi);
                }
                break;
            default:
                DLog(@"默认未知网络状态");
                if (failure) {
                    _networkStatus = LXNetworkStatusUnkown;
                    failure(LXNetworkStatusUnkown);
                }
                break;
        }
    }];
    //开启检测
    [manager startMonitoring];
}

+ (BOOL)netWorkAbility{
    if (_networkStatus == LXNetworkStatus3G || _networkStatus == LXNetworkStatusWifi) {
        return YES;
    }else{
        //[MBProgressHUD showWarningWithMessage:@"当前网络不可用，请检查您的手机数据/Wifi是否开启！" toView:LXKeyWindow];
        DLog(@"当前网络不可用，请检查您的手机数据/Wifi是否开启！");
        return NO;
    }
}

@end

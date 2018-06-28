//
//  LXBaseParam.m
//  CloudContract
//
//  Created by xuan on 2018/6/14.
//  Copyright © 2018年 com.lx.yuehetong. All rights reserved.
//

#import "LXBaseParam.h"
#import "LXUtil.h"

@implementation LXBaseParam

+ (instancetype)param{
    LXBaseParam *param = [[self alloc] init];
    param.device_id = LXUtil.deviceId;
    return param;
}

@end

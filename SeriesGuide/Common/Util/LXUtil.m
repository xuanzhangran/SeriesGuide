//
//  LXUtil.m
//  CloudContract
//
//  Created by xuan on 2018/6/20.
//  Copyright © 2018年 com.lx.yuehetong. All rights reserved.
//

#import "LXUtil.h"
#import <SAMKeychain.h>

@implementation LXUtil

//获取设备id
+ (NSString *)deviceId{
    NSString *currentDeviceUUIDStr = [SAMKeychain passwordForService:APP_KEYCHAIN account:APP_KEYCHAIN];
    if (currentDeviceUUIDStr == nil || [currentDeviceUUIDStr isEqualToString:@""]){
        NSUUID *currentDeviceUUID  = [UIDevice currentDevice].identifierForVendor;
        currentDeviceUUIDStr = currentDeviceUUID.UUIDString;
        currentDeviceUUIDStr = [currentDeviceUUIDStr stringByReplacingOccurrencesOfString:@"-" withString:@""];
        currentDeviceUUIDStr = [currentDeviceUUIDStr lowercaseString];
        [SAMKeychain setPassword: currentDeviceUUIDStr forService:APP_KEYCHAIN account:APP_KEYCHAIN];
    }
    return currentDeviceUUIDStr;
}

@end

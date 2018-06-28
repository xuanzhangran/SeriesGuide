//
//  LXBaseParam.h
//  CloudContract
//
//  Created by xuan on 2018/6/14.
//  Copyright © 2018年 com.lx.yuehetong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LXBaseParam : NSObject

///设备的token
@property (nonatomic, copy) NSString *device_token;
///版本号
@property (nonatomic, copy) NSString *appvercode;
///设备Id
@property (nonatomic, copy) NSString *device_id;

+ (instancetype)param;

@end

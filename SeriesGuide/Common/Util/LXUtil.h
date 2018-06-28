//
//  LXUtil.h
//  CloudContract
//
//  Created by xuan on 2018/6/20.
//  Copyright © 2018年 com.lx.yuehetong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LXUtil : NSObject

//获取设备id(设备唯一标识，哪怕是删除应用都不会改变)
+ (NSString *)deviceId;

@end

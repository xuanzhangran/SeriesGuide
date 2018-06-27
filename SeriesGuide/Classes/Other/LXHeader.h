//
//  LXHeader.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#ifndef LXHeader_h
#define LXHeader_h

// 通知中心
#define LXNotificationCenter [NSNotificationCenter defaultCenter]
//主窗口
#define LXKeyWindow [UIApplication sharedApplication].keyWindow
//weak修饰
#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;
//非空字符串
#define NotNull(string) (string == nil ? @"":string)
//非空对象
#define OBJ_SAFE(__obj__) (__obj__ ? __obj__ : [NSNull null])

//判断字典是否为空
#define kDictionaryIsEmpty(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0)
// 判断字符串是否为空
#define kStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] <= 0 ? YES : NO )

#ifdef DEBUG
#define DLog(fmt,...) NSLog((@"%s [gLine %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define DLog(...)
#endif

//屏幕尺寸
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

/** 尺寸 */
#define SCREEN_POINT (float)SCREEN_WIDTH/375.f
#define SCREEN_H_POINT (float)SCREEN_HEIGHT/1334/2.f

//设备信息
#define DEVICE_UUID UIDevice.currentDevice.identifierForVendor.UUIDString // UUID
#define DEVICE_VERSION UIDevice.currentDevice.systemVersion //系统版本号
#define DEVICE_MODEL UIDevice.currentDevice.model //设备机型

//应用信息
#define APP_VERSION [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"]
#define APP_NAME [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"]
#define APP_VERSION_CODE [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
#define APP_BUNDLEID [[NSBundle mainBundle] bundleIdentifier]
#define APP_KEYCHAIN @"CLPay"
#define ChannelId @"AppStore"

#endif /* LXHeader_h */

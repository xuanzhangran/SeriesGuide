//
//  SGHeader.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#ifndef SGHeader_h
#define SGHeader_h

// 通知中心
#define SGNotificationCenter [NSNotificationCenter defaultCenter]
//主窗口
#define SGKeyWindow UIApplication.sharedApplication.keyWindow
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

#endif /* SGHeader_h */

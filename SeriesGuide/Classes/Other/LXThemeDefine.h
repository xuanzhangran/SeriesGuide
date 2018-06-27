//
//  LXThemeDefine.h
//  CloudContract
//
//  Created by xuan on 2018/6/14.
//  Copyright © 2018年 com.lx.yuehetong. All rights reserved.
//

#ifndef LXThemeDefine_h
#define LXThemeDefine_h

#import "UIColor+BFKit.h"

#pragma mark -主题颜色-

// RGB颜色
#define LXColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
// 随机色
#define LXColorRandom LXColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

// RGBA
#define LXColorRGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
// RGB 1
#define LXColorRGB(r,g,b) LXColorRGBA(r,g,b,1)

// S 1
#define LXColorSingleA(s,a) LXColorRGBA(s,s,s,a)
#define LXColorSingle(s) LXColorSingleA(s,1)

// S 0.8
#define LXColorSVProgressBgColor LXColorSingleA(255,0.8)

//自定义颜色
#define LXColorCSS(S)  [UIColor hex:@S]

//主题黑 -> 灰(由深到浅)
#define LXColorGray1  [UIColor hex:@"333333"]
#define LXColorGray2  [UIColor hex:@"666666"]
#define LXColorGray3  [UIColor hex:@"7A7A7A"]
#define LXColorGray4  [UIColor hex:@"A3A3A3"]
#define LXColorGray5  [UIColor hex:@"CCCCCC"]
#define LXColorGray6  [UIColor hex:@"D8D8D8"]
#define LXColorGray7  [UIColor hex:@"F0F0F0"]

//文本灰色
#define LXColorB2B2B2  [UIColor hex:@"B2B2B2"]

//视图间隔线颜色
#define LXColorDivideLine [UIColor hex:@"dde1f1"]

//按钮状态颜色
#define LXColorBtnNormal [UIColor hex:@"F5F5F5"]
#define LXColorBtnDisabled [UIColor hex:@"D5D5D5"]
#define LXColorBtnHighlight [UIColor hex:@"D8D8D8"]

//灰色视图背景颜色
#define LXColorBgViewGray UIColorFromRGB(0xf5f5f5)

/** 颜色相关 */
#define SC_RGBColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)] // RGB
/** 随机颜色 */
#define SC_RandomlyColor SC_RGBColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), 1)
/** 颜色转换 */
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define LXColorClear UIColor.clearColor       // 透明色
#define LXColorCCCCC UIColorFromRGB(0xCCCCCC) // 深灰色
#define LXColorWhite UIColorFromRGB(0xffffff) // 白色
#define LXColorBlue UIColorFromRGB(0x3E82FF) // 主题蓝色
#define LXColorBlueLight UIColorFromRGB(0x597a96) // 浅蓝色(辅色)
#define LXColor33333 UIColorFromRGB(0x333333) // 用于标题 重要文字等_黑色
#define LXColor66666 UIColorFromRGB(0x666666) // 用于小标题 正文等_半度灰
#define LXColor99999 UIColorFromRGB(0x999999) // 半度灰
#define LXColorOrange UIColorFromRGB(0xff9900) // 辅色(橙色)
#define LXColorPlaceholder UIColorFromRGB(0xc9c9cf) // 用于表单 输入框等提示文字
#define LXColorRed   UIColorFromRGB(0xe64340) // 红色


#pragma mark -字体大小-
//文本字体大小
#define LXFont(fontValue) [UIFont systemFontOfSize:fontValue]
#define LXFontBold(fontValue) [UIFont boldSystemFontOfSize:fontValue]
//导航中间标题文字
#define LXFontNavCenterTitle LXFont(18)
//导航item文字大小
#define LXFontNavItemTitle LXFont(15)
//字体大小（带字号）
#define LXFont21 LXFont(21)
#define LXFont20 LXFont(20)
#define LXFont19 LXFont(19)
#define LXFont18 LXFont(18)
#define LXFont17 LXFont(17)
#define LXFont16 LXFont(16)
#define LXFont15 LXFont(15)
#define LXFont14 LXFont(14)
#define LXFont13 LXFont(13)
#define LXFont12 LXFont(12)
#define LXFont11 LXFont(11)
#define LXFont10 LXFont(10)
//加粗
#define LXFontBold10 LXFontBold(10)
#define LXFontBold11 LXFontBold(11)
#define LXFontBold12 LXFontBold(12)
#define LXFontBold13 LXFontBold(13)
#define LXFontBold14 LXFontBold(14)
#define LXFontBold15 LXFontBold(15)
#define LXFontBold16 LXFontBold(16)
#define LXFontBold17 LXFontBold(17)
#define LXFontBold18 LXFontBold(18)
#define LXFontBold18 LXFontBold(18)
#define LXFontBold19 LXFontBold(19)
#define LXFontBold20 LXFontBold(20)
#define LXFontBold21 LXFontBold(21)
#define LXFontBold22 LXFontBold(22)
#define LXFontBold23 LXFontBold(23)
#define LXFontBold24 LXFontBold(24)
#define LXFontBold25 LXFontBold(25)

#endif /* LXThemeDefine_h */

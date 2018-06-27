//
//  SGThemeDefine.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#ifndef SGThemeDefine_h
#define SGThemeDefine_h

#import "UIColor+BFKit.h"

#pragma mark -主题颜色-

// RGB颜色
#define SGColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
// 随机色
#define SGColorRandom SGColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

// RGBA
#define SGColorRGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
// RGB 1
#define SGColorRGB(r,g,b) SGColorRGBA(r,g,b,1)

// S 1
#define SGColorSingleA(s,a) SGColorRGBA(s,s,s,a)
#define SGColorSingle(s) SGColorSingleA(s,1)

// S 0.8
#define SGColorSVProgressBgColor SGColorSingleA(255,0.8)

//自定义颜色
#define SGColorCSS(S)  [UIColor hex:@S]

//主题黑 -> 灰(由深到浅)
#define SGColorGray1  [UIColor hex:@"333333"]
#define SGColorGray2  [UIColor hex:@"666666"]
#define SGColorGray3  [UIColor hex:@"7A7A7A"]
#define SGColorGray4  [UIColor hex:@"A3A3A3"]
#define SGColorGray5  [UIColor hex:@"CCCCCC"]
#define SGColorGray6  [UIColor hex:@"D8D8D8"]
#define SGColorGray7  [UIColor hex:@"F0F0F0"]

//Cell间隔线颜色
#define SGColorCellLine [UIColor hex:@"#F5F6F7"]

//Btn按钮高亮颜色
#define SGColorBtnHighlight SGColorCellLine

//Cell分割线颜色
#define SGColorCellSeparate UIColorFromRGB(0xf6f6f6)

//TableView背景颜色
#define SGColorTableViewBg UIColorFromRGB(0xf6f6f6)

/** 颜色相关 */
#define SC_RGBColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)] // RGB
/** 随机颜色 */
#define SC_RandomlyColor SC_RGBColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), 1)
/** 颜色转换 */
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define SGColorClear [UIColor clearColor]     // 透明色
#define SGColorCCCCC UIColorFromRGB(0xCCCCCC) // 深灰色
#define SGColorF6F6F UIColorFromRGB(0xf6f6f6) // 浅灰色
#define SGColorWhite UIColorFromRGB(0xffffff) // 白色
#define SGColorOrange UIColorFromRGB(0xff640b) // 主色调，用于特别强调或突出的文字 橙色
#define SGColorOrangeLight UIColorFromRGB(0xff9900) // 浅橙色
#define SGColor33333 UIColorFromRGB(0x333333) // 用于标题 重要文字等_黑色
#define SGColor66666 UIColorFromRGB(0x666666) // 用于小标题 正文等_半度灰
#define SGColor99999 UIColorFromRGB(0x999999) // 半度灰
#define SGColorPlaceholder UIColorFromRGB(0xc9c9cf) // 用于表单 输入框等提示文字
#define SGColorRed   UIColorFromRGB(0xe64340) // 红色
#define SGColorGold   UIColorFromRGB(0xd3bd72) // 金色


#pragma mark -字体大小-
//文本字体大小
#define SGFont(fontValue) [UIFont systemFontOfSize:fontValue]
#define SGFontBold(fontValue) [UIFont boldSystemFontOfSize:fontValue]
//导航中间标题文字
#define SGFontNavCenterTitle SGFont(18)
//导航item文字大小
#define SGFontNavItemTitle SGFont(15)
//字体大小（带字号）
#define SGFont21 SGFont(21)
#define SGFont20 SGFont(20)
#define SGFont19 SGFont(19)
#define SGFont18 SGFont(18)
#define SGFont17 SGFont(17)
#define SGFont16 SGFont(16)
#define SGFont15 SGFont(15)
#define SGFont14 SGFont(14)
#define SGFont13 SGFont(13)
#define SGFont12 SGFont(12)
#define SGFont11 SGFont(11)
#define SGFont10 SGFont(10)
//加粗
#define SGFontBold10 SGFontBold(10)
#define SGFontBold11 SGFontBold(11)
#define SGFontBold12 SGFontBold(12)
#define SGFontBold13 SGFontBold(13)
#define SGFontBold14 SGFontBold(14)
#define SGFontBold15 SGFontBold(15)
#define SGFontBold16 SGFontBold(16)
#define SGFontBold17 SGFontBold(17)
#define SGFontBold18 SGFontBold(18)
#define SGFontBold18 SGFontBold(18)
#define SGFontBold19 SGFontBold(19)
#define SGFontBold20 SGFontBold(20)
#define SGFontBold21 SGFontBold(21)
#define SGFontBold22 SGFontBold(22)
#define SGFontBold23 SGFontBold(23)
#define SGFontBold24 SGFontBold(24)
#define SGFontBold25 SGFontBold(25)

#endif /* SGThemeDefine_h */

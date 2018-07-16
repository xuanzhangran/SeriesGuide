//
//  AppDelegate.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "AppDelegate.h"
#import "LXRootTool.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import <notify.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //创建窗口
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    //设置背景色
    self.window.backgroundColor = [UIColor whiteColor];
    //显示窗口
    [self.window makeKeyAndVisible];
    //选择根控制器
    [LXRootTool chooseRootWithTabBarVC:self.window];
    
    //后台播放音频设置
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setActive:YES error:nil];
    [session setCategory:AVAudioSessionCategoryPlayback error:nil];
    //设置接受远程控制
    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    
    return YES;
}

@end

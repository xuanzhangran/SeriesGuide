//
//  SGInterestController.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXInterestController.h"
#import "LXHotController.h"

@interface LXInterestController ()

@end

@implementation LXInterestController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"娱乐";
    
    self.view.backgroundColor = LXColorRandom;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    RACCommand *command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        //打印：今天我投降了
        
        //命令执行代理
        NSLog(@"%@我投降了",input);
        //返回一个RACSignal信号
        return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
            return nil;
        }];
        
    }];
    
    //执行命令
    [command execute:@"今天"];
    
}

@end

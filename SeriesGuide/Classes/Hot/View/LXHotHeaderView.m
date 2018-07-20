//
//  LXHotHeaderView.m
//  SeriesGuide
//
//  Created by xuan on 2018/7/19.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXHotHeaderView.h"

@interface LXHotHeaderView ()
@property (weak, nonatomic) IBOutlet UITextField *testF;
@end

@implementation LXHotHeaderView

+ (instancetype)headerView{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

- (void)awakeFromNib{
    [super awakeFromNib];
    
    // 不需要跟随父控件的尺寸变化而伸缩
    //self.autoresizingMask = UIViewAutoresizingNone;
    
    [self setUpUI];
}

- (void)setUpUI{
    
    self.backgroundColor = LXColorRandom;
    
    self.testF.backgroundColor = LXColorRandom;
}

@end

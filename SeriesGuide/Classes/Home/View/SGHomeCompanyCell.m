//
//  SGHomeCompanyCell.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "SGHomeCompanyCell.h"

@interface SGHomeCompanyCell ()
@property (weak, nonatomic) IBOutlet UIImageView *logoImageV;

@end

@implementation SGHomeCompanyCell

static NSString *ID = @"SGHomeCompanyCellID";

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    id cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    }
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    //选中样式
    //self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [self setUpUI];
}

//初始化UI
- (void)setUpUI{
    
    //设置背景色
    self.contentView.backgroundColor = SGColorWhite;
}

- (void)setModel:(SGHomeCompanyModel *)model{
    _model = model;
    
    self.logoImageV.image = [UIImage imageNamed:model.logo];
}

@end

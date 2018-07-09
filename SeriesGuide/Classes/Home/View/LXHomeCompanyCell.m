//
//  LXHomeCompanyCell.m
//  SeriesGuide
//
//  Created by xuan on 2018/7/9.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXHomeCompanyCell.h"

@implementation LXHomeCompanyCell

static NSString *ID = @"LXHomeCompanyCellID";

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
    self.contentView.backgroundColor = LXColorWhite;
}

- (void)setModel:(LXHomeCompanyModel *)model{
    _model = model;
    
//    self.logoImageV.image = [UIImage imageNamed:model.logo];
}

@end

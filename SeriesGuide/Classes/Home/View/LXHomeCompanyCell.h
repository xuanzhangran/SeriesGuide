//
//  LXHomeCompanyCell.h
//  SeriesGuide
//
//  Created by xuan on 2018/7/9.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LXHomeCompanyModel.h"

@interface LXHomeCompanyCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic, strong) LXHomeCompanyModel *model;

@end

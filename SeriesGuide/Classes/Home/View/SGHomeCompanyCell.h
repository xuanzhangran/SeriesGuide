//
//  SGHomeCompanyCell.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SGHomeCompanyModel.h"

@interface SGHomeCompanyCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic, strong) SGHomeCompanyModel *model;

@end

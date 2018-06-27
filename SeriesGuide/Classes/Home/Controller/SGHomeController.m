//
//  SGHomeController.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/27.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "SGHomeController.h"
#import "SGHomeCompanyCell.h"
#import "SGHomeCompanyModel.h"

@interface SGHomeController ()

@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation SGHomeController

- (NSArray *)dataArray{
    if (_dataArray == nil) {
        NSArray *array = @[@{@"logo":@"icon_aqy_logo"},@{@"logo":@"icon_mgtv_logo"},@{@"logo":@"icon_tencent_logo"},@{@"logo":@"icon_youku_logo"}];
        _dataArray = [SGHomeCompanyModel mj_objectArrayWithKeyValuesArray:array];
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.title = @"首页";
    
    self.view.backgroundColor = SGColorBgViewGray;
    
    self.tableView.frame = self.view.bounds;
}

#pragma mark -UITableViewDataSource/UITableViewDelegate-
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SGHomeCompanyCell *cell = [SGHomeCompanyCell cellWithTableView:tableView];
    SGHomeCompanyModel *model = self.dataArray[indexPath.row];
    cell.model = model;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end

//
//  HomeView.m
//  SpreadCellDemo
//
//  Created by lijinshi on 2018/3/20.
//  Copyright © 2018年 lijinshi. All rights reserved.
//

#import "HomeView.h"
#import "Masonry.h"

@implementation HomeView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self layout];
    }
    return self;
}

- (void)layout
{
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_tableView];
    }
    return _tableView;
}

@end

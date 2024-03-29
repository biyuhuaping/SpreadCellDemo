//
//  HomeViewController.m
//  SpreadCellDemo
//
//  Created by lijinshi on 2018/3/20.
//  Copyright © 2018年 lijinshi. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeView.h"
#import "Masonry.h"
#import "HomeCell.h"
#import "HomeModel.h"

@interface HomeViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) HomeView *homeView;

@property (nonatomic, strong) NSMutableArray *testDataArray;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.homeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}

- (HomeView *)homeView{
    if (!_homeView) {
        _homeView = [[HomeView alloc] init];
        _homeView.backgroundColor = [UIColor whiteColor];
        _homeView.tableView.dataSource = self;
        _homeView.tableView.delegate = self;
        _homeView.tableView.estimatedRowHeight = 80;
        [_homeView.tableView registerClass:[HomeCell class] forCellReuseIdentifier:NSStringFromClass([HomeCell class])];
        [self.view addSubview:_homeView];
    }
    return _homeView;
}

- (NSMutableArray *)testDataArray{
    if (!_testDataArray) {
        NSArray *array = @[@"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用",
                           @"使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用使用"];
        
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSString *str in array) {
            HomeModel *model = [HomeModel new];
            model.title = str;
            model.isOpen = NO;
            [tempArray addObject:model];
        }
        _testDataArray = tempArray;
    }
    return _testDataArray;
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.testDataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([HomeCell class])];
    HomeModel *model = self.testDataArray[indexPath.row];
    cell.model = model;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.model.isOpen = !cell.model.isOpen;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeModel *model = self.testDataArray[indexPath.row];
    return model.cellHeight;
}

@end

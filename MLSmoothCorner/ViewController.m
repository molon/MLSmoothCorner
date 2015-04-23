//
//  ViewController.m
//  MLSmoothCorner
//
//  Created by molon on 15/4/23.
//  Copyright (c) 2015年 molon. All rights reserved.
//

#import "ViewController.h"
#import "Temp2TableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - layout
-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.tableView.frame = CGRectInset(self.view.bounds, 0, 20.0f);
}

#pragma mark - getter
- (UITableView *)tableView
{
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc]init];
        tableView.delegate = self;
        tableView.dataSource = self;
        [tableView registerClass:[Temp2TableViewCell class] forCellReuseIdentifier:[Temp2TableViewCell cellReuseIdentifier]];
        _tableView = tableView;
    }
    return _tableView;
}

#pragma mark - tableview delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  44.0f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Temp2TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[Temp2TableViewCell cellReuseIdentifier] forIndexPath:indexPath];
    cell.backgroundColor = indexPath.row%2?[UIColor colorWithWhite:0.845 alpha:1.000]:[UIColor whiteColor];
    return cell;
}


@end

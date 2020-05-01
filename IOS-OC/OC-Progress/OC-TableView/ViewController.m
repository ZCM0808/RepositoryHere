//
//  ViewController.m
//  OC-TableView
//
//  Created by Z CM on 2020/5/1.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>
@property(nonatomic,strong)NSArray *arr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"demoTable" ofType:@"plist"];
    _arr = [NSArray arrayWithContentsOfFile:path];
//    NSLog(@"%@",_arr);
    [self.view addSubview:tableView];
}

//1.
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _arr.count;
}
//2.
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_arr[section] count];
}
//3.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = _arr[indexPath.section][indexPath.row];
    if (indexPath.row == 0) {
        cell.backgroundColor = [UIColor greenColor];
    }
//    cell.textLabel.text = [NSString stringWithFormat:@"JOJO section%ld  row%ld",(long)indexPath.section,(long)indexPath.row];
    return cell;
}


@end

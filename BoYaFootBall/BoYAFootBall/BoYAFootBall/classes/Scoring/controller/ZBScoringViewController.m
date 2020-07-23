//
//  ZBScoringViewController.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBScoringViewController.h"
#import "ZBScoringSectionHeaderView.h"
#import "ZBScoringCell.h"

@interface ZBScoringViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ZBScoringViewController

static NSString *ID = @"ScoringCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
}

-(void)setupTableView{
    
    UIView *headerView = [[UIView alloc] init];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"组 4-add"];
    [headerView addSubview:imageView];
    _tableView.tableHeaderView = headerView;
    self.tableView.tableHeaderView.frame = CGRectMake(0,0, 0, 60);
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(headerView).offset(5);
        make.left.equalTo(headerView).offset(10);
        make.bottom.equalTo(headerView).offset(-5);
        make.right.equalTo(headerView).offset(-10);
        
    }];
    
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [_tableView registerNib:[UINib nibWithNibName:@"ZBScoringCell" bundle:nil] forCellReuseIdentifier:ID];
    _tableView.dataSource = self;
    _tableView.delegate = self;
}

#pragma mark - tableviewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZBScoringCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    cell.indexpath = indexPath;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 250;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    ZBScoringSectionHeaderView *view = [[ZBScoringSectionHeaderView alloc] init];
     
    
    return view;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 40;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

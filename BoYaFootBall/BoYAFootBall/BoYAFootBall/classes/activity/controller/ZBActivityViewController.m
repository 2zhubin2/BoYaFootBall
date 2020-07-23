//
//  ZBActivityViewController.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBActivityViewController.h"
#import "ZBActivityTableViewCell.h"

@interface ZBActivityViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ZBActivityViewController


static NSString *ID = @"ActivityTableViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
}

-(void)setupTableView{
    
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [_tableView registerNib:[UINib nibWithNibName:@"ZBActivityTableViewCell" bundle:nil] forCellReuseIdentifier:ID];
    _tableView.dataSource = self;
    _tableView.delegate = self;
}

#pragma mark - tableviewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZBActivityTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    cell.indexpath = indexPath;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //设置cell之间的间距
    //根据需求可以设置不同的间距
    cell.layer.borderWidth = 2;
    cell.layer.borderColor = [UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1].CGColor;
    return cell;
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1];
     UILabel *label = [[UILabel alloc] init];
     label.frame = CGRectMake(11,15,140,15);
     label.numberOfLines = 0;
     [view addSubview:label];

     NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"已为您优选推荐最新活动" attributes:@{NSFontAttributeName: [UIFont fontWithName:@"PingFang SC" size: 12],NSForegroundColorAttributeName: [UIColor colorWithRed:179/255.0 green:179/255.0 blue:179/255.0 alpha:1.0]}];

     label.attributedText = string;
     
    
    return view;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 40;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 250;
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

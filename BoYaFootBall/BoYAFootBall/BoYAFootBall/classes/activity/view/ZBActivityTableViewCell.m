//
//  ZBActivityTableViewCell.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBActivityTableViewCell.h"

@interface ZBActivityTableViewCell ()
/*
 _image_view.image = [UIImage imageNamed:imageName];
 _label_one.text = oneText;
 _label_two.text = twoText;
 */
@property (strong, nonatomic) IBOutlet UIImageView *image_view;
@property (strong, nonatomic) IBOutlet UILabel *label_one;
@property (strong, nonatomic) IBOutlet UILabel *label_two;

@property (strong, nonatomic) IBOutlet UIButton *btn_price;


@end

@implementation ZBActivityTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setIndexpath:(NSIndexPath *)indexpath{
    _indexpath = indexpath;
    switch (indexpath.row) {
        case 0:
            [self setupOneCell:@"图层 621-1" onetext:@"青少年足球推广活动" twoText:@"07.20 15:00 凡越网球俱乐部"];
            [_btn_price setTitle:@"35元" forState:UIControlStateNormal];
            break;
        case 1:
            [self setupOneCell:@"图层 621-2" onetext:@"家庭温馨足球之旅 " twoText:@"07.30 10:30  冈萨雷斯网球俱乐部"];
            [_btn_price setTitle:@"免费" forState:UIControlStateNormal];
        break;
        case 2:
            [self setupOneCell:@"图层 621-3" onetext:@"零基础足球培训" twoText:@"08.01 15:30 滨河足球场"];
            [_btn_price setTitle:@"25元" forState:UIControlStateNormal];
        break;
        case 3:
            [self setupOneCell:@"图层 621-4" onetext:@"足球之约" twoText:@"08.10 15:30 银泰网球场 "];
            [_btn_price setTitle:@"免费" forState:UIControlStateNormal];
        break;
            
        default:
            break;
    }
    
}

-(void)setupOneCell:(NSString *)imageName onetext:(NSString *)oneText twoText:(NSString *)twoText{
    _image_view.image = [UIImage imageNamed:imageName];
    _label_one.text = oneText;
    _label_two.text = twoText;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

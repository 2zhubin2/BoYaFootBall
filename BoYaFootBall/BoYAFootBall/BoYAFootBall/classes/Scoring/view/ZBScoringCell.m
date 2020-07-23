//
//  ZBScoringCell.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBScoringCell.h"

@interface ZBScoringCell ()

@property (strong, nonatomic) IBOutlet UILabel *title_label;
@property (strong, nonatomic) IBOutlet UIImageView *icon_lift;
@property (strong, nonatomic) IBOutlet UIImageView *icon_right;
@property (strong, nonatomic) IBOutlet UIImageView *image_left;
@property (strong, nonatomic) IBOutlet UIImageView *image_right;
@property (strong, nonatomic) IBOutlet UILabel *teamName_left;
@property (strong, nonatomic) IBOutlet UILabel *teamName_right;
@property (strong, nonatomic) IBOutlet UILabel *scoring_label;
@property (strong, nonatomic) IBOutlet UILabel *timeLength_label;
@property (strong, nonatomic) IBOutlet UILabel *time_label;
@property (strong, nonatomic) IBOutlet UILabel *place_label;

@property (strong, nonatomic) IBOutlet UIImageView *bgView;

@end

@implementation ZBScoringCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    _bgView.image = [UIImage imageNamed:@"back"];
    _bgView.contentMode = UIViewContentModeScaleToFill;
    
}

- (void)setIndexpath:(NSIndexPath *)indexpath{
    _indexpath = indexpath;
    if (indexpath.row == 0) {
        _title_label.text = @"双流区足球联赛";
        _icon_lift.image = [UIImage imageNamed:@"12607283_0_0"];
        _icon_right.image = [UIImage imageNamed:@"12607283_0_0"];
        _image_left.image = [UIImage imageNamed:@"图层 731"];
        _image_right.image = [UIImage imageNamed:@"图层 729"];
        _teamName_left.text = @"战锋足球队";
        _teamName_right.text = @"明科足球队";
        _scoring_label.text = @"3  :  2";
        _timeLength_label.text = @"时长45:00";
        _time_label.text = @"比赛时间：2020.07.04 15:00";
        _place_label.text = @"比赛地点：华北路666号upark体育公园";
        
    }else{
        _title_label.text = @"莱登社区足球赛";
        _icon_lift.image = [UIImage imageNamed:@"12607283_0_0"];
        _icon_right.image = [UIImage imageNamed:@"12607283_0_0"];
        _image_left.image = [UIImage imageNamed:@"图层 739"];
        _image_right.image = [UIImage imageNamed:@"图层 737"];
        _teamName_left.text = @"镜中足球队";
        _teamName_right.text = @"亚风足球队";
        _scoring_label.text = @"1  :  2";
        _timeLength_label.text = @"";
        _time_label.text = @"比赛时间：2020.06.27 15:00";
        _place_label.text = @"比赛地点：世纪城东路9号";
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

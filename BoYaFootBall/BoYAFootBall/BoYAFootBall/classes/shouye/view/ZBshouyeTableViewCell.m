//
//  ZBshouyeTableViewCell.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBshouyeTableViewCell.h"

@interface ZBshouyeTableViewCell ()

@property (strong, nonatomic) IBOutlet UIImageView *image_view;
@property (strong, nonatomic) IBOutlet UILabel *label_one;
@property (strong, nonatomic) IBOutlet UILabel *label_two;
@property (strong, nonatomic) IBOutlet UIButton *reserve_btn;


@end

@implementation ZBshouyeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setIndexpath:(NSIndexPath *)indexpath{
    _indexpath = indexpath;
    switch (indexpath.row) {
        case 0:
            [self setupOneCell:@"图层 1939" onetext:@"世纪足球学院" twoText:@"世纪城东路9号"];
            break;
        case 1:
            [self setupOneCell:@"图层 1940" onetext:@"SKY足球中心" twoText:@"武侯区高攀路22号附20号"];
        break;
        case 2:
            [self setupOneCell:@"图层 1941" onetext:@"顺城篮球场" twoText:@"青羊区顺城大街富力广场3号门"];
        break;
        case 3:
            [self setupOneCell:@"图层 1942" onetext:@"金双楠篮球馆" twoText:@"武侯区九金街58东南80米"];
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

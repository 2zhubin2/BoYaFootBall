//
//  ZBShouyeCollectionViewCell.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBShouyeCollectionViewCell.h"

@interface ZBShouyeCollectionViewCell ()
@property (strong, nonatomic) IBOutlet UIImageView *image_V;

@end

@implementation ZBShouyeCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
}

- (void)setImageName:(NSString *)imageName{
    _image_V.image = [UIImage imageNamed:imageName];
}


@end

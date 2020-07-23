//
//  ZBScoringSectionHeaderView.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBScoringSectionHeaderView.h"

@implementation ZBScoringSectionHeaderView

- (instancetype)init
{
    self = [super init];
    if (self) {
        return [[NSBundle mainBundle] loadNibNamed:@"ZBScoringSectionHeaderView" owner:nil options:nil].lastObject;
    }
    return self;
}

@end

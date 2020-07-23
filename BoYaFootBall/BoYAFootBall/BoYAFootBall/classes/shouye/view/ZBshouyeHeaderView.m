//
//  ZBshouyeHeaderView.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBshouyeHeaderView.h"
#import "ZBShouyeCollectionViewCell.h"

@interface ZBshouyeHeaderView ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,weak)UICollectionView *col_view;

@end

@implementation ZBshouyeHeaderView

static NSString *ID = @"ShouyeCollectionViewCell";

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupCollectionView];
    }
    return self;
}

-(void)setupCollectionView{
    UICollectionViewFlowLayout *flowL = [[UICollectionViewFlowLayout alloc] init];
    
    CGFloat margin = 10;
    //设置最小行间距
    flowL.minimumLineSpacing = 20;
    //设置最小间隔值.
    flowL.minimumInteritemSpacing = 10;
//    flowL.itemSize = CGSizeMake(60,60);
    //设置内边距
    flowL.sectionInset = UIEdgeInsetsMake(margin, margin, margin, margin);
    UICollectionView *col_view = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, ZBScreenW, 300) collectionViewLayout:flowL];
     [col_view registerNib:[UINib nibWithNibName:@"ZBShouyeCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:ID];
    [self addSubview:col_view];
    col_view.backgroundColor = UIColor.whiteColor;
    col_view.delegate = self;
    col_view.dataSource = self;
    _col_view = col_view;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ZBShouyeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.imageName = @"图层 1943";
    }else if (indexPath.row == 1){
        cell.imageName = @"组 4-1";
    }else{
        cell.imageName = @"组 4-2";
    }
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {



        if (indexPath.row == 0) {

            //返回大的cell的尺寸
                   return CGSizeMake(ZBScreenW - 20, 175);
            

        }else{
          return CGSizeMake((ZBScreenW - 30)/2.0, 75);//返回两个小的cell的尺寸
        }


    return CGSizeZero;

}

@end

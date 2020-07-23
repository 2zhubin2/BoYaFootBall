//
//  ZBBaseTabViewController.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ZBBaseTabViewController.h"
#import "ZBShouYeViewController.h"
#import "ZBScoringViewController.h"
#import "ZBmineViewController.h"
#import "ZBActivityViewController.h"

@interface ZBBaseTabViewController ()

@end

@implementation ZBBaseTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupChildVC];
}

#pragma mark - 初始化子控制器
-(void)setupChildVC{
    ZBShouYeViewController *shouye_VC = [[ZBShouYeViewController alloc] init];
    [self setUpOneChildViewController:shouye_VC image:[UIImage imageNamed:@"我的"] sellectImage:[UIImage imageNamed:@"我的选中"] title:@"首页"];
    
    ZBActivityViewController *activity_VC = [[ZBActivityViewController alloc] init];
    [self setUpOneChildViewController:activity_VC image:[UIImage imageNamed:@"活动"] sellectImage:[UIImage imageNamed:@"活动选中"] title:@"活动"];
    
    ZBScoringViewController *scoring_VC = [ZBScoringViewController new];
    [self setUpOneChildViewController:scoring_VC image:[UIImage imageNamed:@"比分"] sellectImage:[UIImage imageNamed:@"比分选中"] title:@"记分"];
    
    ZBmineViewController *mine_VC = [ZBmineViewController new];
    [self setUpOneChildViewController:mine_VC image:[UIImage imageNamed:@"我的"] sellectImage:[UIImage imageNamed:@"我的选中"] title:@"我的"];
    
    
}

#pragma mark - 添加一个子控制器的方法
- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image sellectImage:(UIImage *)image_s title:(NSString *)title{
    viewController.title = title;
    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:viewController];
//    navC.navigationBar.backgroundColor = UIColor.whiteColor;
    navC.navigationBar.barTintColor = UIColor.whiteColor;
    navC.tabBarItem.title = title;
    navC.tabBarItem.image = image;
    navC.tabBarItem.selectedImage = image_s;

    [self addChildViewController:navC];
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

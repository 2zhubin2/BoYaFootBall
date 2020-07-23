//
//  AppDelegate.m
//  BoYAFootBall
//
//  Created by 石先生 on 2020/7/23.
//  Copyright © 2020 mac. All rights reserved.
//

#import "AppDelegate.h"
#import "ZBBaseTabViewController.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ZBBaseTabViewController *tab_vc = [[ZBBaseTabViewController alloc] init];
  
    self.window.rootViewController = tab_vc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}





@end

//
//  AppDelegate.m
//  HTNavigationController
//
//  Created by 一米阳光 on 17/3/4.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    RootViewController * root = [[RootViewController alloc] init];
    /**
     *  导航控制器是一种特殊的视图控制器
     *  视图控制器上有一个自带的UIView视图,导航控制器有两个自带的视图,一个是导航条,一个是工具条
     *  默认情况下导航条是显示的,工具条是隐藏的
     *  工具条在iOS7.0以后为了满足用户需求,导航条使用扁平化设计,变成无色半透明状态
     *  如果当前窗口添加导航控制器,那么视图的层次结构
        窗口 --> 导航控制器 --> 自定义视图控制器(自带的视图) --> 任意的控件
     *  root作为导航控制器的根视图控制器,显示在导航控制器的最上一层,窗口上此时显示的就是根视图控制器的视图
     */
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:root];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

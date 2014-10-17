//
//  AppDelegate.m
//  DHSlideMenuController
//
//  Created by 胡大函 on 14/10/11.
//  Copyright (c) 2014年 HuDahan_payMoreGainMore. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *mainViewController=[[UIViewController alloc]init];
    mainViewController.view.backgroundColor=[UIColor whiteColor];
    UIViewController *leftViewController=[[UIViewController alloc]init];
    leftViewController.view.backgroundColor=[UIColor purpleColor];
    UIViewController *rightViewController=[[UIViewController alloc]init];
    rightViewController.view.backgroundColor=[UIColor redColor];
    
    _slideMenuController=[[DHSlideMenuController alloc]init];
    _slideMenuController.mainViewController=mainViewController;
    _slideMenuController.leftViewController=leftViewController;
    _slideMenuController.rightViewController=rightViewController;
    
//    _slideMenuController.leftViewShowWidth=150;
//    _slideMenuController.rightViewShowWidth=150;
//    _slideMenuController.animationDuration = 0.35;
//    _slideMenuController.needShowBoundsShadow = YES;
    
    self.window.rootViewController=_slideMenuController;
    
    [_window makeKeyAndVisible];
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

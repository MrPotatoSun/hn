//
//  AppDelegate.m
//  UILesson _1_Frame
//
//  Created by lanou3g on 15/8/26.
//  Copyright (c) 2015年 com.lanou. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
    
}




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   
    
  self.window = [[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]]autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
//    frame 是一个大小，包含原点（x， y）大小（w，h）；
    CGPoint ponint1 = CGPointMake(100, 100);
    
    
    NSLog(@"%@",NSStringFromCGPoint(ponint1));
    NSLog(@"%f",ponint1.y);
    CGSize size1 = CGSizeMake(20, 50);
    NSLog(@"%f",size1.height);
    
    CGRect rect1 = CGRectMake(100, 200, 300, 400);
    NSLog(@"%.0f",rect1.origin.x);
    NSLog(@"%.2f",rect1.size.height);
    
    // iphone 的坐标系 是以最左上角为坐标原点  frame是以此坐标系给定的。
    // bounds 是以父视图的原点建立了一个坐标系、
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view1.backgroundColor = [UIColor blueColor];
    [self.window addSubview:view1];
    NSLog(@"%@",NSStringFromCGRect(view1.frame));
    
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 50, 50)];
    view2.backgroundColor = [UIColor yellowColor];
    
    [view1 addSubview:view2];

    
    // 中心点center 的坐标是根据自己的父视图求出来的，
    NSLog(@"%@",NSStringFromCGPoint(view2.center));
    
    
    [view1 release];
    view1 = nil;
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

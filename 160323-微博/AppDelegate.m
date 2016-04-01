//
//  AppDelegate.m
//  160323-微博
//
//  Created by Jun on 16/3/23.
//  Copyright © 2016年 Jun. All rights reserved.
//

#import "AppDelegate.h"
#import "WJTabBarController.h"
#import "WJOAuthController.h"
#import "WJNewFeatureController.h"
#import "WJAccount.h"
#import "WJAccountTool.h"
#import "UIWindow+WJExtension.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //1.创建window
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    
    //显示并设置主window
    [self.window makeKeyAndVisible];
    
    //取得account
    WJAccount *account = [WJAccountTool account];
    
    if (account) { //说明不是第一次登入
        
        [self.window showNewFeatureOrNot];
        
    } else { //没有登入过
        
        WJOAuthController *oaVC = [[WJOAuthController alloc] init];
        [self.window setRootViewController:oaVC];
        

    }
    
//    tabbar
//    OAuth
       //新特性
    
   
   
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

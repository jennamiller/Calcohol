//
//  AppDelegate.m
//  Calcohol
//
//  Created by Jenna Miller on 11/30/14.
//  Copyright (c) 2014 Jenna Miller. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "WhiskeyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    ViewController *wineVC = [[ViewController alloc] init];
    WhiskeyViewController *whiskeyVC = [[WhiskeyViewController alloc] init];
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    tabBarVC.viewControllers = @[wineVC, whiskeyVC];
    tabBarVC.delegate = self;
    
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)tabBarController:(UITabBarController *)tabBarVC didSelectViewController:(UIViewController *)viewController {
    NSLog(@"Did select %@", tabBarVC.selectedViewController);
}

- (void)applicationWillResignActive:(UIApplication *)application {
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

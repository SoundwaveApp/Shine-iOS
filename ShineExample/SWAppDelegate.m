//
//  AppDelegate.m
//  ShineExample
//
//  Created by Brian Boyle on 02/07/2015.
//  Copyright (c) 2015 Soundwave. All rights reserved.
//

#import "SWAppDelegate.h"
#import <Shine/Shine.h>
//5596937ce4b0048935c2cc05

@interface SWAppDelegate ()

@end

@implementation SWAppDelegate


- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Shine setDeveloperKey:@"<Your-Developer-Key>"];
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {

}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

- (void)applicationDidBecomeActive:(UIApplication *)application {

}

- (void)applicationWillTerminate:(UIApplication *)application {

}

@end

//
//  ESAppDelegate.m
//  ===========================
//  This is a simple app that implements the 
//  UILabel+ESAdjustableLabel category for demonstration 
//  purposes.
//                      ----
//
//  Created by Edgar Schmidt (@edgarschmidt) on 4/14/12.
//  Copyright (c) 2012 Edgar Schmidt. All rights reserved.
//
//  This code is provided without any warranties.
//  Hack around and enjoy ;)
//

#import "ESAppDelegate.h"

#import "ESViewController.h"

@implementation ESAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application 
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] 
                                                   bounds]];
    // Override point for customization after application launch.
  self.viewController = [[ESViewController alloc] 
                         initWithNibName:@"ESViewController" 
                         bundle:nil];
  self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end

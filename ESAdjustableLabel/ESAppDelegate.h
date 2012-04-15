//
//  ESAppDelegate.h
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

#import <UIKit/UIKit.h>

@class ESViewController;

@interface ESAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ESViewController *viewController;

@end

//
//  ESViewController.m
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
#import "UILabel+ESAdjustableLabel.h"
@interface ESViewController : UIViewController <UITextFieldDelegate>
{
  NSString *longText;   // The default long text
  NSString *shortText;  // The default short text
}
// Interface
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *adjustableLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *adjustmentOption;
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultText;
- (void)adjustLabel;
- (IBAction)adjustmentOptionChanged:(id)sender;
- (IBAction)loadDefaultText;

@end

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

#import "ESViewController.h"

@implementation ESViewController
@synthesize defaultText;
@synthesize textField;
@synthesize adjustableLabel;
@synthesize adjustmentOption;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  // Set the text field
  [textField setDelegate:self];
  
  // Set the label
	[adjustableLabel setFont:[UIFont fontWithName:@"Futura" size:16.0f]];
    
  // Temporary strings
  longText = @"This is a sample app that uses the UILabel+ESAdjustableLabel category. Notice that if you change this text with a shorter one (a single word for example) the label can be adjusted to be either just big enough to fit it or set to a minimum label size";
  shortText = @"A short text";
  
  // Set the initial UI values
  [adjustableLabel setText:longText];
  [textField setText:[adjustableLabel text]];
  
  // Adjust the label
  [self adjustLabel];
}

- (void)viewDidUnload
{
  [self setTextField:nil];
  [self setAdjustableLabel:nil];
  [self setAdjustmentOption:nil];
  [self setDefaultText:nil];
  [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)adjustLabel{
  // MOCKUP
  CGSize maxSize;
  CGSize minSize;
  UIFont *originalFont = [UIFont fontWithName:@"Futura" size:16];
  [adjustableLabel setFont:originalFont];
  switch (adjustmentOption.selectedSegmentIndex) {
    case 0:{
      // no min nor max
      maxSize = CGSizeZero;
      [adjustableLabel setBackgroundColor:[UIColor whiteColor]];
      [adjustableLabel setTextColor:[UIColor blackColor]];
      [adjustableLabel adjustLabel];
      break;
    }
    case 1:{
      // no min
      maxSize = CGSizeMake(200, 100);
      minSize = CGSizeZero;
      [adjustableLabel setBackgroundColor:[UIColor blueColor]];
      [adjustableLabel setTextColor:[UIColor whiteColor]];
      [adjustableLabel adjustLabelToMaximumSize:maxSize 
                                minimumFontSize:6.0];
      break;
    }
    case 2:{
      // max and min
      maxSize = CGSizeMake(200, 100);
      minSize = CGSizeMake(80, 60);
      [adjustableLabel setBackgroundColor:[UIColor darkGrayColor]];
      [adjustableLabel setTextColor:[UIColor whiteColor]];
      [adjustableLabel adjustLabelToMaximumSize:maxSize 
                                    minimumSize:minSize 
                                minimumFontSize:6.0];
      break;
    }
  } // end switch

}

- (BOOL)textFieldShouldReturn:(UITextField *)tf
{
  [adjustableLabel setText:[tf text]];
  [self adjustLabel];
  [tf resignFirstResponder];
  return YES;
}

- (IBAction)adjustmentOptionChanged:(id)sender {
  [self adjustLabel];
}
- (IBAction)loadDefaultText {
  switch ([defaultText selectedSegmentIndex]) {
    case 0:{
      // Load long text
      [textField setText:longText];
      [adjustableLabel setText:longText];
      [self adjustLabel];
      break;
    }
    case 1:{
      // Load short text
      [textField setText:shortText];
      [adjustableLabel setText:shortText];
      [self adjustLabel];
      break;
    }
  } // end switch
  
}
@end

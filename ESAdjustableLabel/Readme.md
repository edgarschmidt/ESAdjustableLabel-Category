
#ESAdjustable Label Category

Adjusting the size of a UILabel is a pain in the back. This category provides a couple of simple methods to make this process less painful:

```objc
// Generic method. If minSize is set to CGSizeZero then
// it is ignored
// =====================================================
- (void)adjustLabelToMaximumSize:(CGSize)maxSize 
                     minimumSize:(CGSize)minSize 
                 minimumFontSize:(int)minFontSize;

// Adjust label using only the maximum size and the 
// font size as constraints
// =====================================================
- (void)adjustLabelToMaximumSize:(CGSize)maxSize 
                 minimumFontSize:(int)minFontSize;

// Adjust the size of the label using only the font
// size as a constraint (the maximum size will be
// calculated automatically based on the screen size)
// =====================================================
- (void)adjustLabelSizeWithMinimumFontSize:(int)minFontSize;

// Adjust label without any constraints (the maximum 
// size will be calculated automatically based on the
// screen size)
// =====================================================
- (void)adjustLabel;
```

This repo includes a sample demo that illustrates how to use this category.

## How to use it in your projects
1. Copy the two category files below in your project
  * UILabel+ESAdjustableLabel.h
  * UILabel+ESAdjustableLabel.m
2. Add the following line of code in the header file of the class where the UILabel you need to modify its size is located:

```objc
#import "UILabel+ESAdjustableLabel.h"
```

Happy hacking ;)

-Edgar
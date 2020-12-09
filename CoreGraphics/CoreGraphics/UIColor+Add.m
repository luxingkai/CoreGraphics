//
//  UIColor+Add.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/9.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "UIColor+Add.h"

@implementation UIColor (Add)
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue {
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:1];
}

@end

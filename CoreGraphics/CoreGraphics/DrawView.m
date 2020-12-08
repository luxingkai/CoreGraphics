//
//  DrawView.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
//    CGContextRef contextRef = UIGraphicsGetCurrentContext();
//
//    CGContextAddRect(contextRef, CGRectMake(100, 100, 40, 40));
//    CGContextSetFillColorWithColor(contextRef, [UIColor redColor].CGColor);
//    CGContextDrawPath(contextRef, kCGPathFillStroke);
}


@end

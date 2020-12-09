//
//  DrawView.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "DrawView.h"
#import "UIColor+Add.h"

@implementation DrawView {
}

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
        [self setupSubView];
    }
    return self;
}

- (void)setupSubView {
    
    self.alphaView = [UIView new];
    self.alphaView.frame = CGRectMake(70, 70, 60, 60);
    self.alphaView.backgroundColor = UIColor.blackColor;
    self.alphaView.alpha = 0.4;
    self.alphaView.layer.cornerRadius = 30;
    [self addSubview:self.alphaView];
    
    CGMutablePathRef mutablePathRef = CGPathCreateMutable();
    CGPathAddArc(mutablePathRef, NULL, 100, 100, 25, -M_PI_2, M_PI * 2 - M_PI_2, NO);
    _shapeLayer = [CAShapeLayer layer];
    _shapeLayer.path = mutablePathRef;
    _shapeLayer.lineWidth = 3;
    _shapeLayer.fillColor = [UIColor clearColor].CGColor;
    _shapeLayer.fillMode = kCAFillModeForwards;
    _shapeLayer.strokeColor = [UIColor colorWithRGB:0xFDE218].CGColor;
    _shapeLayer.lineCap = kCALineCapRound;
    _shapeLayer.strokeStart = 0;
    _shapeLayer.strokeEnd = 1;
    [self.layer addSublayer:_shapeLayer];
    //
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    basicAnimation.fromValue = @1;
    basicAnimation.toValue = @0;
    basicAnimation.duration = 60 * 10;
    basicAnimation.removedOnCompletion = NO;
    basicAnimation.fillMode = kCAFillModeForwards;
    [_shapeLayer addAnimation:basicAnimation forKey:@"strokeEnd"];
    
    NSDate *currentDate = [NSDate date];
    NSDate *limitDate = [currentDate dateByAddingTimeInterval:10 * 60];
    NSDate *earlierDate = [currentDate laterDate:limitDate];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"mm:ss";
    NSLog(@"%@",[dateFormatter stringFromDate:earlierDate]);
    self.leftTimeLab = [UILabel new];
    self.leftTimeLab.frame = CGRectMake(82.5, 90, 35, 20);
    self.leftTimeLab.text = @"09:18";
    self.leftTimeLab.textColor = [UIColor colorWithRGB:0xFDE218];
    self.leftTimeLab.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
    [self addSubview:self.leftTimeLab];
    
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:10 * 60 target:self selector:@selector(repeat) userInfo:nil repeats:YES];
//    [timer fire];
    
    self.detailLab = [UILabel new];
    self.detailLab.frame = CGRectMake(150, 90, 180, 20);
    self.detailLab.text = @"时间还有42秒，请尽快咨询";
    self.detailLab.textColor = [UIColor colorWithRGB:0xFDE218];
    self.detailLab.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
    [self addSubview:self.detailLab];
    
}

- (void)repeat {
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [UIView animateWithDuration:0.25 animations:^{
        self.alphaView.frame = CGRectMake(70, 70, 303, 60);
    }];
}


@end

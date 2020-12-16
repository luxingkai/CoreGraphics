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
    BOOL _showDetail;
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
        _showDetail = NO;
        _countDown = 60 * 2;
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
    
    self.leftTimeLab = [UILabel new];
    self.leftTimeLab.frame = CGRectMake(82.5, 90, 35, 20);
    self.leftTimeLab.textColor = [UIColor colorWithRGB:0xFDE218];
    self.leftTimeLab.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
    self.leftTimeLab.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.leftTimeLab];
    
    self.detailLab = [UILabel new];
    self.detailLab.frame = CGRectMake(150, 90, 180, 20);
    self.detailLab.textColor = [UIColor colorWithRGB:0xFDE218];
    self.detailLab.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
    self.detailLab.hidden = YES;
    [self addSubview:self.detailLab];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(repeat:) userInfo:nil repeats:YES];
    [timer fire];
    
}

- (void)repeat:(NSTimer *)timer {
    __weak typeof(self) weakSelf = self;
    if (self.countDown == 0) {
        [timer invalidate];
        timer = nil;
        [UIView animateWithDuration:0.25 animations:^{
            weakSelf.alphaView.frame = CGRectMake(70, 70, 60, 60);
        }completion:^(BOOL finished) {
            [weakSelf removeFromSuperview];
        }];
        return;
    }
    _countDown --;
    
    if (self.countDown == 60 && _showDetail == NO) {
        [UIView animateWithDuration:0.25 animations:^{
            weakSelf.alphaView.frame = CGRectMake(70, 70, 303, 60);
            weakSelf.detailLab.hidden = NO;
        }];
    }
    if (self.countDown <= 60) {
        self.detailLab.text = [NSString stringWithFormat:@"时间还有%ld秒，请尽快咨询",self.countDown];
    }
    
    NSInteger minutes = self.countDown / 60;
    NSInteger seconds = self.countDown % 60;
    NSString *minutesStr = [NSString stringWithFormat:@"%ld",minutes];
    NSString *secondsStr = [NSString stringWithFormat:@"%ld",seconds];
    
    if (minutes < 10) {
        minutesStr = [NSString stringWithFormat:@"0%ld",(long)minutes];
    }
    if (seconds < 10) {
        secondsStr = [NSString stringWithFormat:@"0%ld",(long)seconds];
    }
    
    NSString *countDownStr = [NSString stringWithFormat:@"%@:%@",minutesStr,secondsStr];
    self.leftTimeLab.text = countDownStr;
}



@end

//
//  DrawView.h
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface DrawView : UIView
@property (nonatomic, strong) UIView *alphaView;
@property (nonatomic, strong) UILabel *leftTimeLab;
@property (nonatomic, strong) UILabel *detailLab;
@property (nonatomic, strong) CAShapeLayer *shapeLayer;
@property (nonatomic, assign) NSInteger countDown;//倒计时

@end


NS_ASSUME_NONNULL_END

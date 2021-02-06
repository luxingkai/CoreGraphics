//
//  AnimationViewController.m
//  CoreGraphics
//
//  Created by tigerfly on 2021/1/26.
//  Copyright © 2021 tigerfly. All rights reserved.
//

#import "AnimationViewController.h"

@interface AnimationImplementor : NSObject

- (void)animationWithCategory:(NSString *)category;

@end

@implementation AnimationImplementor

- (void)animationWithCategory:(NSString *)category {
}

@end


@interface AnimationViewController ()

@end

@implementation AnimationViewController {
    NSString *_animationCatetory;
}

- (instancetype)initWithTitle:(NSString *)title {
    if (title == nil) {return nil;}
    if (self = [super init]) {
        _animationCatetory = title;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    self.navigationItem.title = _animationCatetory;
    
    UIView *animationItem = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    animationItem.backgroundColor = UIColor.redColor;
    [self.view addSubview:animationItem];
    
    /**
     CAAnimation
     The abstract superclass for animations in Core Animation.
     */
    
    /**
     @"CAPropertyAnimation"
     
     An abstract subclass of CAAnimation for creating animations
     that manipulate the value of layer properties.
     */
        
    /**
     @"CABasicAnimation"
     
     An object that provides basic, single-keyframe animation
     capabilities for a layer property.
     */
    
    /**
     @"CAKeyframeAnimation"
     
     An object that provides keyframe animation capabilities for
     a layer object.
     */
    
    /**
     @"CASpringAnimation"
     
     An animation that applies a spring-like force to a layer's
     properties.
     */
    
    /**
     @"CATransition"
     
     An object that provides an animated transition between a
     layer's states.
     */
    
    
#pragma mark -- Properties
    /**
     The following CALayer properties specify a layer’s geometry:

     •  bounds
     •  position
     •  frame (computed from the bounds and position and is not animatable)
     •  anchorPoint
     •  anchorPoint
     •  transform
     •  zPosition
     */
    
    /**
     •  backgroundColor
     •  backgroundFilters (not supported in iOS)
     */
    
    /**
     •  contents
     •  contentsGravity
     •  masksToBounds
     */
    
    /**
     •  sublayers
     •  masksToBounds
     •  sublayerTransform
     */
    
    /**
     •  borderColor
     •  borderWidth
     */

    /**
     •  filters
     •  compositingFilter
     */

    /**
     •  shadowColor
     •  shadowOffset
     •  shadowOpacity
     •  shadowRadius
     •  shadowPath
     */
    
    /**
     •  opacity
     */
    
    /**
     •  mask
     */
    
    
#pragma mark -- Animatable Properties

    /**
     lists the properties of the CALayer class that you might
     consider animating. For each property, the table also lists
     the type of default animation object that is created to
     execute an implicit animation.

     •  anchorPoint
        Uses the default implied CABasicAnimation object,
     •  backgroundColor
        Uses the default implied CABasicAnimation object,
     •  backgroundFilters
        Uses the default implied CATransition object
     •  borderColor
        Uses the default implied CABasicAnimation object
     •  borderWidth
        Uses the default implied CABasicAnimation object
     •  bounds
        Uses the default implied CABasicAnimation object
     •  compositingFilter
        Uses the default implied CATransition object,
     •  contents
        Uses the default implied CABasicAnimation object,
     •  contentsRect
        Uses the default implied CABasicAnimation object,
     •  cornerRadius
        Uses the default implied CABasicAnimation object,
     •  doubleSided
        There is no default implied animation.
     •  filters
        Uses the default implied CABasicAnimation object
     •  frame
        This property is not animatable
     •  hidden
        Uses the default implied CABasicAnimation object
     •  mask
        Uses the default implied CABasicAnimation object
     •  masksToBounds
        Uses the default implied CABasicAnimation object
     •  opacity
        Uses the default implied CABasicAnimation object
     •  position
        Uses the default implied CABasicAnimation object
     •  shadowColor
        Uses the default implied CABasicAnimation object
     •  shadowOffset
        Uses the default implied CABasicAnimation object
     •  shadowOpacity
        Uses the default implied CABasicAnimation object
     •  shadowPath
        Uses the default implied CABasicAnimation object
     •  shadowRadius
        Uses the default implied CABasicAnimation object
     •  sublayers
        Uses the default implied CABasicAnimation object
     •  sublayerTransform
        Uses the default implied CABasicAnimation object
     •  transform
        Uses the default implied CABasicAnimation object
     •  zPosition
        Uses the default implied CABasicAnimation object
     */
    
    
//    if([_animationCatetory isEqualToString:@"CABasicAnimation"]){
//    }else if([_animationCatetory isEqualToString:@"CAKeyframeAnimation"]) {
//    }else if([_animationCatetory isEqualToString:@"CASpringAnimation"]) {
//    }else {
//    }
    
//    CABasicAnimation* fadeAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
//    fadeAnim.fromValue = [NSNumber numberWithFloat:1.0];
//    fadeAnim.toValue = [NSNumber numberWithFloat:0.0];
//    fadeAnim.duration = 1.0;
//    [animationItem.layer addAnimation:fadeAnim forKey:@"opacity"];

    
    CAKeyframeAnimation* widthAnim = [CAKeyframeAnimation animationWithKeyPath:@"borderWidth"];
    NSArray* widthValues = [NSArray arrayWithObjects:@1.0, @10.0, @5.0, @30.0, @0.5, @15.0, @2.0, @50.0, @0.0, nil];
    widthAnim.values = widthValues;
    widthAnim.calculationMode = kCAAnimationPaced;
     
    // Animation 2
    CAKeyframeAnimation* colorAnim = [CAKeyframeAnimation animationWithKeyPath:@"borderColor"];
    NSArray* colorValues = [NSArray arrayWithObjects:(id)[UIColor greenColor].CGColor,
                (id)[UIColor redColor].CGColor, (id)[UIColor blueColor].CGColor,  nil];
    colorAnim.values = colorValues;
    colorAnim.calculationMode = kCAAnimationPaced;
     
    // Animation group
    CAAnimationGroup* group = [CAAnimationGroup animation];
    group.animations = [NSArray arrayWithObjects:colorAnim, widthAnim, nil];
    group.duration = 5.0;
     
    [animationItem.layer addAnimation:group forKey:@"BorderChanges"];
    
}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

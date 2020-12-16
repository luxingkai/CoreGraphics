//
//  Reference.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "Reference.h"

@interface Reference ()

@end

@implementation Reference

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
#pragma mark -- CGAffineTransform
    /*
     CGAffineTransform
     
     An affine transformation matrix for use in drawing 2D graphics.
     
     A transformation specifies how points in one coordinate system
     map to points in another coordinate system. An affine transformation
     is a special type of mapping that preserves prrallel line in a
     path but does not necessarily preserve lengths or angles. Scaling
     rotation, and translation the most commonly used manipulations
     supported by affine transforms, but skewing is also possible.
     
     For more information on how to create, concatenate, and apply
     affine transformations, see Quartz 2D Programming Guide.
     
     You typically do not need to create an affine transform directly
     -- CGContext describes functions that modify the current affine
     transform. If you don't plan to reuse an affine transform, you
     may want to use CGContextScaleCTM, CGContextRotateCTM,
     CGContextTranslateCTM, or CGContextConcatCTM.
     */
    
    /**
     Creating an Affine Transformation Matrix
     */
//    CGAffineTransformMake(<#CGFloat a#>, <#CGFloat b#>, <#CGFloat c#>, <#CGFloat d#>, <#CGFloat tx#>, <#CGFloat ty#>)
//    CGAffineTransformMakeRotation(<#CGFloat angle#>)
//    CGAffineTransformMakeScale(<#CGFloat sx#>, <#CGFloat sy#>)
//    CGAffineTransformMakeTranslation(<#CGFloat tx#>, <#CGFloat ty#>)
    
    /**
     Modifying Affine Transformations
     */
//    CGAffineTransformTranslate(<#CGAffineTransform t#>, <#CGFloat tx#>, <#CGFloat ty#>)
//    CGAffineTransformScale(<#CGAffineTransform t#>, <#CGFloat sx#>, <#CGFloat sy#>)
//    CGAffineTransformRotate(<#CGAffineTransform t#>, <#CGFloat angle#>)
//    CGAffineTransformInvert(<#CGAffineTransform t#>)
//    CGAffineTransformConcat(<#CGAffineTransform t1#>, <#CGAffineTransform t2#>)
    
    /**
     Applying Affine Transformations
     */
//    CGPointApplyAffineTransform(<#CGPoint point#>, <#CGAffineTransform t#>)
//    CGSizeApplyAffineTransform(<#CGSize size#>, <#CGAffineTransform t#>)
//    CGRectApplyAffineTransform(<#CGRect rect#>, <#CGAffineTransform t#>)
    
    /**
     Evaluating Affine Transforms
     */
//    CGAffineTransformIsIdentity(<#CGAffineTransform t#>)
//    CGAffineTransformEqualToTransform(<#CGAffineTransform t1#>, <#CGAffineTransform t2#>)
    
    /**
     Data Types
     */
//    CGAffineTransform
    
    
#pragma mark -- CGGeometry
    
    /*
     Various structures and associated functions for 2D geometric
     primitives.

     The data structure CGPoint represents a point in a two-dimensional
     coordinate system. The data structure CGRect represents the
     location and dimensions of a rectangle. The data structure CGSize
     represents the dimensions of width and height.
     
     A CGPoint, CGRect, or CGSize structure does not explicitly
     define the unit of measure for its member quantities.
     A point’s x- and y-coordinates or a size’s width and height
     are unitless quantities—whether such measurements are treated
     as pixels, scale-factor-independent points, texture elements
     (texels), or some other unit depends on the API using the
     measurement, and on the context in which that API is used.
     For example, a CGRect structure specifying the frame of an
     NSView or UIView object defines the view’s dimensions in points,
     not pixels. However, the effects of using a CGPoint structure
     in a CGContextRef drawing operation depend on the scale factor
     associated with that context. Where not otherwise specified,
     you can assume that a CGPoint, CGRect, or CGSize structure
     is defined in points, not pixels. (For details, see Drawing
     and Printing Guide for iOS or High Resolution Guidelines for OS X.)
     
     The height and width stored in a CGRect data structure can be
     negative. For example, a rectangle with an origin of [0.0, 0.0]
     and a size of [10.0,10.0] is exactly equivalent to a rectangle
     with an origin of [10.0, 10.0] and a size of [-10.0,-10.0].
     Your application can standardize a rectangle—that is, ensure
     that the height and width are stored as positive values—by
     calling the CGRectStandardize function. All functions
     described in this reference that take CGRect data structures
     as inputs implicitly standardize those rectangles before
     calculating their results. For this reason, your applications
     should avoid directly reading and writing the data stored
     in the CGRect data structure. Instead, use the functions
     described here to manipulate rectangles and to retrieve
     their characteristics.
     */
    
    /**
     Creating a Dictionary Representation from a Geometric Primitive
     */
//    CGPointCreateDictionaryRepresentation(<#CGPoint point#>)
//    CGSizeCreateDictionaryRepresentation(<#CGSize size#>)
//    CGRectCreateDictionaryRepresentation(<#CGRect#>)
    
    /**
     Creating a Geometric Primitive from a Dictionary Representation
     */
//    CGPointMakeWithDictionaryRepresentation(<#CFDictionaryRef  _Nullable dict#>, <#CGPoint * _Nullable point#>)
//    CGSizeMakeWithDictionaryRepresentation(<#CFDictionaryRef  _Nullable dict#>, <#CGSize * _Nullable size#>)
//    CGRectMakeWithDictionaryRepresentation(<#CFDictionaryRef  _Nullable dict#>, <#CGRect * _Nullable rect#>)

    /**
     Creating a Geometric Primitive from Values
     */
//    CGPointMake(<#CGFloat x#>, <#CGFloat y#>)
//    CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
//    CGSizeMake(<#CGFloat width#>, <#CGFloat height#>)
//    CGVectorMake(<#CGFloat dx#>, <#CGFloat dy#>)
    
    /**
     Modifying Rectangles
     */
//    CGRectDivide(<#CGRect rect#>, <#CGRect * _Nonnull slice#>, <#CGRect * _Nonnull remainder#>, <#CGFloat amount#>, <#CGRectEdge edge#>)
//    CGRectInset(<#CGRect rect#>, <#CGFloat dx#>, <#CGFloat dy#>)
//    CGRectIntegral(<#CGRect rect#>)
//    CGRectIntersection(<#CGRect r1#>, <#CGRect r2#>)
//    CGRectOffset(<#CGRect rect#>, <#CGFloat dx#>, <#CGFloat dy#>)
//    CGRectStandardize(<#CGRect rect#>)
//    CGRectUnion(<#CGRect r1#>, <#CGRect r2#>)
    
    /**
     Comparing Values
     */
//    CGPointEqualToPoint(<#CGPoint point1#>, <#CGPoint point2#>)
//    CGSizeEqualToSize(<#CGSize size1#>, <#CGSize size2#>)
//    CGRectEqualToRect(<#CGRect rect1#>, <#CGRect rect2#>)
//    CGRectIntersectsRect(<#CGRect rect1#>, <#CGRect rect2#>)
    
    /**
     Checking for Membership
     */
//    CGRectContainsRect(<#CGRect rect1#>, <#CGRect rect2#>)
//    CGRectContainsPoint(<#CGRect rect#>, <#CGPoint point#>)
    
    /**
     Getting Min, Mid, and Max Values
     */
//    CGRectGetMinX(<#CGRect rect#>)
//    CGRectGetMinY(<#CGRect rect#>)
//    CGRectGetMidX(<#CGRect rect#>)
//    CGRectGetMidY(<#CGRect rect#>)
//    CGRectGetMaxX(<#CGRect rect#>)
//    CGRectGetMaxY(<#CGRect rect#>)
    
    /**
     Getting Height and Width
     */
//    CGRectGetHeight(<#CGRect rect#>)
//    CGRectGetWidth(<#CGRect rect#>)
    
    /**
     Checking Rectangle Characteristics
     */
//    CGRectIsEmpty(<#CGRect rect#>)
//    CGRectIsNull(<#CGRect rect#>)
//    CGRectIsInfinite(<#CGRect rect#>)
    
    /**
     Data Types
     */
//    CGFloat
//    CGPoint
//    CGRect
//    CGSize
//    CGVector
    
    /**
     Constants
     */
//    CGRectInfinite
//    CGRectEdge
    
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

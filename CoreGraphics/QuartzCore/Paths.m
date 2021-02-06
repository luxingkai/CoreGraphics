//
//  Paths.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "Paths.h"

@interface CycleView : UIView

@end

@implementation CycleView

+ (Class)layerClass {
    return [CAGradientLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;
        gradientLayer.colors = @[(id)UIColor.redColor.CGColor, (id)UIColor.grayColor.CGColor,(id)UIColor.blackColor.CGColor];
        gradientLayer.locations = @[@0, @0.5, @1];
        gradientLayer.startPoint = CGPointZero;
        gradientLayer.endPoint = CGPointMake(1, 1);
        gradientLayer.type = kCAGradientLayerAxial;
    }
    return self;
}

@end



@interface Paths ()

@end

@implementation Paths

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    /*
     A path defines one or more shapes, or subpaths. A subpath
     can consist of straight lines, curves, or both. It can be
     open or closed. A subpath can be a simple shape, such as a
     line, circle, rectangle, or star, or a more complex shape
     such as the silhouette of a mountain range or an abstract
     doodle. Figure 3-1 shows some of the paths you can create.
     The straight line (at the upper left of the figure) is
     dashed; lines can also be solid. The squiggly path (in the
     middle top) is made up of several curves and is an open
     path. The concentric circles are filled, but not stroked.
     The State of California is a closed path, made up of many
     curves and lines, and the path is both stroked and filled.
     The stars illustrate two options for filling paths, which
     you’ll read about later in this chapter.

     Figure 3-1  Quartz supports path-based drawing
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/path_vector_examples.gif
     
     In this chapter, you’ll learn about the building blocks
     that make up paths, how to stroke and paint paths, and the
     parameters that affect the appearance of paths.
     */
    
    
#pragma mark --     Path Creation and Path Painting

    /**
     Path creation and path painting are separate tasks. First
     you create a path. When you want to render a path, you
     request Quartz to paint it. As you can see in Figure 3-1,
     you can choose to stroke the path, fill the path, or both
     stroke and fill the path. You can also use a path to constrain
     the drawing of other objects within the bounds of the path
     creating, in effect, a clipping area.

     Figure 3-2 shows a path that has been painted and that
     contains two subpaths. The subpath on the left is a rectangle,
     and the subpath on the right is an abstract shape made up
     of straight lines and curves. Each subpath is filled and its
     outline stroked.

     Figure 3-2  A path that contains two shapes, or subpaths
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/subpaths.gif
     
     Figure 3-3 shows multiple paths drawn independently. Each
     path contains a randomly generated curve, some of which
     are filled and others stroked. Drawing is constrained to
     a circular area by a clipping area.

     Figure 3-3  A clipping area constrains drawing
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/circle_clipping.gif
     */
    

#pragma mark --      The Building Blocks

    /**
     Subpaths are built from lines, arcs, and curves. Quartz also
     provides convenience functions to add rectangles and ellipses
     with a single function call. Points are also essential
     building blocks of paths because points define starting
     and ending locations of shapes.
     */
    
    /**
     Points

     Points are x and y coordinates that specify a location in
     user space. You can call the function CGContextMoveToPoint
     to specify a starting position for a new subpath. Quartz
     keeps track of the current point, which is the last location
     used for path construction. For example, if you call the
     function CGContextMoveToPoint to set a location at (10,10),
     that moves the current point to (10,10). If you then draw
     a horizontal line 50 units long, the last point on the line,
     that is, (60,10), becomes the current point. Lines, arcs,
     and curves are always drawn starting from the current point.

     Most of the time you specify a point by passing to Quartz
     functions two floating-point values to specify x and y
     coordinates. Some functions require that you pass a CGPoint
     data structure, which holds two floating-point values.
     */
    
    /**
     Lines
     
     A line is defined by its endpoints. Its starting point is
     always assumed to be the current point, so when you create
     a line, you specify only its endpoint. You use the function
     CGContextAddLineToPoint to append a single line to a subpath.

     You can add a series of connected lines to a path by calling
     the function CGContextAddLines. You pass this function an
     array of points. The first point must be the starting point
     of the first line; the remaining points are endpoints.
     Quartz begins a new subpath at the first point and connects
     a straight line segment to each endpoint.
     */
    
    /**
     Arcs
     
     Arcs are circle segments. Quartz provides two functions
     that create arcs. The function CGContextAddArc creates
     a curved segment from a circle. You specify the center
     of the circle, the radius, and the radial angle (in radians).
     You can create a full circle by specifying a radial angle
     of 2 pi. Figure 3-4 shows multiple paths drawn independently.
     Each path contains a randomly generated circle; some are
     filled and others are stroked.

     Figure 3-4  Multiple paths; each path contains a randomly generated circle
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/circles.gif

     The function CGContextAddArcToPoint is ideal to use when
     you want to round the corners of a rectangle. Quartz uses
     the endpoints you supply to create two tangent lines. You
     also supply the radius of the circle from which Quartz
     slices the arc. The center point of the arc is the
     intersection of two radii, each of which is perpendicular
     to one of the two tangent lines. Each endpoint of the
     arc is a tangent point on one of the tangent lines, as
     shown in Figure 3-5. The red portion of the circle is
     what’s actually drawn.

     Figure 3-5  Defining an arc with two tangent lines and a radius
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/rounded_corner.gif
     
     If the current path already contains a subpath, Quartz
     appends a straight line segment from the current point
     to the starting point of the arc. If the current path
     is empty, Quartz creates a new subpath at the starting
     point for the arc and does not add the initial straight
     line segment.
     */
    
    /**
     Curves
     
     Quadratic and cubic Bézier curves are algebraic curves
     that can specify any number of interesting curvilinear
     shapes. Points on these curves are calculated by
     applying a polynomial formula to starting and ending
     points, and one or more control points. Shapes defined
     in this way are the basis for vector graphics. A formula
     is much more compact to store than an array of bits and
     has the advantage that the curve can be re-created at
     any resolution.

     Figure 3-6 shows a variety of curves created by drawing
     multiple paths independently. Each path contains a
     randomly generated curve; some are filled and others
     are stroked.
     
     Figure 3-6  Multiple paths; each path contains a randomly generated curve
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/bezier_paths.gif

     The polynomial formulas that give to rise to quadratic
     and cubic Bézier curves, and the details on how to generate
     the curves from the formulas, are discussed in many
     mathematics texts and online sources that describe
     computer graphics. These details are not discussed here.

     You use the function CGContextAddCurveToPoint to append
     a cubic Bézier curve from the current point, using
     control points and an endpoint you specify. Figure 3-7
     shows the cubic Bézier curve that results from the current
     point, control points, and endpoint shown in the figure.
     The placement of the two control points determines the
     geometry of the curve. If the control points are both
     above the starting and ending points, the curve arches
     upward. If the control points are both below the starting
     and ending points, the curve arches downward.
     
     Figure 3-7  A cubic Bézier curve uses two control points
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/cubic_bezier_curve.gif
     
     You can append a quadratic Bézier curve from the current
     point by calling the function CGContextAddQuadCurveToPoint,
     and specifying a control point and an endpoint. Figure 3-8
     shows two curves that result from using the same endpoints
     but different control points. The control point determines
     the direction that the curve arches. It’s not possible to
     create as many interesting shapes with a quadratic Bézier
     curve as you can with a cubic one because quadratic curves
     use only one control point. For example, it’s not possible
     to create a crossover using a single control point.

     Figure 3-8  A quadratic Bézier curve uses one control point
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/quadratic_bezier_curve.gif
     */
    
    /**
     Closing a Subpath

     To close the current subpath, your application should call
     CGContextClosePath. This function adds a line segment from
     the current point to the starting point of the subpath and
     closes the subpath. Lines, arcs, and curves that end at
     the starting point of a subpath do not actually close the
     subpath. You must explicitly call CGContextClosePath to
     close a subpath.

     Some Quartz functions treat a path’s subpaths as if they
     were closed by your application. Those commands treat
     each subpath as if your application had called
     CGContextClosePath to close it, implicitly adding a
     line segment to the starting point of the subpath.

     After closing a subpath, if your application makes
     additional calls to add lines, arcs, or curves to the
     path, Quartz begins a new subpath starting at the
     starting point of the subpath you just closed.
     */
    
    /**
     Ellipses
     
     An ellipse is essentially a squashed circle. You create
     one by defining two focus points and then plotting all
     the points that lie at a distance such that adding the
     distance from any point on the ellipse to one focus to
     the distance from that same point to the other focus
     point is always the same value. Figure 3-9 shows multiple
     paths drawn independently. Each path contains a randomly
     generated ellipse; some are filled and others are stroked.

     Figure 3-9  Multiple paths; each path contains a randomly generated ellipse
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/ellipses.gif
     
     You can add an ellipse to the current path by calling the
     function CGContextAddEllipseInRect. You supply a rectangle
     that defines the bounds of the ellipse. Quartz approximates
     the ellipse using a sequence of Bézier curves. The center
     of the ellipse is the center of the rectangle. If the width
     and height of the rectangle are equal (that is, a square),
     the ellipse is circular, with a radius equal to one-half
     the width (or height) of the rectangle. If the width and
     height of the rectangle are unequal, they define the major
     and minor axes of the ellipse.

     The ellipse that is added to the path starts with a move-to
     operation and ends with a close-subpath operation, with all
     moves oriented in the clockwise direction.
     */
    
    /**
     Rectangles
     
     You can add a rectangle to the current path by calling the
     function CGContextAddRect. You supply a CGRect structure
     that contains the origin of the rectangle and its width
     and height.

     The rectangle that is added to the path starts with a
     move-to operation and ends with a close-subpath operation,
     with all moves oriented in the counter-clockwise direction.

     You can add many rectangles to the current path by calling
     the function CGContextAddRects and supplying an array of
     CGRect structures. Figure 3-10 shows multiple paths drawn
     independently. Each path contains a randomly generated
     rectangle; some are filled and others are stroked.

     Figure 3-10  Multiple paths; each path contains a randomly generated rectangle
     file:///Users/tigerfly/Desktop/CoreGraphics/CoreGraphics/QuartzCore/rectangles.gif
     */
    
    
#pragma mark -- Creating a Path

    /**
     When you want to construct a path in a graphics context,
     you signal Quartz by calling the function CGContextBeginPath.
     Next, you set the starting point for the first shape, or
     subpath, in the path by calling the function CGContextMoveToPoint.
     After you establish the first point, you can add lines, arcs,
     and curves to the path, keeping in mind the following:
     
     •  Before you begin a new path, call the function CGContextBeginPath.
     •  Lines, arcs, and curves are drawn starting at the current point.
        An empty path has no current point; you must call
        CGContextMoveToPoint to set the starting point for the first
        subpath or call a convenience function that implicitly does
        this for you.
     •  When you want to close the current subpath within a path, call
        the function CGContextClosePath to connect a segment to the
        starting point of the subpath. Subsequent path calls begin a new
        subpath, even if you do not explicitly set a new starting point.
     •  When you draw arcs, Quartz draws a line between the current
        point and the starting point of the arc.
     •  Quartz routines that add ellipses and rectangles add a new closed
        subpath to the path.
     •  You must call a painting function to fill or stroke the path
        because creating a path does not draw the path. See Painting a
        Path for detailed information.
     
     After you paint a path, it is flushed from the graphics
     context. You might not want to lose your path so easily,
     especially if it depicts a complex scene you want to use
     over and over again. For that reason, Quartz provides two
     data types for creating reusable paths—CGPathRef and
     CGMutablePathRef. You can call the function CGPathCreateMutable
     to create a mutable CGPath object to which you can add lines,
     arcs, curves, and rectangles. Quartz provides a set of CGPath
     functions that parallel the functions discussed in The Building
     Blocks. The path functions operate on a CGPath object instead
     of a graphics context. These functions are:
     
     */

    self.view.backgroundColor = UIColor.whiteColor;
    
//    CGMutablePathRef mutablePath = CGPathCreateMutable();
//    CGPathMoveToPoint(mutablePath, NULL, 100, 100);
//    CGPathAddLineToPoint(mutablePath, NULL, 100, 200);
//
////    CGPathAddRect(mutablePath, NULL, CGRectMake(100, 100, 100, 100));
//
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//    shapeLayer.path = mutablePath;
////    shapeLayer.fillColor = UIColor.blackColor.CGColor;
////    shapeLayer.fillRule = kCAFillRuleEvenOdd;
//    shapeLayer.strokeStart = 0;
//    shapeLayer.strokeEnd = 1;
//    shapeLayer.strokeColor = [UIColor redColor].CGColor;
//    shapeLayer.lineDashPhase = 0;
//    shapeLayer.lineDashPattern = @[@1, @1];
//    [self.view.layer addSublayer:shapeLayer];
//
//    CGPathRelease(mutablePath);
    
    
//    CycleView *view = [[CycleView alloc] initWithFrame:CGRectMake(10, 100, 100, 20)];
//    view.backgroundColor = UIColor.redColor;
//    [self.view addSubview:view];
//
//    [UIView animateWithDuration:0.25 animations:^{
//
//    } completion:^(BOOL finished) {
//    }];
    
    
    
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

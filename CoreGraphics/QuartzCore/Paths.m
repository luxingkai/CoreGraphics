//
//  Paths.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "Paths.h"

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
    
    
    /**
     Path Creation and Path Painting

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
    
    /**
     The Building Blocks

     Subpaths are built from lines, arcs, and curves. Quartz also
     provides convenience functions to add rectangles and ellipses
     with a single function call. Points are also essential
     building blocks of paths because points define starting
     and ending locations of shapes.
     
     
     */
    
    
    
    
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

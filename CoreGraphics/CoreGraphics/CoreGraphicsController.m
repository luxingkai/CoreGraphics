//
//  CoreGraphicsController.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "CoreGraphicsController.h"
#import "DrawView.h"

@interface CoreGraphicsController ()

@end

@implementation CoreGraphicsController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     Harness the power of Quartz technology to perform lightweight
     2D rendering with high-fidelity output. Handle path-based drawing,
     antialiased rendering, gradients, images, color management, PDF
     documents, and more.
     
     The Core Graphics framework is based on the Quartz advanced drawing
     engine. It provides low-level, lightweight 2D rendering with unmatched
     output fidelity. You use this framework to handle path-based drawing,
     transformations, color management, offscreen rendering, patterns,
     gradients and shadings, image data management, image creation, and
     image masking, as well as PDF document creation, display, and parsing.
     
     In macOS, Core Graphics also includes services for working with
     display hardware, low-level user input events, and the windowing system.
     */
    
//    self.view.backgroundColor = UIColor.whiteColor;
    
    
    DrawView *drawView = [[DrawView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:drawView];
    
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

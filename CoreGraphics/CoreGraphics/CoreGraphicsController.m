//
//  CoreGraphicsController.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "CoreGraphicsController.h"
#import "DrawView.h"
#import "AnimationViewController.h"

@interface CoreGraphicsController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong)NSArray *dataSources;
@end

@implementation CoreGraphicsController {
    
    CAShapeLayer *_shapeLayer;
    NSUInteger _second;
    NSUInteger _current;
    CADisplayLink *_displayLink;
}


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

    self.navigationItem.title = @"Core Animation";
    self.dataSources = @[@"CABasicAnimation",
                         @"CAKeyframeAnimation",
                         @"CASpringAnimation",
                         @"CATransition"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"identifier"];
}


#pragma mark --

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSources.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    cell.textLabel.text = self.dataSources[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    AnimationViewController *animation = [[AnimationViewController alloc] initWithTitle:self.dataSources[indexPath.row]];
    [self.navigationController pushViewController:animation animated:true];
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

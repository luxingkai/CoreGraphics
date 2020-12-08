//
//  AppDelegate.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "AppDelegate.h"
#import "CoreGraphicsController.h"
#import "OpaqueTypes.h"
#import "Services.h"
#import "Reference.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// Quartz 2D
//https://developer.apple.com/library/archive/documentation/GraphicsImaging/Conceptual/drawingwithquartz2d/Introduction/Introduction.html?language=objc#//apple_ref/doc/uid/TP30001066

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    CoreGraphicsController *opaqueTypes = [CoreGraphicsController new];
    self.window.rootViewController = opaqueTypes;
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end

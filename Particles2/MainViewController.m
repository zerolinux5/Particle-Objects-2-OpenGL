//
//  MainViewController.m
//  Particles2
//
//  Created by Jesus Magana on 7/19/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    EAGLContext* context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    [EAGLContext setCurrentContext:context];
    
    // Set up view
    GLKView* view = (GLKView*)self.view;
    view.context = context;
    
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    glClearColor(0.53, 0.81, 0.92, 1.00);
    glClear(GL_COLOR_BUFFER_BIT);
}

@end

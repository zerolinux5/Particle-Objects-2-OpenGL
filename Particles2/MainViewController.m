//
//  MainViewController.m
//  Particles2
//
//  Created by Jesus Magana on 7/19/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "MainViewController.h"
#import "EmitterObject.h"

@interface MainViewController ()

// Properties
@property (strong) EmitterObject* emitter;

@end

@implementation MainViewController

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    EAGLContext* context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    [EAGLContext setCurrentContext:context];
    
    // Set up view
    GLKView* view = (GLKView*)self.view;
    view.context = context;
    
    // Set up Emitter
    self.emitter = [[EmitterObject alloc] initWithTexture:@"texture_64.png"];
    
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    //adding the color blue
    glClearColor(0.53, 0.81, 0.92, 1.00);
    glClear(GL_COLOR_BUFFER_BIT);
    
    // Set the blending function (normal w/ premultiplied alpha)
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    
    // Create Projection Matrix
    float aspectRatio = view.frame.size.width / view.frame.size.height;
    GLKMatrix4 projectionMatrix = GLKMatrix4MakeScale(1.0f, aspectRatio, 1.0f);
    
    // Render Emitter
    [self.emitter renderWithProjection:projectionMatrix];
}

- (void)update
{
    // Update Emitter
    [self.emitter updateLifeCycle:self.timeSinceLastUpdate];
}

@end

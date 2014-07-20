//
//  EmitterObject.h
//  Particles2
//
//  Created by Jesus Magana on 7/19/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <GLKit/GLKit.h>

@interface EmitterObject : NSObject

- (id)initWithTexture:(NSString *)fileName at:(GLKVector2)position;
- (void)renderWithProjection:(GLKMatrix4)projectionMatrix;
- (BOOL)updateLifeCycle:(float)timeElapsed;

@end

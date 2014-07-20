//
//  EmitterObject.h
//  Particles2
//
//  Created by Jesus Magana on 7/19/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <GLKit/GLKit.h>

@interface EmitterObject : NSObject

- (id)initWithTexture:(NSString *)fileName;
- (void)renderWithProjection:(GLKMatrix4)projectionMatrix;
- (void)updateLifeCycle:(float)timeElapsed;

@end

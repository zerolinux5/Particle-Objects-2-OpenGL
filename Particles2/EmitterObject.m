//
//  EmitterObject.m
//  Particles2
//
//  Created by Jesus Magana on 7/19/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "EmitterObject.h"

#define NUM_PARTICLES 180

typedef struct Particle
{
    float       pID;
    float       pRadiusOffset;
    float       pVelocityOffset;
    float       pDecayOffset;
    float       pSizeOffset;
    GLKVector3  pColorOffset;
}
Particle;

typedef struct Emitter
{
    Particle    eParticles[NUM_PARTICLES];
    float       eRadius;
    float       eVelocity;
    float       eDecay;
    float       eSize;
    GLKVector3  eColor;
}
Emitter;

@implementation EmitterObject
{
    // Instance variables
    GLKVector2  _gravity;
    float       _life;
    float       _time;
}

- (id)initEmitterObject
{
    if(self = [super init])
    {
        // Initialize variables
        _gravity = GLKVector2Make(0.0f, 0.0f);
        _life = 0.0f;
        _time = 0.0f;
    }
    return self;
}

- (void)renderWithProjection:(GLKMatrix4)projectionMatrix
{
    
}

- (void)updateLifeCycle:(float)timeElapsed
{
    
}

@end

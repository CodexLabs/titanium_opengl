/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2011 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiOpenglSurfaceViewProxy.h"
#import "TiOpenglSurfaceView.h"

#import "TiUtils.h"

@implementation TiOpenglSurfaceViewProxy

-(void)_initWithProperties:(NSDictionary *)properties
{
    [super _initWithProperties:properties];
}

@synthesize animationInterval;
- (void)setAnimationInterval: (NSTimeInterval)arg 
{    
    [self getSurfaceView].animationInterval = arg;
}

- (NSTimeInterval)animationInterval
{
    return [self getSurfaceView].animationInterval;  
}

-(void) stopAnimation: (id)args 
{
    [[self getSurfaceView] performSelectorOnMainThread:@selector(stopAnimation:) withObject:args waitUntilDone: NO];
}

-(void) startAnimation: (id)args 
{
	[[self getSurfaceView] performSelectorOnMainThread:@selector(startAnimation:) withObject:args waitUntilDone:NO];
}

-(TiOpenglSurfaceView*) getSurfaceView
{
    return ((TiOpenglSurfaceView*)[self view]) ;    
}

@end

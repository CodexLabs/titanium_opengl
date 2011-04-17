/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2011 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiViewProxy.h"
#import "TiOpenglSurfaceView.h"

@interface TiOpenglSurfaceViewProxy : TiViewProxy {

@private

}

@property (nonatomic, readwrite, assign) NSTimeInterval animationInterval;

- (void)setAnimationInterval: (NSTimeInterval)value ;
- (NSTimeInterval)animationInterval;

-(void) stopAnimation: (id)args;
-(void) startAnimation: (id)args;
-(TiOpenglSurfaceView*) getSurfaceView;

@end
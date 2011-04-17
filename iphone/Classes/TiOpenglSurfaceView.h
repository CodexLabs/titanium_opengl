/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2011 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiUIView.h"

#import "GL10.h"
#import "Texture2D.h"
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import <UIKit/UIKit.h>

@interface TiOpenglSurfaceView : TiUIView<UIApplicationDelegate> {

    
    NSTimeInterval animationInterval;
    
@private
    /* The pixel dimensions of the backbuffer */
    GLint backingWidth;
    GLint backingHeight;
    
    EAGLContext *context;
    
    /* OpenGL names for the renderbuffer and framebuffers used to render to this view */
    GLuint viewRenderbuffer, viewFramebuffer;
    
    /* OpenGL name for the depth buffer that is attached to viewFramebuffer, if it exists (0 if it does not exist) */
    GLuint depthRenderbuffer;
    
    NSTimer *animationTimer;
	
	CFTimeInterval lastTime;
	
	GL10 *gl;
	
	Texture2D *playerShip;

}
@property (nonatomic, readwrite, assign) NSTimeInterval animationInterval;

- (void)startAnimation ;
- (void)stopAnimation ;

@end

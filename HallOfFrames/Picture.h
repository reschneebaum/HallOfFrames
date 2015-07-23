//
//  Picture.h
//  HallOfFrames
//
//  Created by Rachel Schneebaum on 7/22/15.
//  Copyright (c) 2015 Rachel Schneebaum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIImage *image;
@property UIColor *frameColor;

-(instancetype)initWithImage:(UIImage *)image withFrameColor:(UIColor *)frameColor;

@end

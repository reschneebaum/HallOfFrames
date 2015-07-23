//
//  Picture.m
//  HallOfFrames
//
//  Created by Rachel Schneebaum on 7/22/15.
//  Copyright (c) 2015 Rachel Schneebaum. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype)initWithImage:(UIImage *)image withFrameColor:(UIColor *)frameColor {
   if (self) {
        self.image = image;
        self.frameColor = frameColor;
    }
    return self;
}

@end

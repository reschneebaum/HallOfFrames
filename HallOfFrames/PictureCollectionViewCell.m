//
//  PictureCollectionViewCell.m
//  HallOfFrames
//
//  Created by Rachel Schneebaum on 8/10/15.
//  Copyright (c) 2015 Rachel Schneebaum. All rights reserved.
//

#import "PictureCollectionViewCell.h"

@implementation PictureCollectionViewCell

-(instancetype)initWithImage:(UIImage *)image andFrameColor:(UIColor *)color {
    self = [super init];
    if (self) {
        self.picture = image;
        self.frameColor = color;
    }
    return self;
}

@end

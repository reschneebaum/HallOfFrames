//
//  CustomView.m
//  HallOfFrames
//
//  Created by Rachel Schneebaum on 8/9/15.
//  Copyright (c) 2015 Rachel Schneebaum. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

-(IBAction)onButtonTapped:(UIButton *)sender {
    [self.delegate loadCustomView:self onButtonTapped:sender];
}

@end
